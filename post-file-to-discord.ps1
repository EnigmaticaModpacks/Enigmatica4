# . "$PSScriptRoot\settings.ps1"
# $SecretPath = "$PSScriptRoot\secrets.ps1"
# . "$PSScriptRoot\secrets.ps1"
# $CurlUrl = "https://discordapp.com/api/webhooks/$WEBHOOK_ID/$WEBHOOK_TOKEN"
# $InvUrl = "https://discordapp.com/api/webhooks/$env:WEBHOOK_ID/$env:WEBHOOK_TOKEN"
# $FilePath = "Enigmatica4-0.1.1.zip"


# $payload = [PSCustomObject]@{

#     content = file

# }

# Invoke-RestMethod -Uri $CurlUrl -Method Post -Body ($payload | ConvertTo-Json)

# -Headers @{ ContentType = 'multipart/form-data'}

# if (Test-Path $SecretPath) {
# 	. $SecretPath
#  	curl.exe --url "https://discordapp.com/api/webhooks/$WEBHOOK_ID/$WEBHOOK_TOKEN" -F ContentType="multipart/form-data" -F content=@"$CLIENT_FILENAME-$MODPACK_VERSION.zip" --progress-bar
# } 
# else 
# {
# 	Invoke-RestMethod -Uri $CurlUrl -Method Post -Headers "{ 'ContentType': 'multipart/form-data' }" -InFile $FilePath
# 	curl.exe --url $InvUrl -F ContentType="multipart/form-data" -F content=@"Enigmatica4-0.1.1.zip" --progress-bar
# }

. "$PSScriptRoot\settings.ps1"
. "$PSScriptRoot\secrets.ps1"
$CurlUrl = "https://discordapp.com/api/webhooks/$WEBHOOK_ID/$WEBHOOK_TOKEN"
$FilePath = "Enigmatica4-0.1.1.zip"

curl.exe --url @CurlUrl -F ContentType="multipart/form-data" -F content=@"$CLIENT_FILENAME-$MODPACK_VERSION.zip" --progress-bar
