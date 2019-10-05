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
$BackupFolder = "$PSScriptRoot/backups"
$BackupsToKeep = 3

git fetch
$CommitsBehind = git rev-list --left-only --count origin/master...master
if ($CommitsBehind -gt 0) {
	New-Item -ItemType Directory -Path $BackupFolder -ErrorAction SilentlyContinue
	if (Test-Path $ModFolder) {
		Compress-Archive -Path $ModFolder "$BackupFolder/mods-$(Get-Date -Format "MM.dd.yyyy-HH.mm")"
		Remove-Item -Path $ModFolder -Recurse -ErrorAction SilentlyContinue
	} 
	else {
		New-Item -ItemType Directory -Path $ModFolder -ErrorAction SilentlyContinue
	}

	# TODO: Test
	Get-ChildItem -Path $BackupFolder | 
		Sort-Object -Descending | 
		Select-Object -Last ($_.count - $BackupsToKeep) | 
		Foreach-Object { Remove-Item $_ }
}

git stash
git pull
git stash pop

Get-ChildItem $ModFolder -Name -Filter  "*.jar" | ForEach-Object {
	$Mod = $_.toLower()
	foreach ($ClientMod in $ClientMods) {
		if ($Mod.StartsWith($ClientMod.toLower())) {
			Remove-Item "$modfolder/$mod" -Force
		}
	}
}