#priority 1000

public function create_pressing_removeRecipe(output as IItemStack) as void {
    <recipetype:minecraft:pressing>.removeRecipe(output);
}

public function create_pressing_addRecipe(recipeName as string, output as IItemStack, input as IIngredient, xp as float, processingTime as int) as void {
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
                count: output.amount
            }
        ]
        processingTime: processingTime
    });
}



public function create_crushing_removeRecipe(output as IItemStack) as void {
    <recipetype:minecraft:crushing>.removeRecipe(output);
}

public function create_crushing_addRecipe() as void {
    <recipetype:minecraft:crushing>.addJSONRecipe(recipeName,
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
        ]
        processingTime: processingTime
    });
}