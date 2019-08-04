<#
The purpose of this script is to update and run Enigmatica 4 servers. 
The server needs to be hooked up to the E4 github repository, and use the ATM server start script.
This script should be placed in the root of the modpack instance.

Clientside mods should be placed inside the $ClientMods array below, if any get added.
This script is screaming DIY ^^'
#>

param(
    [PSObject]
    $ClientMods = @("BetterAdvancements", "EnchantmentDescriptions", "EquipmentTooltips", "FpsReducer", "Neat", "overloadedarmorbar", "swingthroughgrass", "ToastControl", "toughnessbar", "Xaeros_Minimap", "XaerosWorldMap")
)

git pull

$ModFolder = "$PSScriptRoot\mods"
$AllTheMods = Get-ChildItem $ModFolder -Name -Filter  "*.jar"
$clientMods = $clientMods.toLower()


foreach ($mod in $AllTheMods) {
    $mod = $mod.toLower()
    foreach ($clientMod in $ClientMods) {
        if ($mod.StartsWith($clientMod)) {
            Remove-Item "$modfolder\$mod" -Force
        }
    }
}

     
Start-Process server-start.bat