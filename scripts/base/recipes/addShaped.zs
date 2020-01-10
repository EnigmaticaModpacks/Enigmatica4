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
	<item:minecraft:stick> * 16 : 
    [
        [<tag:minecraft:logs>], 
        [<tag:minecraft:logs>]
    ],
    <item:minecraft:chest> * 4 : 
    [
        [<tag:minecraft:logs>, <tag:minecraft:logs>, <tag:minecraft:logs>], 
        [<tag:minecraft:logs>, air, <tag:minecraft:logs>],
        [<tag:minecraft:logs>, <tag:minecraft:logs>, <tag:minecraft:logs>]
    ],
    <item:minecraft:chest> : 
    [
        [<tag:minecraft:planks>, <tag:minecraft:planks>, <tag:minecraft:planks>], 
        [<tag:minecraft:planks>, air, <tag:minecraft:planks>],
        [<tag:minecraft:planks>, <tag:minecraft:planks>, <tag:minecraft:planks>]
    ],
    <item:minecraft:hopper> : 
    [
        [<tag:forge:ingots/iron>, <tag:minecraft:logs>, <tag:forge:ingots/iron>], 
        [<tag:forge:ingots/iron>, <tag:minecraft:logs>, <tag:forge:ingots/iron>],
        [air, <tag:forge:ingots/iron>, air]
    ]
};

for output, input in recipes {
    addShaped(output, input, false);
}