//<tag:crafttweaker:not_exists>.addItems(<item:minecraft:diamond>);   // ERROR: tag "crafttweaker:not_exists" is not an ItemTag
//<tag:crafttweaker:not_exists>.addBlock(<block:minecraft:stone>);    // ERROR: tag "crafttweaker:not_exists" is not a BlockTag
//<tag:crafttweaker:not_exists>.addEntity(<entity:minecraft:zombie>); // ERROR: tag "crafttweaker:not_exists" is not an EntityTag
//<tag:crafttweaker:not_exists>.addFluid(<fluid:minecraft:water>);    // ERROR: tag "crafttweaker:not_exists" is not a FluidTag
//
//<tag:crafttweaker:now_exists>.registerItemTag();    // Registered new ItemTag with name "crafttweaker:now_exists"
//
//<tag:crafttweaker:now_exists>.addItems(<item:minecraft:diamond>);   // Added diamond to ItemTag "crafttweaker:now_exists"
//<tag:crafttweaker:now_exists>.addBlock(<block:minecraft:stone>);    // ERROR: tag "crafttweaker:not_exists" is not a BlockTag
//<tag:crafttweaker:now_exists>.addEntity(<entity:minecraft:zombie>); // ERROR: tag "crafttweaker:not_exists" is not an EntityTag
//<tag:crafttweaker:now_exists>.addFluid(<fluid:minecraft:water>);    // ERROR: tag "crafttweaker:not_exists" is not a FluidTag



var wool  = <tag:minecraft:wool>;
for item in wool.items {
println(wool.commandString + " contains: " + item.displayName);
}


    // var out = <item:minecraft:string> * 4;
    // recipes.addShapeless("white2string", out, [<item:minecraft:white_wool>]);
    // recipes.addShapeless("black2string", out, [<item:minecraft:black_wool>]);
    // recipes.addShapeless("red2string",   out, [<item:minecraft:red_wool>]);
    // recipes.addShapeless("green2string", out, [<item:minecraft:green_wool>]);
    // recipes.addShapeless("blue2string",  out, [<item:minecraft:blue_wool>]);



var out = <item:minecraft:string> * 4;
recipes.addShapeless("wool2string", out, [<tag:minecraft:wool>]);

<tag:minecraft:wool>.add([<item:minecraft:glass>]);
<tag:minecraft:wool>.remove([<item:minecraft:white_wool>]);