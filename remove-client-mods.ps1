<#
The purpose of this script is to remove client side only mods from Enigmatica 4 servers. 
This script should be in the root of the modpack instance.

Client-side-only mods should be placed inside the $ClientMods array below, if any get added.
#>

param(
    [PSObject]
    $ClientMods = @(
	"AppleSkin", 
	"BetterAdvancements", 
	"CraftingTweaks", 
	"DefaultOptions", 
	"EnchantmentDescriptions", 
	"EquipmentTooltips", 
	"FpsReducer", 
	"LLOverlayReloaded", 
	"MouseTweaks", 
	"Neat", 
	"overloadedarmorbar", 
	"swingthroughgrass", 
	"ToastControl", 
	"toughnessbar", 
	"Xaeros_Minimap", 
	"XaerosWorldMap")
)

$ModFolder = "$PSScriptRoot/mods"
$AllTheMods = Get-ChildItem $ModFolder -Name -Filter  "*.jar"
$ClientMods = $ClientMods.toLower()

foreach ($Mod in $AllTheMods) {
    $Mod = $Mod.toLower()
    foreach ($ClientMod in $ClientMods) {
        if ($Mod.StartsWith($ClientMod)) {
            Remove-Item "$modfolder/$mod" -Force
        }
    }
}