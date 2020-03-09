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
			craftingTable.addShapeless(formatRecipeName(item) + "_temporary_conversion_recipe", tag.first(), [item]);
		}
	}
}

public function mysticalWorld_smeltingAndBlasting_nugget_from_equipment(material as string) as void {
    logger.info("Adding Metal Item to Nugget Smelting/Blasting recipes for " + material);
    var nuggetTag = BracketHandlers.getTag("forge:nuggets/" + material);
    var nugget = nuggetTag.first();
    var equipmentTag = BracketHandlers.getTag("mysticalworld:" + material + "_items");
    var xp = 1.0;
    var cookingTime = 200;

    if (equipmentTag.first().matches(<item:minecraft:air>)) {
        logger.info("Attempted to add Metal Item to Nugget Smelting/Blasting recipes, but no items exist in the ItemTag " + equipmentTag.commandString);
		return;
	}
    if (nugget.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add Metal Item to Nugget Smelting/Blasting recipes, but no items exist in the ItemTag " + nuggetTag.commandString);
		return;
	} 
     
	for item in equipmentTag.items {
		blastFurnace.addRecipe(formatRecipeName(nuggetTag.first()) + "_from_" + formatRecipeName(item), nuggetTag.first(), item, xp, cookingTime);
		furnace.addRecipe(formatRecipeName(nuggetTag.first()) + "_from_" + formatRecipeName(item), nuggetTag.first(), item, xp, cookingTime);    
	}  
    
}
public function minecraft_smeltingAndBlasting_ingot_from_ore(material as string) as void {
    var oreItemTag = BracketHandlers.getTag("forge:ores/" + material);
    var ingotItemTag = BracketHandlers.getTag("forge:ingots/" + material);
    var ore = oreItemTag.first();
    var ingot = ingotItemTag.first();

    if (ore.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add smelting recipe, but no items exist in the ItemTag " + oreItemTag.commandString);
        return;
    }

	if (ingot.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add smelting recipe, but no items exist in the ItemTag " + ingotItemTag.commandString);
        return;
    }

    var xp = 1.0;
    var cookingTime = 200;
    blastFurnace.removeRecipe(ingot, ore);
    furnace.removeRecipe(ingot, ore);
    blastFurnace.addRecipe("blasting_" + formatRecipeName(ingot) + "_from_ore", ingot, ore, xp, cookingTime);
    furnace.addRecipe("smelting_" + formatRecipeName(ingot) + "_from_ore", ingot, ore, xp, cookingTime);
}
public function minecraft_smeltingAndBlasting_ingot_from_dust(material as string) as void {
    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var ingotItemTag = BracketHandlers.getTag("forge:ingots/" + material);
    var dust = dustItemTag.first();
    var ingot = ingotItemTag.first();

    if (dust.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add smelting recipe, but no items exist in the ItemTag " + dustItemTag.commandString);
        return;
    }

    if (ingot.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add smelting recipe, but no items exist in the ItemTag " + ingotItemTag.commandString);
        return;
    }

    var xp = 0.0;
    var cookingTime = 200;
    blastFurnace.removeRecipe(ingot, dust);
    furnace.removeRecipe(ingot, dust);
    blastFurnace.addRecipe("blasting_" + formatRecipeName(ingot) + "_from_dust", ingot, dust, xp, cookingTime);
    furnace.addRecipe("smelting_" + formatRecipeName(ingot) + "_from_dust", ingot, dust, xp, cookingTime);
}