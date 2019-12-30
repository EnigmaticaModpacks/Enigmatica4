#priority 50
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var recipes as IIngredient[][][IItemStack] = {
	<item:minecraft:stick> * 16 : 
    [
        [<tag:minecraft:logs>], 
        [<tag:minecraft:logs>]
    ],
    <item:minecraft:chest> * 4 : 
    [
        [<tag:minecraft:logs>, <tag:minecraft:logs>, <tag:minecraft:logs>], 
        [<tag:minecraft:logs>, <item:minecraft:air>, <tag:minecraft:logs>],
        [<tag:minecraft:logs>, <tag:minecraft:logs>, <tag:minecraft:logs>]
    ],
    <item:minecraft:chest> : 
    [
        [<tag:minecraft:planks>, <tag:minecraft:planks>, <tag:minecraft:planks>], 
        [<tag:minecraft:planks>, <item:minecraft:air>, <tag:minecraft:planks>],
        [<tag:minecraft:planks>, <tag:minecraft:planks>, <tag:minecraft:planks>]
    ],
    <item:minecraft:hopper> : 
    [
        [<tag:forge:ingots/iron>, <tag:minecraft:logs>, <tag:forge:ingots/iron>], 
        [<tag:forge:ingots/iron>, <tag:minecraft:logs>, <tag:forge:ingots/iron>],
        [<item:minecraft:air>, <tag:forge:ingots/iron>, <item:minecraft:air>]
    ],
    <item:naturescompass:naturescompass> : 
    [
        [<tag:minecraft:saplings>, <tag:minecraft:logs>, <tag:minecraft:saplings>], 
        [<tag:minecraft:logs>, <item:minecraft:compass>, <tag:minecraft:logs>],
        [<tag:minecraft:saplings>, <tag:minecraft:logs>, <tag:minecraft:saplings>]
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
    addShaped(output, input, false);
}