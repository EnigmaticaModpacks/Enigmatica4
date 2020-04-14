#priority 50
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

/*

output : 
    [
        [air, air, air], 
        [air, air, air],
        [air, air, air]
    ]

*/
var air = <item:minecraft:air>;
var recipes as IIngredient[][][IItemStack] = {
	<item:cyclic:mattock> : 
    [
        [<tag:forge:storage_blocks/lapis>, <tag:forge:obsidian>, <tag:forge:storage_blocks/lapis>], 
        [air, <tag:forge:ingots/steel>, air],
        [air, <tag:forge:ingots/steel>, air]
    ],
    <item:fluidtank:pipe> * 6 : 
    [
            [<tag:forge:glass>, <tag:forge:ingots/copper>, <tag:forge:glass>], 
            [<tag:forge:glass>, <tag:forge:ingots/tin>, <tag:forge:glass>],
            [<tag:forge:glass>, <tag:forge:ingots/copper>, <tag:forge:glass>]
    ],
    <item:powah:energy_cell_hardened> : 
    [
        [<item:powah:steel_energized>, <item:powah:capacitor_hardened>, <item:powah:steel_energized>], 
        [<item:powah:energy_cell_basic>, <item:powah:dielectric_casing>, <item:powah:energy_cell_basic>],
        [<item:powah:steel_energized>, <item:powah:capacitor_hardened>, <item:powah:steel_energized>]
    ]
};

for output, input in recipes {
    addShapedMirrored(output, input, true);
}