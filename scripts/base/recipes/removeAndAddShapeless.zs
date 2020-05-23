#priority 50
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var air = <item:minecraft:air>;
var recipes as IIngredient[][IItemStack] = {

};

for output, input in recipes {
    addShapeless(output, input, true);
}

// Bacon from Raw Pork
var output = <item:simplefarming:raw_bacon> * 2;
craftingTable.removeRecipe(output);
for knife in <tag:forge:fillet_knife>.items {
    var recipeName = "enigmatica_" + output.translationKey + "_from_" + knife.translationKey;
    var input = [<item:minecraft:porkchop>, knife.transformDamage(1)];
	craftingTable.addShapeless(recipeName, output, input);
} 