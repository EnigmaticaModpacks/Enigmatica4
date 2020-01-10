#priority 199
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var itemsToRemoveRecipesFrom as IItemStack[] = [

];

for item in itemsToRemoveRecipesFrom {
	removeRecipe(item);
}