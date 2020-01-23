#priority 1000

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

public function create_pressing_removeRecipe(output as IItemStack) as void {
    <recipetype:minecraft:pressing>.removeRecipe(output);
}
// TODO: additional recipe that handles chances, and arrays of inputs/outputs
public function create_pressing_addRecipe(recipeName as string, output as IItemStack, input as IItemStack, xp as float, time as int) as void {
    
    <recipetype:minecraft:pressing>.addJSONRecipe(recipeName,
    {
        ingredients: [
            {
                item: input.registryName
            }
        ],
        results: [
            {
                item: output.registryName,
                count: output.amount,
            }
        ],
        processingTime: time
    });
}



public function create_crushing_removeRecipe(output as IItemStack) as void {
    <recipetype:minecraft:crushing>.removeRecipe(output);
}

public function create_crushing_addRecipe(recipeName as string, output as IItemStack, input as IItemStack, time as int) as void {
    <recipetype:create:crushing>.addJSONRecipe(recipeName,
    {
        ingredients: [
            {
                item: input.registryName
            }
        ],
        results: [
            {
                item: output.registryName,
                count: output.amount
            }
        ],
        processingTime: time
    });
}