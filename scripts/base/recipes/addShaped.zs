#priority 50

craftingTable.addShaped("sticksfromlogs", //formatRecipeName(<item:minecraft:stick>)
<item:minecraft:stick> * 16, 
[
    [<tag:minecraft:logs>], 
    [<tag:minecraft:logs>]
]);

craftingTable.addShaped("chestsfromlogs",  //formatRecipeName(<item:minecraft:chest>)
<item:minecraft:chest> * 4, 
[
    [<tag:minecraft:logs>, <tag:minecraft:logs>, <tag:minecraft:logs>], 
    [<tag:minecraft:logs>, <item:minecraft:air>, <tag:minecraft:logs>],
    [<tag:minecraft:logs>, <tag:minecraft:logs>, <tag:minecraft:logs>]
]);

craftingTable.addShaped(formatRecipeName(<item:minecraft:hopper>), 
<item:minecraft:hopper>, 
[
    [<tag:forge:ingots/iron>, <tag:minecraft:logs>, <tag:forge:ingots/iron>], 
    [<tag:forge:ingots/iron>, <tag:minecraft:logs>, <tag:forge:ingots/iron>],
    [<item:minecraft:air>, <tag:forge:ingots/iron>, <item:minecraft:air>]
]);