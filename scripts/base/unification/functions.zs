#priority 910

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

public function getPreferredItemInTag(tag as MCTag, modPriorities as string[]) as IItemStack {
	for mod in modPriorities {
		for item in tag.items {
            var itemOwner = item.registryName.split(":")[0];
            if (itemOwner == mod) {
                return item;
            }
        }
    }
	logger.warning("Unable to find acceptable item in MCTag " + tag.commandString + ". It contained:");
	for item in tag.items {
		logger.info(item.registryName);
	}
    return <item:minecraft:air>;
}

public function purgeItemTag(tag as MCTag, modPriorities as string[]) as void {
	for item in tag.items {
		if (!item.matches(getPreferredItemInTag(tag, modPriorities))) {
			var itemInArray as IItemStack[] = [item];
			// Remove from tag
			tag.removeItems(item);

			// From from Minecraft recipes
			craftingTable.removeRecipe(item);
			furnace.removeRecipe(item);
			<recipetype:blasting>.removeRecipe(item);

			//JEI.RemoveAndHide(item);
			//RemoveProcessingFor(item);
		}
	}
}