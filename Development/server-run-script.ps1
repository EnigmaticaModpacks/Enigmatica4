<#
The purpose of this script is to update and run Enigmatica 4 servers. 
The server needs to be hooked up to the E4 github repository, and use the ATM server start script.
This script should be placed in the root of the modpack instance.

Clientside mods should be placed inside the $ClientMods array below, if any get added.
#>
param(
    [PSObject]
    $ClientMods = @(
	"AppleSkin", 
	"BetterAdvancements",
	"CosmeticArmorReworked",
	"CraftingTweaks", 
	"DefaultOptions", 
	"EnchantmentDescriptions", 
	"EquipmentTooltips", 
	"FpsReducer", 
	"LLOverlayReloaded", 
	"MouseTweaks",
	"na_1.14-3.2", 
	"Neat", 
	"overloadedarmorbar", 
	"swingthroughgrass", 
	"ToastControl", 
	"toughnessbar", 
	"Xaeros_Minimap", 
	"XaerosWorldMap")
)

$ModFolder = "$PSScriptRoot/mods"
$ClientMods = $ClientMods.toLower()

git stash
git reset
git pull
git stash pop

Get-ChildItem $ModFolder -Name -Filter  "*.jar" | ForEach-Object {
	$Mod = $_.toLower()
    foreach ($ClientMod in $ClientMods) {
        if ($Mod.StartsWith($ClientMod)) {
            Remove-Item "$modfolder/$mod" -Force
        }
    }
}

Start-Process server-start.bat