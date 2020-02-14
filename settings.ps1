# Settings for the ModpackUploader
# For details/help see: https://github.com/NillerMedDild/ModpackUploader

# Custom


$CLIENT_MODS = @(
	"AppleSkin", 
	"AuthMe",
	"BetterAdvancements",
	"CraftingTweaks", 
	"DefaultOptions", 
	"DefaultSettings",
	"EnchantmentDescriptions", 
	"EquipmentTooltips", 
	"FpsReducer", 
	"JustEnoughResources",
	"LLOverlayReloaded", 
	"MouseTweaks",
	"nmdar_", 
	"Neat", 
	"overloadedarmorbar", 
	"ToastControl", 
	"toughnessbar", 
	"Xaeros_Minimap", 
	"XaerosWorldMap")

	
# =====================================================================//
#  CURSEFORGE SETTINGS
# =====================================================================//

$CURSEFORGE_USER = "NillerMedDild"

# ProjectID can be found on the modpack's Curseforge Projects page, under "About This Project"
$CURSEFORGE_PROJECT_ID = 330372

# =====================================================================//
#  MODPACK & CLIENT FILE SETTINGS
# =====================================================================//

# Default: "1.0.0"
$MODPACK_VERSION = "0.4.8"

# Only used by the Changelog Generator
$LAST_MODPACK_VERSION = "0.4.7"

$FORGE_VERSION=28.2.0

$CLIENT_FILENAME = "Enigmatica4"

# Default: "$CLIENT_FILENAME $MODPACK_VERSION"
$CLIENT_FILE_DISPLAY_NAME = "Enigmatica 4 - $MODPACK_VERSION"

# An array of compatible game versions of Minecraft.
# See GameVersions.json for possible versions.
# Default: @(6756) - which is Minecraft 1.12.2
$GAME_VERSIONS = @(7469)

# Can be "markdown", "text" or "html"
$CLIENT_CHANGELOG_TYPE = "html"

# Must be a single string. Use Powershell escaping for new lines etc. New line is `n and indent is `t
$CLIENT_CHANGELOG = "<h3>Enigmatica 4 v$MODPACK_VERSION</h3>" +
					"<p>Using Forge-1.14.4-28.2.0 </p><br />" +
					"<a href=`"https://github.com/NillerMedDild/Enigmatica4/blob/master/CHANGELOG.md`">Changelog</a> <br />" +
					"<a href=`"https://github.com/NillerMedDild/Enigmatica4/blob/master/CHANGELOG-MODS.md`">Mod Updates</a>"

# Can be "alpha", "beta" or "release"
$CLIENT_RELEASE_TYPE = "beta"

#=====================================================================//
#  SERVER FILE SETTINGS
#=====================================================================//

# Default: "$CLIENT_FILENAME Server $MODPACK_VERSION"
$SERVER_FILENAME = "$CLIENT_FILENAME`Server-$MODPACK_VERSION"

# Default: $SERVER_FILENAME
$SERVER_FILE_DISPLAY_NAME = "Enigmatica 4 Server - $MODPACK_VERSION"

# A continuous line of the folders and files (with extensions) to zip into Server Files.
# Default: @("mods", "config")
$CONTENTS_TO_ZIP = @(
"mods", 
"config", 
"defaultconfigs", 
"openloader", 
"scripts",
"kubejs",
"server-start-license.md", 
"server-start-readme.md", 
"server-start.bat", 
"server-start.sh", 
"settings.cfg",  
"settings-linux.cfg",
"server.properties", 
"server-guide.txt")

$CONTENTS_TO_MOVE = @(
"server-start-license.md", 
"server-start-readme.md", 
"server-start.bat", 
"server-start.sh", 
"settings.cfg",  
"settings-linux.cfg",
"server.properties", 
"server-guide.txt")

# Can be "markdown", "text" or "html"
# Default: $CLIENT_CHANGELOG_TYPE
$SERVER_CHANGELOG_TYPE = $CLIENT_CHANGELOG_TYPE

# Must be a single string. Use Powershell escaping for new lines etc. New line is `n and indent is `t
# Default: $CLIENT_CHANGELOG
$SERVER_CHANGELOG = $CLIENT_CHANGELOG

# Can be "alpha", "beta" or "release"
# Default: $CLIENT_RELEASE_TYPE
$SERVER_RELEASE_TYPE = $CLIENT_RELEASE_TYPE

# =====================================================================//
#  MODULES
# =====================================================================//

# Toggle twitch-export-builder (automatic building of the manifest zip) on/off
# Default: $true
$ENABLE_MANIFEST_BUILDER_MODULE = $true

# Toggle the modpack uploader on/off
# Setting this to $false will also disable the Server File and Changelog Generator Modules.
# Default: $true
$ENABLE_MODPACK_UPLOADER_MODULE = $true

# Toggle server file feature on/off
# Default: $true
$ENABLE_SERVER_FILE_MODULE = $true

# Toggle automatic changelog generator on/off
# This module requires an older modpack manifest zip to be present, 
# $LAST_MODPACK_VERSION must be set, and the manifest naming must be consistent.
# Default: $false
$ENABLE_CHANGELOG_GENERATOR_MODULE = $false

# Toggle removal and re-download of jars on/off.
# Setting this to true will ensure that you always have the latest 
# Twitch Export Builder and ChangelogGenerator, but increases the
# amount of time this script takes to execute.
# Default: $false
$ENABLE_ALWAYS_UPDATE_JARS = $false

# Toggles extra logging on/off.
# Recommended if you're having trouble making the Modpack Uploader
# work.
# Default: $false
$ENABLE_EXTRA_LOGGING = $false

# Toggles github changelog generator integration on/off.
# Requires extensive setup, this is an advanced step.
# See below link for info:
# https://github.com/github-changelog-generator/github-changelog-generator
# Default: $false
$ENABLE_GITHUB_CHANGELOG_GENERATOR_MODULE = $true	