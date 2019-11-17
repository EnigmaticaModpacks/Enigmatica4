#priority 50
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var recipes as IIngredient[][][IItemStack] = {
	<item:minecraft:oak_sign> * 3 : 
    [
        [<tag:minecraft:planks>, <tag:minecraft:planks>, <tag:minecraft:planks>], 
        [<tag:minecraft:planks>, <tag:minecraft:planks>, <tag:minecraft:planks>],
        [<item:minecraft:air>, <tag:forge:rods/wooden>, <item:minecraft:air>]
    ]/*,
     : 
    [
        
    ],
     : 
    [
        
    ],
     : 
    [
        
    ],
     : 
    [
        
    ],
     : 
    [
        
    ],
     : 
    [
        
    ]
    */
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

for planks in <tag:minecraft:planks>.items {
    var counter as int = 0;
    for vanillaPlank in vanillaPlanks {
        if (vanillaPlank.translationKey != planks.translationKey) {
            counter++;
            if (counter == 6) {
                craftingTable.addShapedMirrored(<item:storagedrawers:oak_full_drawers_1>.translationKey + "_" + planks.translationKey, <item:storagedrawers:oak_full_drawers_1>, [
                    [planks, planks, planks], 
                    [<item:minecraft:air>, <tag:forge:chests/wooden>, <item:minecraft:air>],
                    [planks, planks, planks]
                ]);
                craftingTable.addShapedMirrored(<item:storagedrawers:oak_full_drawers_2>.translationKey + "_" + planks.translationKey, <item:storagedrawers:oak_full_drawers_2> * 2, [
                    [planks, planks, planks], 
                    [<item:minecraft:air>, <tag:forge:chests/wooden>, <item:minecraft:air>],
                    [planks, planks, planks]
                ]);
                craftingTable.addShapedMirrored(<item:storagedrawers:oak_full_drawers_4>.translationKey + "_" + planks.translationKey, <item:storagedrawers:oak_full_drawers_4> * 4, [
                    [planks, planks, planks], 
                    [<item:minecraft:air>, <tag:forge:chests/wooden>, <item:minecraft:air>],
                    [planks, planks, planks]
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
                    [<item:minecraft:air>, <tag:forge:chests/wooden>, <item:minecraft:air>],
                    [slabs, slabs, slabs]
                ]);
                craftingTable.addShapedMirrored(<item:storagedrawers:oak_half_drawers_2>.translationKey + "_" + slabs.translationKey, <item:storagedrawers:oak_half_drawers_2> * 2, [
                    [slabs, slabs, slabs], 
                    [<item:minecraft:air>, <tag:forge:chests/wooden>, <item:minecraft:air>],
                    [slabs, slabs, slabs]
                ]);
                craftingTable.addShapedMirrored(<item:storagedrawers:oak_half_drawers_4>.translationKey + "_" + slabs.translationKey, <item:storagedrawers:oak_half_drawers_4> * 4, [
                    [slabs, slabs, slabs], 
                    [<item:minecraft:air>, <tag:forge:chests/wooden>, <item:minecraft:air>],
                    [slabs, slabs, slabs]
                ]);
            }
        }
    }
}