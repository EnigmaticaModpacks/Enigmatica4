# $Metals = @(
#     "iron",
#     "gold",
#     "neptunium",
#     "copper",
#     "silver",
#     "zinc",
#     "brass",
#     "tungsten",
#     "lead",
#     "quicksilver",
#     "tin",
#     "redstone_alloy",
#     "refined_iron",
#     "compressed_iron",
#     "nickel",
#     "platinum",
#     "bismuth",
#     "aluminum",
#     "uranium",
#     "bronze",
#     "invar",
#     "electrum",
#     "bismuth_brass",
#     "aluminum_steel",
#     "bismuth_steel",
#     "signalum",
#     "lumium",
#     "enderium"
# )

# $Gems = @(
#     "diamond",
#     "lapis_lazuli",
#     "emerald",
#     "quartz",
#     "amethyst",
#     "sapphire",
#     "malachite",
#     "ruby"
# )

# $Dusts = @(
#     "redstone",
#     "glowstone",
#     "teslatite"
# )

# $Metals | ForEach-Object {
#     @"
# '$_': {
#     'nugget': <item:forge:nuggets/$_>,
#     'ingot': <item:forge:ingots/$_>,
#     'block': <item:forge:storage_blocks/$_>,
#     'ore': <item:forge:ores/$_>,
#     'dust': <item:forge:dusts/$_>,
#     'fluid': <fluid:forge:fluids/$_>,
#     'gear': <item:forge:gears/$_>,
#     'plate': <item:forge:plates/$_>,
#     'rod': <item:forge:rods/$_>,
#     'sheet': <item:forge:sheets/$_>
#     },
# "@
#     Write-Host $OutputArray
# }

# $Gems | ForEach-Object {
#     @"
#     '$_': {
#         'nugget': <item:forge:nuggets/$_>,
#         'gem': <item:forge:ingots/$_>,
#         'block': <item:forge:storage_blocks/$_>,
#         'ore': <item:forge:ores/$_>,
#         'dust': <item:forge:dusts/$_>,
#         'fluid': <fluid:forge:fluids/$_>,
#         'gear': <item:forge:gears/$_>,
#         'plate': <item:forge:plates/$_>,
#         'rod': <item:forge:rods/$_>,
#         'sheet': <item:forge:sheets/$_>
#     },
# "@
#     Write-Host $OutputArray
# }

# $Dusts | ForEach-Object {
#     @"
#     '$_': {
#         'block': <item:forge:storage_blocks/$_>,
#         'ore': <item:forge:ores/$_>,
#         'dust': <item:forge:dusts/$_>,
#         'fluid': <fluid:forge:fluids/$_>,
#         'gear': <item:forge:gears/$_>,
#         'plate': <item:forge:plates/$_>,
#         'rod': <item:forge:rods/$_>,
#         'sheet': <item:forge:sheets/$_>
#     },
# "@
#         Write-Host $OutputArray
#     }

$Metals = @(
    "iron",
    "gold",
    "neptunium",
    "copper",
    "silver",
    "zinc",
    "brass",
    "tungsten",
    "lead",
    "quicksilver",
    "tin",
    "redstone_alloy",
    "refined_iron",
    "compressed_iron",
    "nickel",
    "platinum",
    "bismuth",
    "aluminum",
    "uranium",
    "bronze",
    "invar",
    "electrum",
    "bismuth_brass",
    "aluminum_steel",
    "bismuth_steel",
    "signalum",
    "lumium",
    "enderium"
)

$Gems = @(
    "diamond",
    "lapis_lazuli",
    "emerald",
    "quartz",
    "amethyst",
    "sapphire",
    "malachite",
    "ruby"
)

$Dusts = @(
    "redstone",
    "glowstone",
    "teslatite"
)

$Metals | ForEach-Object {
    @"
<item:forge:nuggets/$_>,
<item:forge:ingots/$_>,
<item:forge:storage_blocks/$_>,
<item:forge:ores/$_>,
<item:forge:dusts/$_>,
<item:forge:gears/$_>,
<item:forge:plates/$_>,
<item:forge:rods/$_>,
<item:forge:sheets/$_>,
"@
    Write-Host $OutputArray
}

$Gems | ForEach-Object {
    @"
<item:forge:nuggets/$_>,
<item:forge:ingots/$_>,
<item:forge:storage_blocks/$_>,
<item:forge:ores/$_>,
<item:forge:dusts/$_>,
<item:forge:gears/$_>,
<item:forge:plates/$_>,
<item:forge:rods/$_>,
<item:forge:sheets/$_>,
"@
    Write-Host $OutputArray
}

$Dusts | ForEach-Object {
    @"
<item:forge:storage_blocks/$_>,
<item:forge:ores/$_>,
<item:forge:dusts/$_>,
<item:forge:gears/$_>,
<item:forge:plates/$_>,
<item:forge:rods/$_>,
<item:forge:sheets/$_>,
"@
        Write-Host $OutputArray
    }