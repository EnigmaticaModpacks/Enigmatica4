#priority 99

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

var compressingRecipes as IItemStack[IItemStack] = {
<item:tetra:forged_workbench> : <item:minecraft:anvil>
};

for output, input in compressingRecipes {
    <recipetype:silents_mechanisms:compressing>.addJSONRecipe("compressing/" + output.translationKey + "_from_" + input.translationKey,
    {
        process_time: 600,
        ingredient: {
            item: input.registryName,
            count: input.amount
        },
        result: {
            item: output.registryName,
            count: output.amount
        }
    });
}