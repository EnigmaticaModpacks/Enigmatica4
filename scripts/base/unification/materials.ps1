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
    "enderium",

    # Gems
    "diamond",
    "lapis_lazuli",
    "emerald",
    "quartz",
    "amethyst",
    "sapphire",
    "malachite",
    "ruby",

    # Dusts
    "redstone",
    "glowstone",
    "teslatite"
)

$Metals | ForEach-Object {
    @"
'$_': {
    'nugget': <tag:forge:nuggets/$_>,
    'ingot': <tag:forge:ingots/$_>,
    'block': <tag:forge:storage_blocks/$_>,
    'ore': <tag:forge:ores/$_>,
    'dust': <tag:forge:dusts/$_>,
    //'fluid': <fluid:forge:fluids/$_>,
    'gear': <tag:forge:gears/$_>,
    'plate': <tag:forge:plates/$_>,
    'rod': <tag:forge:rods/$_>,
    'sheet': <tag:forge:sheets/$_>
},
"@
    Write-Host $OutputArray
}