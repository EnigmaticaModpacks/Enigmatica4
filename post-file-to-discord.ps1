. "$PSScriptRoot\settings.ps1"
$secretPath = "$PSScriptRoot\secrets.ps1"

if (Test-Path $secretPath) {
	. $secretPath
    .\TwitchExportBuilder.exe -n "$CLIENT_FILENAME" -p "$MODPACK_VERSION"
	curl.exe --url "https://discordapp.com/api/webhooks/$WEBHOOK_ID/$WEBHOOK_TOKEN" -F ContentType="multipart/form-data" -F content=@"$CLIENT_FILENAME-$MODPACK_VERSION.zip" --progress-bar
} 
else 
{
    .\TwitchExportBuilder.exe -n "$CLIENT_FILENAME" -p "$MODPACK_VERSION"
	curl --url "https://discordapp.com/api/webhooks/$env:WEBHOOK_ID/$env:WEBHOOK_TOKEN" -F ContentType="multipart/form-data" -F content=@"$CLIENT_FILENAME-$MODPACK_VERSION.zip" --progress-bar
}
