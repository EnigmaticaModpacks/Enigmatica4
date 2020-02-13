#priority 1000

import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

public function addEquipmentToNuggetSmelting(material as string) as void {
    logger.info("Adding Metal Item to Nugget Smelting/Blasting recipes for " + material);
    var nuggetTag = BracketHandlers.getTag("forge:nuggets/" + material);
    var nugget = nuggetTag.first();
    var equipmentTag = BracketHandlers.getTag("mysticalworld:" + material + "_items");
    var xp = 1.0;
    var cookingTime = 200;

    if (equipmentTag.first().matches(<item:minecraft:air>)) {
        logger.info("Attempted to add Metal Item to Nugget Smelting/Blasting recipes, but no items exist in the ItemTag " + equipmentTag.commandString);
    }
    else if (nugget.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add Metal Item to Nugget Smelting/Blasting recipes, but no items exist in the ItemTag " + nuggetTag.commandString);
    } 
    else {
        for item in equipmentTag.items {
            blastFurnace.addRecipe(formatRecipeName(nuggetTag.first()) + "_from_" + formatRecipeName(item), nuggetTag.first(), item, xp, cookingTime);
            furnace.addRecipe(formatRecipeName(nuggetTag.first()) + "_from_" + formatRecipeName(item), nuggetTag.first(), item, xp, cookingTime);    
        }  
    }
}