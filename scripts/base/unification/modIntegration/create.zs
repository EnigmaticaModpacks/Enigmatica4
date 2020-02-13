#priority 1000

import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BracketHandlers;

public function addOreToDustCrushing(material as string, dustItemTag as MCTag) as void {
    var oreItemTag = BracketHandlers.getTag("forge:ores/" + material);
    var ore = oreItemTag.first();

    if (ore.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add Ore -> Dust crushing recipe, but no items exist in the ItemTag " + oreItemTag.commandString);
        return;
    }

    var dustItemTag = BracketHandlers.getTag("forge:dusts/" + material);
    var dust = dustItemTag.first();

    if (dust.matches(<item:minecraft:air>)) {
        logger.info("Attempted to add Ore -> Dust crushing recipe, but no items exist in the ItemTag " + dustItemTag.commandString);
        return;
    }

    dust = dust * 2;
    var time = 200;

    create_crushing_addRecipe("crusher_" + formatRecipeName(dust), dust, ore, time);
}