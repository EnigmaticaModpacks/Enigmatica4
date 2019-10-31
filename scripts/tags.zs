// No limit on tag names right now, so in theory you could register a tag as <tag:minecraft:now_exists> and it will create the tag, I don't know how I feel about this, so it may change to be limited to the <tag:crafttweaker:*> modid.

//<tag:crafttweaker:not_exists>.addItems(<item:minecraft:diamond>);   // ERROR: tag "crafttweaker:not_exists" is not an ItemTag
//<tag:crafttweaker:not_exists>.addBlock(<block:minecraft:stone>);    // ERROR: tag "crafttweaker:not_exists" is not a BlockTag
//<tag:crafttweaker:not_exists>.addEntity(<entity:minecraft:zombie>); // ERROR: tag "crafttweaker:not_exists" is not an EntityTag // Not implemented yet!!
//<tag:crafttweaker:not_exists>.addFluid(<fluid:minecraft:water>);    // ERROR: tag "crafttweaker:not_exists" is not a FluidTag // Not implemented yet!!
//
//<tag:crafttweaker:now_exists>.registerItemTag();    // Registered new ItemTag with name "crafttweaker:now_exists"
//
//<tag:crafttweaker:now_exists>.addItems(<item:minecraft:diamond>);   // Added diamond to ItemTag "crafttweaker:now_exists"
//<tag:crafttweaker:now_exists>.addBlock(<block:minecraft:stone>);    // ERROR: tag "crafttweaker:not_exists" is not a BlockTag
//<tag:crafttweaker:now_exists>.addEntity(<entity:minecraft:zombie>); // ERROR: tag "crafttweaker:not_exists" is not an EntityTag // Not implemented yet!!
//<tag:crafttweaker:now_exists>.addFluid(<fluid:minecraft:water>);    // ERROR: tag "crafttweaker:not_exists" is not a FluidTag // Not implemented yet!!



var wool  = <tag:minecraft:wool>;
for item in wool.items {
    println(wool.commandString + " contains: " + item.displayName);
}


var out = <item:minecraft:string> * 4;
craftingTable.addShapeless("wool2string", out, [<tag:minecraft:wool>]);

<tag:minecraft:planks>.addItems([<item:minecraft:glass>]);
<tag:minecraft:wool>.removeItems([<item:minecraft:white_wool>]);

<tag:crafttweaker:ingots>.createItemTag();
<tag:crafttweaker:ingots>.addItems([<item:minecraft:iron_ingot>, <item:minecraft:gold_ingot>]);

craftingTable.addShapeless("new_tag_test", <item:minecraft:diamond>, [<tag:crafttweaker:ingots>,<tag:crafttweaker:ingots>,<tag:crafttweaker:ingots>]);

<tag:minecraft:wither_immune>.addBlocks(<blockstate:minecraft:stone>);
