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
	<item:minecraft:oak_sign> * 3 : 
    [
        [<tag:minecraft:planks>, <tag:minecraft:planks>, <tag:minecraft:planks>], 
        [<tag:minecraft:planks>, <tag:minecraft:planks>, <tag:minecraft:planks>],
        [air, <tag:forge:rods/wooden>, air]
    ]
};

for output, input in recipes {
    addShapedMirrored(output, input, false);
}

/*
// ===================================================================================================== //
//
//    This section adds tag-recipes for storage drawers, to allow all wood types to be used.
//
// ===================================================================================================== //
*/

var vanillaPlanks as IItemStack[] = [
    <item:minecraft:oak_planks>,
    <item:minecraft:spruce_planks>,
    <item:minecraft:birch_planks>,
    <item:minecraft:jungle_planks>,
    <item:minecraft:acacia_planks>,
    <item:minecraft:dark_oak_planks>
];

var chest = <tag:forge:chests/wooden>;
for planks in <tag:minecraft:planks>.items {
    var counter as int = 0;
    for vanillaPlank in vanillaPlanks {
        if (vanillaPlank.translationKey != planks.translationKey) {
            counter++;
            if (counter == 6) {
                craftingTable.addShapedMirrored(<item:storagedrawers:oak_full_drawers_1>.translationKey + "_" + planks.translationKey, <item:storagedrawers:oak_full_drawers_1>, [
                    [planks, planks, planks], 
                    [air, chest, air],
                    [planks, planks, planks]
                ]);
                craftingTable.addShapedMirrored(<item:storagedrawers:oak_full_drawers_2>.translationKey + "_" + planks.translationKey, <item:storagedrawers:oak_full_drawers_2> * 2, [
                    [planks, chest, planks], 
                    [planks, planks, planks],
                    [planks, chest, planks]
                ]);
                craftingTable.addShapedMirrored(<item:storagedrawers:oak_full_drawers_4>.translationKey + "_" + planks.translationKey, <item:storagedrawers:oak_full_drawers_4> * 4, [
                    [chest, planks, chest], 
                    [planks, planks, planks],
                    [chest, planks, chest]
                ]);
            }
        }
    }
}

var vanillaSlabs as IItemStack[] = [
    <item:minecraft:oak_slab>,
    <item:minecraft:spruce_slab>,
    <item:minecraft:birch_slab>,
    <item:minecraft:jungle_slab>,
    <item:minecraft:acacia_slab>,
    <item:minecraft:dark_oak_slab>
];

for slabs in <tag:minecraft:wooden_slabs>.items {
    var counter as int = 0;
    for vanillaSlab in vanillaSlabs {
        if (vanillaSlab.translationKey != slabs.translationKey) {
            counter++;
            if (counter == 6) {
                craftingTable.addShapedMirrored(<item:storagedrawers:oak_half_drawers_1>.translationKey + "_" + slabs.translationKey, <item:storagedrawers:oak_half_drawers_1>, [
                    [slabs, slabs, slabs], 
                    [air, chest, air],
                    [slabs, slabs, slabs]
                ]);
                craftingTable.addShapedMirrored(<item:storagedrawers:oak_half_drawers_2>.translationKey + "_" + slabs.translationKey, <item:storagedrawers:oak_half_drawers_2> * 2, [
                    [slabs, chest, slabs], 
                    [slabs, slabs, slabs],
                    [slabs, chest, slabs]
                ]);
                craftingTable.addShapedMirrored(<item:storagedrawers:oak_half_drawers_4>.translationKey + "_" + slabs.translationKey, <item:storagedrawers:oak_half_drawers_4> * 4, [
                    [chest, slabs, chest], 
                    [slabs, slabs, slabs],
                    [chest, slabs, chest]
                ]);
            }
        }
    }
}