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
			tag.removeItems(item);
			removeProcessingFor(item);
		}
	}
}