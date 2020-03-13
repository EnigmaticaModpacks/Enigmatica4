. "$PSScriptRoot\settings.ps1"
. "$PSScriptRoot\secrets.ps1"
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12


function Download-GithubRelease {
    param(
        [parameter(Mandatory = $true)]
        [string]
        $repo,
        [parameter(Mandatory = $true)]
        [string]
        $file
    )
	
    $releases = "https://api.github.com/repos/$repo/releases"

    Write-Host "Determining latest release of $repo"
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    $tag = (Invoke-WebRequest -Uri $releases -UseBasicParsing | ConvertFrom-Json)[0].tag_name

    $download = "https://github.com/$repo/releases/download/$tag/$file"
    $name = $file.Split(".")[0]

    Write-Host Dowloading...
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12
    Invoke-WebRequest $download -Out $file

    # Cleaning up target dir
    Remove-Item $name -Recurse -Force -ErrorAction SilentlyContinue
}

function Clear-SleepHost {
    Start-Sleep 2
    Clear-Host
}

if (-not (test-path "$env:ProgramFiles\7-Zip\7z.exe")) { throw "$env:ProgramFiles\7-Zip\7z.exe needed to use the ModpackUploader." } 
Set-Alias sz "$env:ProgramFiles\7-Zip\7z.exe"

if ($ENABLE_MANIFEST_BUILDER_MODULE) {
    $TwitchExportBuilder = "TwitchExportBuilder.exe"
    if (!(Test-Path $TwitchExportBuilder) -or $ENABLE_ALWAYS_UPDATE_JARS) {
        Remove-Item $TwitchExportBuilder -Recurse -Force -ErrorAction SilentlyContinue
        Download-GithubRelease -repo "Gaz492/twitch-export-builder" -file "twitch-export-builder_windows_amd64.exe"
        Rename-Item -Path "twitch-export-builder_windows_amd64.exe" -NewName $TwitchExportBuilder -ErrorAction SilentlyContinue
    }
    .\TwitchExportBuilder.exe -n "$CLIENT_FILENAME" -p "$MODPACK_VERSION"
    Clear-SleepHost
}

if ($ENABLE_CHANGELOG_GENERATOR_MODULE -and $ENABLE_MODPACK_UPLOADER_MODULE) {
    Remove-Item oldmanifest.json, manifest.json, shortchangelog.txt, MOD_CHANGELOGS.txt -ErrorAction SilentlyContinue
    sz e "$CLIENT_FILENAME`-$LAST_MODPACK_VERSION.zip" manifest.json
    Rename-Item -Path manifest.json -NewName old.json
    sz e "$CLIENT_FILENAME`-$MODPACK_VERSION.zip" manifest.json
    Rename-Item -Path manifest.json -NewName new.json

    Clear-SleepHost
    Write-Host "######################################" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Generating changelog..." -ForegroundColor Green
    Write-Host ""

    java -jar ChangelogGenerator-2.0.0-pre2.jar
	Move-Item -Path changelog.txt -Destination changelogs/CHANGELOG_MODS_$MODPACK_VERSION.txt
}

if ($ENABLE_GITHUB_CHANGELOG_GENERATOR_MODULE) {

    $BASE64TOKEN = [System.Convert]::ToBase64String([char[]]$GITHUB_TOKEN);
    $Uri = "https://api.github.com/repos/$GITHUB_NAME/$GITHUB_REPOSITORY/releases?access_token=$GITHUB_TOKEN"

    $Headers = @{
        Authorization = 'Basic {0}' -f $Base64Token;
    };

    $Body = @{
        tag_name         = $MODPACK_VERSION;
        target_commitish = 'master';
        name             = $MODPACK_VERSION;
        body             = $CLIENT_CHANGELOG;
        draft            = $false;
        prerelease       = $false;
    } | ConvertTo-Json;

    Clear-SleepHost
    if ($ENABLE_EXTRA_LOGGING) {
        Write-Host "Release Data:"
        Write-Host $Body 
    }

    Write-Host ""
    Write-Host "######################################" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Making GitHub Release..." -ForegroundColor Green
    Write-Host ""

    Invoke-RestMethod -Headers $Headers -Uri $Uri -Body $Body -Method Post

    Start-Process Powershell.exe -Argument "-NoProfile -Command github_changelog_generator --since-tag $CHANGES_SINCE_VERSION"
}

if ($ENABLE_MODPACK_UPLOADER_MODULE) {
    $CLIENT_FILENAME = "$CLIENT_FILENAME-$MODPACK_VERSION.zip"

    $CLIENT_METADATA = 
    "{
    'changelog': `'$CLIENT_CHANGELOG`',
    'changelogType': `'$CLIENT_CHANGELOG_TYPE`',
    'displayName': `'$CLIENT_FILE_DISPLAY_NAME`',
    'gameVersions': [$GAME_VERSIONS],
    'releaseType': `'$CLIENT_RELEASE_TYPE`'
    }"
    
    Clear-SleepHost
    if ($ENABLE_EXTRA_LOGGING) {
        Write-Host "Client Metadata:"
        Write-Host $CLIENT_METADATA 
        Write-Host $CLIENT_FILENAME
    }

    Write-Host ""
    Write-Host "######################################" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Uploading client files..." -ForegroundColor Green
    Write-Host ""

    $Response = curl.exe --url "https://minecraft.curseforge.com/api/projects/$CURSEFORGE_PROJECT_ID/upload-file" --user "$CURSEFORGE_USER`:$CURSEFORGE_TOKEN" -H "Accept: application/json" -H X-Api-Token:$CURSEFORGE_TOKEN -F metadata=$CLIENT_METADATA -F file=@$CLIENT_FILENAME --progress-bar | ConvertFrom-Json
    $ResponseId = $Response.id

    Write-Host ""
    Write-Host "######################################" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "The modpack has been uploaded." -ForegroundColor Green
    Write-Host "ID returned: $ResponseId" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "######################################" -ForegroundColor Cyan
    Write-Host ""
    Start-Sleep -Seconds 1
}

if ($ENABLE_SERVER_FILE_MODULE -and $ENABLE_MODPACK_UPLOADER_MODULE) {
    Clear-SleepHost
    Write-Host ""
    Write-Host "######################################" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Compressing Server files..." -ForegroundColor Green
    Write-Host ""
    Write-Host "######################################" -ForegroundColor Cyan
    Write-Host ""

    $CONTENTS_TO_MOVE | ForEach-Object {
        $FilePath = "$PSScriptRoot/development/include-in-server-files/$_"
        Copy-Item -Path $FilePath -Destination $PSScriptRoot
    }

    $SERVER_FILENAME = "$SERVER_FILENAME.zip"
    sz a -tzip $SERVER_FILENAME $CONTENTS_TO_ZIP

    $CONTENTS_TO_MOVE | ForEach-Object {
        $FilePath = "$PSScriptRoot/$_"
        Remove-Item -Path $FilePath -Force
    }

    Write-Host "Removing Client Mods from Server Files" -ForegroundColor Cyan
    foreach ($clientMod in $CLIENT_MODS) {
        Write-Host "Removing Client Mod $clientMod"
        sz d $SERVER_FILENAME "mods/$clientMod*" | Out-Null
    }

    Start-Sleep 1

    $SERVER_METADATA = 
    "{
    'changelog': `'$SERVER_CHANGELOG`',
    'changelogType': `'$SERVER_CHANGELOG_TYPE`',
    'displayName': `'$SERVER_FILE_DISPLAY_NAME`',
    'parentFileId': $ResponseId,
    'releaseType': `'$SERVER_RELEASE_TYPE`'
    }"

    Clear-SleepHost
    if ($ENABLE_EXTRA_LOGGING) {
        Write-Host "Server Metadata:"
        Write-Host $SERVER_METADATA
    }

    Write-Host ""
    Write-Host "######################################" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Uploading server files..." -ForegroundColor Green
    Write-Host ""

    $ResponseServer = curl.exe --url "https://minecraft.curseforge.com/api/projects/$CURSEFORGE_PROJECT_ID/upload-file" --user "$CURSEFORGE_USER`:$CURSEFORGE_TOKEN" -H "Accept: application/json" -H X-Api-Token:$CURSEFORGE_TOKEN -F metadata=$SERVER_METADATA -F file=@$SERVER_FILENAME --progress-bar
}

Clear-SleepHost

Write-Host "######################################" -ForegroundColor Cyan
Write-Host ""
Write-Host "The Modpack Uploader has completed." -ForegroundColor Green
Write-Host ""
Write-Host "######################################" -ForegroundColor Cyan

# $CurlUrl = "https://discordapp.com/api/webhooks/$WEBHOOK_ID/$WEBHOOK_TOKEN"
# $FilePath = "$CLIENT_FILENAME-$MODPACK_VERSION.zip"

# curl.exe --url $CurlUrl -F ContentType="multipart/form-data" -F content=@$FilePath --progress-bar

# Start-Sleep -Seconds 10