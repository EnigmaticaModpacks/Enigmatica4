#priority 50

craftingTable.addShaped("placeholder", 
<item:minecraft:stick> * 16, 
[
    [<tag:minecraft:logs>], 
    [<tag:minecraft:logs>]
]);

craftingTable.addShaped("placeholder", 
<item:minecraft:chest> * 4, 
[
    [<tag:minecraft:logs>, <tag:minecraft:logs>, <tag:minecraft:logs>], 
    [<tag:minecraft:logs>, <item:minecraft:air>, <tag:minecraft:logs>],
    [<tag:minecraft:logs>, <tag:minecraft:logs>, <tag:minecraft:logs>]
]);

craftingTable.addShaped("placeholder", 
<item:minecraft:hopper>, 
[
    [<tag:forge:ingots/iron>, <tag:minecraft:logs>, <tag:forge:ingots/iron>], 
    [<tag:forge:ingots/iron>, <tag:minecraft:logs>, <tag:forge:ingots/iron>],
    [<item:minecraft:air>, <tag:forge:ingots/iron>, <item:minecraft:air>]
]);