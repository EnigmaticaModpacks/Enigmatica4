/* #debug
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.StringData;

craftingTable.removeByName("minecraft:sugar");
craftingTable.removeRecipe(<item:minecraft:stick>);

var test = new StringData("asd");

craftingTable.addShapeless("shapedtest", <item:minecraft:diamond> * 9, [<item:minecraft:dirt>], (usualOut as IItemStack, inputs as IItemStack[]) => {
    if(inputs[0].displayName == "totally real diamond block" ){
        return usualOut;
    }
    return <item:minecraft:clay>.setDisplayName("Diamond");
});

craftingTable.addShapeless("claytomore", <item:minecraft:clay> * 8, [<item:minecraft:water_bucket>, <item:minecraft:clay_ball>,<item:minecraft:clay_ball>,<item:minecraft:clay_ball>,<item:minecraft:clay_ball>,<item:minecraft:clay_ball>,<item:minecraft:clay_ball>,<item:minecraft:clay_ball>,<item:minecraft:clay_ball>], null);

craftingTable.addShapedMirrored("shaped_test", <item:minecraft:furnace>, [[<item:minecraft:diamond>, <item:minecraft:diamond>,<item:minecraft:diamond>], [<item:minecraft:diamond>, <item:minecraft:air>, <item:minecraft:diamond>], [<item:minecraft:diamond>,<item:minecraft:diamond>,<item:minecraft:diamond>]], null);

craftingTable.addShaped("shaped_mirror_test", <item:minecraft:arrow>, [[<item:minecraft:diamond>, <item:minecraft:diamond>], [<item:minecraft:air>, <item:minecraft:flint>]], null);

craftingTable.removeRecipe(<item:minecraft:black_dye>);

furnace.addRecipe("furnace_function_test", <item:minecraft:diamond>, <item:minecraft:dirt>, 400, 40);

furnace.removeRecipe(<item:minecraft:charcoal>);

furnace.removeByName("minecraft:emerald_from_smelting");

craftingTable.removeByRegex("minecraft:.*_carpet");

furnace.removeRecipe(<item:minecraft:stone>, <item:minecraft:cobblestone>);

stoneCutter.addRecipe("name", <item:minecraft:diamond>, <item:minecraft:dirt>);

composter.setValue(<item:minecraft:diamond>, 1.0);


println(<blockstate:minecraft:grass_block:snowy=true> as string);
println(<blockstate:minecraft:grass_block:snowy=false> as string);
println(<blockstate:minecraft:snow_block>.commandString);


// Stuff inside a "snip" will only be added to a script if a condition is met, see the modnotloaded snip below

#snip start
println("Hello World123");
#snip end



println("I am"); #snip start
println("a beautiful");
#snip end

#snip start
println("butterfly"); #snip end

println("Waiting"); #snip start println("for the day");
#snip end println("When I was");


#snip modnotloaded botania
println("BOTANIA");
#snip end

#<item:minecraft:melon_slice>.food.fastEating = true;

print("I am lowercase".length);

print("I am lowercase".toUpperCase());

print("    I am lowercase    ".trim());
print("I am left".lpad(50, 'r'));

for s in "Hello World, I am a beautiful butterfly".split(' ') {
    println(s);
}
logger.info("test");


craftingTable.addShaped("testrecipe", <item:minecraft:diamond> *4, [[<item:minecraft:netherrack>, <item:minecraft:netherrack>], [<item:minecraft:netherrack>, <item:minecraft:netherrack>]]); */
