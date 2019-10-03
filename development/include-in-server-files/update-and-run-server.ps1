<#

The purpose of this script is to automate updating and launching of Enigmatica 4 servers. 
It's a bit advanced, I recommend going with the server-start script if you'd rather do things manually.

Requirements:
	* Established InstanceSync connection with Enigmatica 4 github repo. (See https://github.com/NillerMedDild/Enigmatica4 for details)
	* The server-start script is used, so the settings.cfg must be filled out.
	* This script has to be in the root of the modpack folder
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
	"nmdar_", 
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