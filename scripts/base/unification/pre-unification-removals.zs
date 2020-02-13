#priority 950

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.BracketHandlers;

var materialNames as string[] = [
    "bismuth",
    "aluminum",
    "uranium",
    "iron",
    "gold",
    "copper",
    "silver",
    "lead",
    "nickel",
    "platinum",
    "tin",
    "zinc",
];

for materialName in materialNames {
    
    var chunk = BracketHandlers.getItem("silents_mechanisms:bauxite_chunks");

    if (materialName != "aluminum") {
        chunk = BracketHandlers.getItem("silents_mechanisms:" + materialName + "_chunks");
    }

    var tag = BracketHandlers.getTag("forge:dusts/" + materialName);

    tag.removeItems(chunk);
    <tag:forge:dusts>.removeItems(chunk);
}