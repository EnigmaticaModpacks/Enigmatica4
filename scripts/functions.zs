#priority 1000

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;


public function formatRecipeName(item as IItemStack) as string {
	return item.amount > 1 ? item.translationKey + "_" + item.amount : item.translationKey; 
}

public function addShaped(output as IItemStack, input as IIngredient[][], removeOriginalRecipe as bool) as void {
	var recipeName = formatRecipeName(output);

	if (removeOriginalRecipe) {
		craftingTable.removeRecipe(output);
	}

	craftingTable.addShaped(recipeName, output, input, null);
}

public function addShapedMirrored(output as IItemStack, input as IIngredient[][], removeOriginalRecipe as bool) as void {
	var recipeName = formatRecipeName(output);

	if (removeOriginalRecipe) {
		craftingTable.removeRecipe(output);
	}

	craftingTable.addShapedMirrored(recipeName, output, input);
}

public function addShapeless(output as IItemStack, input as IIngredient[], removeOriginalRecipe as bool) as void {
	var recipeName = formatRecipeName(output);

	if (removeOriginalRecipe) {
		craftingTable.removeRecipe(output);
	}

	craftingTable.addShapeless(recipeName, output, input);
}

public function removeRecipe(output as IItemStack) as void {
	craftingTable.removeRecipe(output);
}

