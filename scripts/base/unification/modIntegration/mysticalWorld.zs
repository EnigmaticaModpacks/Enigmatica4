/* #priority 909

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

public function addEquipmentToNuggetSmeltingRecipes(material as string, itemTag as MCTag) as void {
    logger.info("Adding Metal Item to Nugget Smelting & Blasting recipes to the material " + material + ".");
    if (material == "copper") {
            for item in <tag:mysticalworld:copper_items>.items {
            blastFurnace.addRecipe(formatRecipeName(itemTag.first()) + "_from_" + formatRecipeName(item), itemTag.first(), item, 0.1, 200);
            furnace.addRecipe(formatRecipeName(itemTag.first()) + "_from_" + formatRecipeName(item), itemTag.first(), item, 0.1, 200);  
        } 
    }
    if (material == "lead") {
            for item in <tag:mysticalworld:lead_items>.items {
            blastFurnace.addRecipe(formatRecipeName(itemTag.first()) + "_from_" + formatRecipeName(item), itemTag.first(), item, 0.1, 200);  
            furnace.addRecipe(formatRecipeName(itemTag.first()) + "_from_" + formatRecipeName(item), itemTag.first(), item, 0.1, 200); 
        } 
    }
    if (material == "silver") {
            for item in <tag:mysticalworld:silver_items>.items {
            blastFurnace.addRecipe(formatRecipeName(itemTag.first()) + "_from_" + formatRecipeName(item), itemTag.first(), item, 0.1, 200);  
            furnace.addRecipe(formatRecipeName(itemTag.first()) + "_from_" + formatRecipeName(item), itemTag.first(), item, 0.1, 200); 
        } 
    }
    if (material == "quicksilver") {
            for item in <tag:mysticalworld:quicksilver_items>.items {
            blastFurnace.addRecipe(formatRecipeName(itemTag.first()) + "_from_" + formatRecipeName(item), itemTag.first(), item, 0.1, 200);   
            furnace.addRecipe(formatRecipeName(itemTag.first()) + "_from_" + formatRecipeName(item), itemTag.first(), item, 0.1, 200);
        } 
    }
    if (material == "tin") {
            for item in <tag:mysticalworld:tin_items>.items {
            blastFurnace.addRecipe(formatRecipeName(itemTag.first()) + "_from_" + formatRecipeName(item), itemTag.first(), item, 0.1, 200);  
            furnace.addRecipe(formatRecipeName(itemTag.first()) + "_from_" + formatRecipeName(item), itemTag.first(), item, 0.1, 200); 
        } 
    }
} */