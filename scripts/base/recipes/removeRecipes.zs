#priority 199
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

var itemsToRemoveRecipesFrom as IItemStack[] = [
	<item:mysticalworld:amethyst_axe>,
	<item:mysticalworld:amethyst_hoe>,
	<item:mysticalworld:amethyst_knife>,
	<item:mysticalworld:amethyst_pickaxe>,
	<item:mysticalworld:amethyst_shovel>,
	<item:mysticalworld:amethyst_sword>,
	
	<item:fluidtank:pipe>
];

for item in itemsToRemoveRecipesFrom {
	removeRecipe(item);
}