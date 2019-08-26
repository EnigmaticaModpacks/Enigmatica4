import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.data.StringData;

recipes.removeByName("minecraft:sugar");

recipes.removeRecipe(<item:minecraft:stick>);


var test  = new StringData("asd");
//println(test);

//recipes.addShapeless("shapedtest", <item:minecraft:diamond> * 9, [<item:minecraft:dirt>], (usualOut as IItemStack, inputs as IItemStack[]) => {
//if(inputs[0].displayName == "totally real diamond block" ){
//    return usualOut;
//}
//return <item:minecraft:clay>.setDisplayName("Diamond");
//});

recipes.addShapeless("shapedtest", <item:minecraft:diamond> * 9, [<item:minecraft:dirt>], (usualOut as IItemStack, inputs as IItemStack[]) => {
if(inputs[0].displayName == "totally real diamond block"){
    return usualOut;
}
return <item:minecraft:clay>.setDisplayName("Diamond");
});


recipes.addShapeless("claytomore", <item:minecraft:clay> * 8, [<item:minecraft:water_bucket>, <item:minecraft:clay_ball>,<item:minecraft:clay_ball>,<item:minecraft:clay_ball>,<item:minecraft:clay_ball>,<item:minecraft:clay_ball>,<item:minecraft:clay_ball>,<item:minecraft:clay_ball>,<item:minecraft:clay_ball>], null);

recipes.addShapedMirrored("shaped_test", <item:minecraft:furnace>, [[<item:minecraft:diamond>, <item:minecraft:diamond>,<item:minecraft:diamond>], [<item:minecraft:diamond>, <item:minecraft:air>, <item:minecraft:diamond>], [<item:minecraft:diamond>,<item:minecraft:diamond>,<item:minecraft:diamond>]], null);

recipes.addShaped("shaped_mirror_test", <item:minecraft:arrow>, [[<item:minecraft:diamond>, <item:minecraft:diamond>], [<item:minecraft:air>, <item:minecraft:flint>], [<item:minecraft:air>, <item:minecraft:flint>]], null);


recipes.removeRecipe(<item:minecraft:black_dye>);


furnace.addRecipe("furnace_function_test", <item:minecraft:diamond>, <item:minecraft:dirt>, 400, 40);


furnace.removeRecipe(<item:minecraft:charcoal>);

furnace.removeByName("minecraft:emerald_from_smelting");


recipes.removeByRegex("minecraft:.*_carpet");


furnace.removeRecipe(<item:minecraft:stone>, <item:minecraft:cobblestone>);


cutting.addRecipe("name", <item:minecraft:diamond>, <item:minecraft:dirt>);


//"asdf".print();

println("one" + "two");

var data1  = new StringData("one");
var data2  = new StringData("two");
//println(data1 + data2);


