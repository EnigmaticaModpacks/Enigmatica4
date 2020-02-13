#priority 1000

import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

public function addOreToIngotSmelting(material as string) as void {
    var oreItemTag = BracketHandlers.getTag("forge:ores/" + material);
    var ingotItemTag = BracketHandlers.getTag("forge:ingots/" + material);
    var ore = oreItemTag.first();
    var ingot = ingotItemTag.first();
    var xp = 1.0;
    var cookingTime = 200;

    if (ore.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add smelting recipe, but no items exist in the ItemTag " + oreItemTag.commandString);
    } else {
        blastFurnace.addRecipe("blastfurnace_" + formatRecipeName(ingot) + "_from_ore", ingot, ore, xp, cookingTime);
        furnace.addRecipe("furnace_" + formatRecipeName(ingot) + "_from_ore", ingot, ore, xp, cookingTime); 
    }  
}

public function addDustToIngotSmelting(material as string) as void {
    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var ingotItemTag = BracketHandlers.getTag("forge:ingots/" + material);
    var dust = dustItemTag.first();
    var ingot = ingotItemTag.first();
    var xp = 0.0;
    var cookingTime = 200;

    if (dust.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add smelting recipe, but no items exist in the ItemTag " + dustItemTag.commandString);
    }
    else if (ingot.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add smelting recipe, but no items exist in the ItemTag " + ingotItemTag.commandString);
    } 
    else {
        blastFurnace.addRecipe("blastfurnace_" + formatRecipeName(ingot) + "_from_dust", ingot, dust, xp, cookingTime);
        furnace.addRecipe("furnace_" + formatRecipeName(ingot) + "_from_dust", ingot, dust, xp, cookingTime);
    }
}