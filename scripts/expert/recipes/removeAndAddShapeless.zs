#priority 50
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var air = <item:minecraft:air>;
var recipes as IIngredient[][IItemStack] = {

};

for output, input in recipes {
    addShapeless(output, input, true);
}