#priority 1000

import crafttweaker.api.tag.MCTag;

public function addEquipmentToNuggetSmelting(material as string, itemTag as MCTag) as void {
    logger.info("Adding Metal Item to Nugget Smelting/Blasting recipes for " + material + ".");
    var xp = 1.0;
    var cookingTime = 200;
    if (material == "copper") {
            for item in <tag:mysticalworld:copper_items>.items {
            blastFurnace.addRecipe(formatRecipeName(itemTag.first()) + "_from_" + formatRecipeName(item), itemTag.first(), item, xp, cookingTime);
            furnace.addRecipe(formatRecipeName(itemTag.first()) + "_from_" + formatRecipeName(item), itemTag.first(), item, xp, cookingTime);  
        } 
    }
    if (material == "lead") {
            for item in <tag:mysticalworld:lead_items>.items {
            blastFurnace.addRecipe(formatRecipeName(itemTag.first()) + "_from_" + formatRecipeName(item), itemTag.first(), item, xp, cookingTime);  
            furnace.addRecipe(formatRecipeName(itemTag.first()) + "_from_" + formatRecipeName(item), itemTag.first(), item, xp, cookingTime); 
        } 
    }
    if (material == "silver") {
            for item in <tag:mysticalworld:silver_items>.items {
            blastFurnace.addRecipe(formatRecipeName(itemTag.first()) + "_from_" + formatRecipeName(item), itemTag.first(), item, xp, cookingTime);  
            furnace.addRecipe(formatRecipeName(itemTag.first()) + "_from_" + formatRecipeName(item), itemTag.first(), item, xp, cookingTime); 
        } 
    }
    if (material == "quicksilver") {
            for item in <tag:mysticalworld:quicksilver_items>.items {
            blastFurnace.addRecipe(formatRecipeName(itemTag.first()) + "_from_" + formatRecipeName(item), itemTag.first(), item, xp, cookingTime);   
            furnace.addRecipe(formatRecipeName(itemTag.first()) + "_from_" + formatRecipeName(item), itemTag.first(), item, xp, cookingTime);
        } 
    }
    if (material == "tin") {
            for item in <tag:mysticalworld:tin_items>.items {
            blastFurnace.addRecipe(formatRecipeName(itemTag.first()) + "_from_" + formatRecipeName(item), itemTag.first(), item, xp, cookingTime);  
            furnace.addRecipe(formatRecipeName(itemTag.first()) + "_from_" + formatRecipeName(item), itemTag.first(), item, xp, cookingTime); 
        } 
    }
}