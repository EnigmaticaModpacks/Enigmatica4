#priority 909

import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

public function addOreToIngotSmelting(material as string, ingotItemTag as MCTag) as void {
    var oreItemTag = BracketHandlers.getTag("forge:ores/" + material);
    var ore = oreItemTag.first();

    if (ore.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add Ore -> Ingot smelting recipe, but no items exist in the ItemTag " + oreItemTag.commandString + ".");
        return;
    }

    var ingot = ingotItemTag.first();
    var xp = 0.1;
    var cookingTime = 200;

    blastFurnace.addRecipe("blastfurnace_" + formatRecipeName(ingot), ingot, ore, xp, cookingTime);
    furnace.addRecipe("furnace_" + formatRecipeName(ingot), ingot, ore, xp, cookingTime);
}