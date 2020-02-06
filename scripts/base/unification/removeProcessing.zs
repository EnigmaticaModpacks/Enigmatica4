#priority 898

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

public function removeProcessingFor(item as IItemStack) as void {

    // Minecraft
    craftingTable.removeRecipe(item);
	furnace.removeRecipe(item);
	blastFurnace.removeRecipe(item);

    // JEI
	//JEI.RemoveAndHide(item);

    // Silents Mechanisms

    // Industrial Foregoing

    // Create
}
			