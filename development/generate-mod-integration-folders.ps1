param(
    [switch]
    $Execute
)
$modFolder = "$PSScriptRoot\..\..\mods"
$scriptFolder = "$PSScriptRoot\.."
$modIntegrationFolder = "$scriptFolder\mod_integration"

$mods = Get-ChildItem -Path $modFolder -Include "*.jar" -Name

foreach ($mod in $mods) {
    $modName = ($mod -split "-")
    $modNameFolder = "$modIntegrationFolder\$($modName[0].ToLower())"

    if (!(Test-Path $modNameFolder)) {
        if ($Execute) {
            New-Item -ItemType Directory -Path $modNameFolder -ErrorAction SilentlyContinue
        } 
        else {
            New-Item -ItemType Directory -Path $modNameFolder -WhatIf
        }
    }
}

if (!$Execute) {
    Write-Host "Run with -Execute to execute the script." -ForegroundColor Red
}

