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
        
    ],
     : 
    [
        
    ]
    */
};

for output, input in recipes {
    addShapedMirrored(output, input, false);
}