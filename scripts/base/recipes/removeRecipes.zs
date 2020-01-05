#priority 199
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var itemsToRemoveRecipesFrom as IItemStack[] = [
	<item:cyclic:mattock>,
	<item:refinedstorageaddons:wireless_crafting_grid>
];

for item in itemsToRemoveRecipesFrom {
	removeRecipe(item);
}