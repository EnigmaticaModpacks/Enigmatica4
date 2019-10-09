. "$PSScriptRoot\settings.ps1"
$secretPath = "$PSScriptRoot\secrets.ps1"

if (Test-Path $secretPath) {
	. $secretPath
	
	$TwitchExportBuilder = "TwitchExportBuilder.exe"
    if (!(Test-Path $TwitchExportBuilder) -or $ENABLE_ALWAYS_UPDATE_JARS) {
        Remove-Item $TwitchExportBuilder -Recurse -Force -ErrorAction SilentlyContinue
        Download-GithubRelease -repo "Gaz492/twitch-export-builder" -file "twitch-export-builder_windows_amd64.exe"
		Rename-Item -Path "twitch-export-builder_windows_amd64.exe" -NewName $TwitchExportBuilder -ErrorAction SilentlyContinue
    }
    .\TwitchExportBuilder.exe -n "$CLIENT_FILENAME" -p "$MODPACK_VERSION"

	curl.exe --url "https://discordapp.com/api/webhooks/$WEBHOOK_ID/$WEBHOOK_TOKEN" -F ContentType="multipart/form-data" -F content=@"$CLIENT_FILENAME-$MODPACK_VERSION.zip" --progress-bar
} 
else 
{
	$TwitchExportBuilder = "TwitchExportBuilder.exe"
    if (!(Test-Path $TwitchExportBuilder) -or $ENABLE_ALWAYS_UPDATE_JARS) {
        Remove-Item $TwitchExportBuilder -Recurse -Force -ErrorAction SilentlyContinue
        Download-GithubRelease -repo "Gaz492/twitch-export-builder" -file "twitch-export-builder_windows_amd64.exe"
		Rename-Item -Path "twitch-export-builder_windows_amd64.exe" -NewName $TwitchExportBuilder -ErrorAction SilentlyContinue
    }
    .\TwitchExportBuilder.exe -n "$CLIENT_FILENAME" -p "$MODPACK_VERSION"

	curl.exe --url "https://discordapp.com/api/webhooks/$env:WEBHOOK_ID/$env:WEBHOOK_TOKEN" -F ContentType="multipart/form-data" -F content=@"$CLIENT_FILENAME-$MODPACK_VERSION.zip" --progress-bar
}
