#priority 899

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

var materials as MCTag[string][string] = {
    "iron": {
        "nugget": <tag:forge:nuggets/iron>,
        "ingot": <tag:forge:ingots/iron>,  
        "block": <tag:forge:storage_blocks/iron>,
        "ore": <tag:forge:ores/iron>,
        "dust": <tag:forge:dusts/iron>,
        //"fluid": <fluid:forge:fluids/iron>,
        "gear": <tag:forge:gears/iron>,
        "plate": <tag:forge:plates/iron>,
        "rod": <tag:forge:rods/iron>,
        "sheet": <tag:forge:sheets/iron>
    },

    "gold": {
        "nugget": <tag:forge:nuggets/gold>,
        "ingot": <tag:forge:ingots/gold>,
        "block": <tag:forge:storage_blocks/gold>,
        "ore": <tag:forge:ores/gold>,
        "dust": <tag:forge:dusts/gold>,
        //"fluid": <fluid:forge:fluids/gold>,
        "gear": <tag:forge:gears/gold>,
        "plate": <tag:forge:plates/gold>,
        "rod": <tag:forge:rods/gold>,
        "sheet": <tag:forge:sheets/gold>
    },

    "neptunium": {
        "nugget": <tag:forge:nuggets/neptunium>,
        "ingot": <tag:forge:ingots/neptunium>,
        "block": <tag:forge:storage_blocks/neptunium>,
        "ore": <tag:forge:ores/neptunium>,
        "dust": <tag:forge:dusts/neptunium>,
        //"fluid": <fluid:forge:fluids/neptunium>,
        "gear": <tag:forge:gears/neptunium>,
        "plate": <tag:forge:plates/neptunium>,
        "rod": <tag:forge:rods/neptunium>,
        "sheet": <tag:forge:sheets/neptunium>
    },

    "copper": {
        "nugget": <tag:forge:nuggets/copper>,
        "ingot": <tag:forge:ingots/copper>,
        "block": <tag:forge:storage_blocks/copper>,
        "ore": <tag:forge:ores/copper>,
        "dust": <tag:forge:dusts/copper>,
        //"fluid": <fluid:forge:fluids/copper>,
        "gear": <tag:forge:gears/copper>,
        "plate": <tag:forge:plates/copper>,
        "rod": <tag:forge:rods/copper>,
        "sheet": <tag:forge:sheets/copper>
    },

    "silver": {
        "nugget": <tag:forge:nuggets/silver>,
        "ingot": <tag:forge:ingots/silver>,
        "block": <tag:forge:storage_blocks/silver>,
        "ore": <tag:forge:ores/silver>,
        "dust": <tag:forge:dusts/silver>,
        //"fluid": <fluid:forge:fluids/silver>,
        "gear": <tag:forge:gears/silver>,
        "plate": <tag:forge:plates/silver>,
        "rod": <tag:forge:rods/silver>,
        "sheet": <tag:forge:sheets/silver>
    },

    "zinc": {
        "nugget": <tag:forge:nuggets/zinc>,
        "ingot": <tag:forge:ingots/zinc>,
        "block": <tag:forge:storage_blocks/zinc>,
        "ore": <tag:forge:ores/zinc>,
        "dust": <tag:forge:dusts/zinc>,
        //"fluid": <fluid:forge:fluids/zinc>,
        "gear": <tag:forge:gears/zinc>,
        "plate": <tag:forge:plates/zinc>,
        "rod": <tag:forge:rods/zinc>,
        "sheet": <tag:forge:sheets/zinc>
    },

    "brass": {
        "nugget": <tag:forge:nuggets/brass>,
        "ingot": <tag:forge:ingots/brass>,
        "block": <tag:forge:storage_blocks/brass>,
        "ore": <tag:forge:ores/brass>,
        "dust": <tag:forge:dusts/brass>,
        //"fluid": <fluid:forge:fluids/brass>,
        "gear": <tag:forge:gears/brass>,
        "plate": <tag:forge:plates/brass>,
        "rod": <tag:forge:rods/brass>,
        "sheet": <tag:forge:sheets/brass>
    },

    "tungsten": {
        "nugget": <tag:forge:nuggets/tungsten>,
        "ingot": <tag:forge:ingots/tungsten>,
        "block": <tag:forge:storage_blocks/tungsten>,
        "ore": <tag:forge:ores/tungsten>,
        "dust": <tag:forge:dusts/tungsten>,
        //"fluid": <fluid:forge:fluids/tungsten>,
        "gear": <tag:forge:gears/tungsten>,
        "plate": <tag:forge:plates/tungsten>,
        "rod": <tag:forge:rods/tungsten>,
        "sheet": <tag:forge:sheets/tungsten>
    },

    "lead": {
        "nugget": <tag:forge:nuggets/lead>,
        "ingot": <tag:forge:ingots/lead>,
        "block": <tag:forge:storage_blocks/lead>,
        "ore": <tag:forge:ores/lead>,
        "dust": <tag:forge:dusts/lead>,
        //"fluid": <fluid:forge:fluids/lead>,
        "gear": <tag:forge:gears/lead>,
        "plate": <tag:forge:plates/lead>,
        "rod": <tag:forge:rods/lead>,
        "sheet": <tag:forge:sheets/lead>
    },

    "quicksilver": {
        "nugget": <tag:forge:nuggets/quicksilver>,
        "ingot": <tag:forge:ingots/quicksilver>,
        "block": <tag:forge:storage_blocks/quicksilver>,
        "ore": <tag:forge:ores/quicksilver>,
        "dust": <tag:forge:dusts/quicksilver>,
        //"fluid": <fluid:forge:fluids/quicksilver>,
        "gear": <tag:forge:gears/quicksilver>,
        "plate": <tag:forge:plates/quicksilver>,
        "rod": <tag:forge:rods/quicksilver>,
        "sheet": <tag:forge:sheets/quicksilver>
    },

    "tin": {
        "nugget": <tag:forge:nuggets/tin>,
        "ingot": <tag:forge:ingots/tin>,
        "block": <tag:forge:storage_blocks/tin>,
        "ore": <tag:forge:ores/tin>,
        "dust": <tag:forge:dusts/tin>,
        //"fluid": <fluid:forge:fluids/tin>,
        "gear": <tag:forge:gears/tin>,
        "plate": <tag:forge:plates/tin>,
        "rod": <tag:forge:rods/tin>,
        "sheet": <tag:forge:sheets/tin>
    },

    "redstone_alloy": {
        "nugget": <tag:forge:nuggets/redstone_alloy>,
        "ingot": <tag:forge:ingots/redstone_alloy>,
        "block": <tag:forge:storage_blocks/redstone_alloy>,
        "ore": <tag:forge:ores/redstone_alloy>,
        "dust": <tag:forge:dusts/redstone_alloy>,
        //"fluid": <fluid:forge:fluids/redstone_alloy>,
        "gear": <tag:forge:gears/redstone_alloy>,
        "plate": <tag:forge:plates/redstone_alloy>,
        "rod": <tag:forge:rods/redstone_alloy>,
        "sheet": <tag:forge:sheets/redstone_alloy>
    },

    "refined_iron": {
        "nugget": <tag:forge:nuggets/refined_iron>,
        "ingot": <tag:forge:ingots/refined_iron>,
        "block": <tag:forge:storage_blocks/refined_iron>,
        "ore": <tag:forge:ores/refined_iron>,
        "dust": <tag:forge:dusts/refined_iron>,
        //"fluid": <fluid:forge:fluids/refined_iron>,
        "gear": <tag:forge:gears/refined_iron>,
        "plate": <tag:forge:plates/refined_iron>,
        "rod": <tag:forge:rods/refined_iron>,
        "sheet": <tag:forge:sheets/refined_iron>
    },

    "compressed_iron": {
        "nugget": <tag:forge:nuggets/compressed_iron>,
        "ingot": <tag:forge:ingots/compressed_iron>,
        "block": <tag:forge:storage_blocks/compressed_iron>,
        "ore": <tag:forge:ores/compressed_iron>,
        "dust": <tag:forge:dusts/compressed_iron>,
        //"fluid": <fluid:forge:fluids/compressed_iron>,
        "gear": <tag:forge:gears/compressed_iron>,
        "plate": <tag:forge:plates/compressed_iron>,
        "rod": <tag:forge:rods/compressed_iron>,
        "sheet": <tag:forge:sheets/compressed_iron>
    },

    "nickel": {
        "nugget": <tag:forge:nuggets/nickel>,
        "ingot": <tag:forge:ingots/nickel>,
        "block": <tag:forge:storage_blocks/nickel>,
        "ore": <tag:forge:ores/nickel>,
        "dust": <tag:forge:dusts/nickel>,
        //"fluid": <fluid:forge:fluids/nickel>,
        "gear": <tag:forge:gears/nickel>,
        "plate": <tag:forge:plates/nickel>,
        "rod": <tag:forge:rods/nickel>,
        "sheet": <tag:forge:sheets/nickel>
    },

    "platinum": {
        "nugget": <tag:forge:nuggets/platinum>,
        "ingot": <tag:forge:ingots/platinum>,
        "block": <tag:forge:storage_blocks/platinum>,
        "ore": <tag:forge:ores/platinum>,
        "dust": <tag:forge:dusts/platinum>,
        //"fluid": <fluid:forge:fluids/platinum>,
        "gear": <tag:forge:gears/platinum>,
        "plate": <tag:forge:plates/platinum>,
        "rod": <tag:forge:rods/platinum>,
        "sheet": <tag:forge:sheets/platinum>
    },

    "bismuth": {
        "nugget": <tag:forge:nuggets/bismuth>,
        "ingot": <tag:forge:ingots/bismuth>,
        "block": <tag:forge:storage_blocks/bismuth>,
        "ore": <tag:forge:ores/bismuth>,
        "dust": <tag:forge:dusts/bismuth>,
        //"fluid": <fluid:forge:fluids/bismuth>,
        "gear": <tag:forge:gears/bismuth>,
        "plate": <tag:forge:plates/bismuth>,
        "rod": <tag:forge:rods/bismuth>,
        "sheet": <tag:forge:sheets/bismuth>
    },

    "aluminum": {
        "nugget": <tag:forge:nuggets/aluminum>,
        "ingot": <tag:forge:ingots/aluminum>,
        "block": <tag:forge:storage_blocks/aluminum>,
        "ore": <tag:forge:ores/aluminum>,
        "dust": <tag:forge:dusts/aluminum>,
        //"fluid": <fluid:forge:fluids/aluminum>,
        "gear": <tag:forge:gears/aluminum>,
        "plate": <tag:forge:plates/aluminum>,
        "rod": <tag:forge:rods/aluminum>,
        "sheet": <tag:forge:sheets/aluminum>
    },

    "uranium": {
        "nugget": <tag:forge:nuggets/uranium>,
        "ingot": <tag:forge:ingots/uranium>,
        "block": <tag:forge:storage_blocks/uranium>,
        "ore": <tag:forge:ores/uranium>,
        "dust": <tag:forge:dusts/uranium>,
        //"fluid": <fluid:forge:fluids/uranium>,
        "gear": <tag:forge:gears/uranium>,
        "plate": <tag:forge:plates/uranium>,
        "rod": <tag:forge:rods/uranium>,
        "sheet": <tag:forge:sheets/uranium>
    },

    "bronze": {
        "nugget": <tag:forge:nuggets/bronze>,
        "ingot": <tag:forge:ingots/bronze>,
        "block": <tag:forge:storage_blocks/bronze>,
        "ore": <tag:forge:ores/bronze>,
        "dust": <tag:forge:dusts/bronze>,
        //"fluid": <fluid:forge:fluids/bronze>,
        "gear": <tag:forge:gears/bronze>,
        "plate": <tag:forge:plates/bronze>,
        "rod": <tag:forge:rods/bronze>,
        "sheet": <tag:forge:sheets/bronze>
    },

    "invar": {
        "nugget": <tag:forge:nuggets/invar>,
        "ingot": <tag:forge:ingots/invar>,
        "block": <tag:forge:storage_blocks/invar>,
        "ore": <tag:forge:ores/invar>,
        "dust": <tag:forge:dusts/invar>,
        //"fluid": <fluid:forge:fluids/invar>,
        "gear": <tag:forge:gears/invar>,
        "plate": <tag:forge:plates/invar>,
        "rod": <tag:forge:rods/invar>,
        "sheet": <tag:forge:sheets/invar>
    },

    "electrum": {
        "nugget": <tag:forge:nuggets/electrum>,
        "ingot": <tag:forge:ingots/electrum>,
        "block": <tag:forge:storage_blocks/electrum>,
        "ore": <tag:forge:ores/electrum>,
        "dust": <tag:forge:dusts/electrum>,
        //"fluid": <fluid:forge:fluids/electrum>,
        "gear": <tag:forge:gears/electrum>,
        "plate": <tag:forge:plates/electrum>,
        "rod": <tag:forge:rods/electrum>,
        "sheet": <tag:forge:sheets/electrum>
    },

    "bismuth_brass": {
        "nugget": <tag:forge:nuggets/bismuth_brass>,
        "ingot": <tag:forge:ingots/bismuth_brass>,
        "block": <tag:forge:storage_blocks/bismuth_brass>,
        "ore": <tag:forge:ores/bismuth_brass>,
        "dust": <tag:forge:dusts/bismuth_brass>,
        //"fluid": <fluid:forge:fluids/bismuth_brass>,
        "gear": <tag:forge:gears/bismuth_brass>,
        "plate": <tag:forge:plates/bismuth_brass>,
        "rod": <tag:forge:rods/bismuth_brass>,
        "sheet": <tag:forge:sheets/bismuth_brass>
    },

    "aluminum_steel": {
        "nugget": <tag:forge:nuggets/aluminum_steel>,
        "ingot": <tag:forge:ingots/aluminum_steel>,
        "block": <tag:forge:storage_blocks/aluminum_steel>,
        "ore": <tag:forge:ores/aluminum_steel>,
        "dust": <tag:forge:dusts/aluminum_steel>,
        //"fluid": <fluid:forge:fluids/aluminum_steel>,
        "gear": <tag:forge:gears/aluminum_steel>,
        "plate": <tag:forge:plates/aluminum_steel>,
        "rod": <tag:forge:rods/aluminum_steel>,
        "sheet": <tag:forge:sheets/aluminum_steel>
    },

    "bismuth_steel": {
        "nugget": <tag:forge:nuggets/bismuth_steel>,
        "ingot": <tag:forge:ingots/bismuth_steel>,
        "block": <tag:forge:storage_blocks/bismuth_steel>,
        "ore": <tag:forge:ores/bismuth_steel>,
        "dust": <tag:forge:dusts/bismuth_steel>,
        //"fluid": <fluid:forge:fluids/bismuth_steel>,
        "gear": <tag:forge:gears/bismuth_steel>,
        "plate": <tag:forge:plates/bismuth_steel>,
        "rod": <tag:forge:rods/bismuth_steel>,
        "sheet": <tag:forge:sheets/bismuth_steel>
    },

    "signalum": {
        "nugget": <tag:forge:nuggets/signalum>,
        "ingot": <tag:forge:ingots/signalum>,
        "block": <tag:forge:storage_blocks/signalum>,
        "ore": <tag:forge:ores/signalum>,
        "dust": <tag:forge:dusts/signalum>,
        //"fluid": <fluid:forge:fluids/signalum>,
        "gear": <tag:forge:gears/signalum>,
        "plate": <tag:forge:plates/signalum>,
        "rod": <tag:forge:rods/signalum>,
        "sheet": <tag:forge:sheets/signalum>
    },

    "lumium": {
        "nugget": <tag:forge:nuggets/lumium>,
        "ingot": <tag:forge:ingots/lumium>,
        "block": <tag:forge:storage_blocks/lumium>,
        "ore": <tag:forge:ores/lumium>,
        "dust": <tag:forge:dusts/lumium>,
        //"fluid": <fluid:forge:fluids/lumium>,
        "gear": <tag:forge:gears/lumium>,
        "plate": <tag:forge:plates/lumium>,
        "rod": <tag:forge:rods/lumium>,
        "sheet": <tag:forge:sheets/lumium>
    },

    "enderium": {
        "nugget": <tag:forge:nuggets/enderium>,
        "ingot": <tag:forge:ingots/enderium>,
        "block": <tag:forge:storage_blocks/enderium>,
        "ore": <tag:forge:ores/enderium>,
        "dust": <tag:forge:dusts/enderium>,
        //"fluid": <fluid:forge:fluids/enderium>,
        "gear": <tag:forge:gears/enderium>,
        "plate": <tag:forge:plates/enderium>,
        "rod": <tag:forge:rods/enderium>,
        "sheet": <tag:forge:sheets/enderium>
    },

    "diamond": {
        "nugget": <tag:forge:nuggets/diamond>,
        "ingot": <tag:forge:ingots/diamond>,
        "block": <tag:forge:storage_blocks/diamond>,
        "ore": <tag:forge:ores/diamond>,
        "dust": <tag:forge:dusts/diamond>,
        //"fluid": <fluid:forge:fluids/diamond>,
        "gear": <tag:forge:gears/diamond>,
        "plate": <tag:forge:plates/diamond>,
        "rod": <tag:forge:rods/diamond>,
        "sheet": <tag:forge:sheets/diamond>
    },

    "lapis_lazuli": {
        "nugget": <tag:forge:nuggets/lapis_lazuli>,
        "ingot": <tag:forge:ingots/lapis_lazuli>,
        "block": <tag:forge:storage_blocks/lapis_lazuli>,
        "ore": <tag:forge:ores/lapis_lazuli>,
        "dust": <tag:forge:dusts/lapis_lazuli>,
        //"fluid": <fluid:forge:fluids/lapis_lazuli>,
        "gear": <tag:forge:gears/lapis_lazuli>,
        "plate": <tag:forge:plates/lapis_lazuli>,
        "rod": <tag:forge:rods/lapis_lazuli>,
        "sheet": <tag:forge:sheets/lapis_lazuli>
    },

    "emerald": {
        "nugget": <tag:forge:nuggets/emerald>,
        "ingot": <tag:forge:ingots/emerald>,
        "block": <tag:forge:storage_blocks/emerald>,
        "ore": <tag:forge:ores/emerald>,
        "dust": <tag:forge:dusts/emerald>,
        //"fluid": <fluid:forge:fluids/emerald>,
        "gear": <tag:forge:gears/emerald>,
        "plate": <tag:forge:plates/emerald>,
        "rod": <tag:forge:rods/emerald>,
        "sheet": <tag:forge:sheets/emerald>
    },

    "quartz": {
        "nugget": <tag:forge:nuggets/quartz>,
        "ingot": <tag:forge:ingots/quartz>,
        "block": <tag:forge:storage_blocks/quartz>,
        "ore": <tag:forge:ores/quartz>,
        "dust": <tag:forge:dusts/quartz>,
        //"fluid": <fluid:forge:fluids/quartz>,
        "gear": <tag:forge:gears/quartz>,
        "plate": <tag:forge:plates/quartz>,
        "rod": <tag:forge:rods/quartz>,
        "sheet": <tag:forge:sheets/quartz>
    },

    "amethyst": {
        "nugget": <tag:forge:nuggets/amethyst>,
        "ingot": <tag:forge:ingots/amethyst>,
        "block": <tag:forge:storage_blocks/amethyst>,
        "ore": <tag:forge:ores/amethyst>,
        "dust": <tag:forge:dusts/amethyst>,
        //"fluid": <fluid:forge:fluids/amethyst>,
        "gear": <tag:forge:gears/amethyst>,
        "plate": <tag:forge:plates/amethyst>,
        "rod": <tag:forge:rods/amethyst>,
        "sheet": <tag:forge:sheets/amethyst>
    },

    "sapphire": {
        "nugget": <tag:forge:nuggets/sapphire>,
        "ingot": <tag:forge:ingots/sapphire>,
        "block": <tag:forge:storage_blocks/sapphire>,
        "ore": <tag:forge:ores/sapphire>,
        "dust": <tag:forge:dusts/sapphire>,
        //"fluid": <fluid:forge:fluids/sapphire>,
        "gear": <tag:forge:gears/sapphire>,
        "plate": <tag:forge:plates/sapphire>,
        "rod": <tag:forge:rods/sapphire>,
        "sheet": <tag:forge:sheets/sapphire>
    },

    "malachite": {
        "nugget": <tag:forge:nuggets/malachite>,
        "ingot": <tag:forge:ingots/malachite>,
        "block": <tag:forge:storage_blocks/malachite>,
        "ore": <tag:forge:ores/malachite>,
        "dust": <tag:forge:dusts/malachite>,
        //"fluid": <fluid:forge:fluids/malachite>,
        "gear": <tag:forge:gears/malachite>,
        "plate": <tag:forge:plates/malachite>,
        "rod": <tag:forge:rods/malachite>,
        "sheet": <tag:forge:sheets/malachite>
    },

    "ruby": {
        "nugget": <tag:forge:nuggets/ruby>,
        "ingot": <tag:forge:ingots/ruby>,
        "block": <tag:forge:storage_blocks/ruby>,
        "ore": <tag:forge:ores/ruby>,
        "dust": <tag:forge:dusts/ruby>,
        //"fluid": <fluid:forge:fluids/ruby>,
        "gear": <tag:forge:gears/ruby>,
        "plate": <tag:forge:plates/ruby>,
        "rod": <tag:forge:rods/ruby>,
        "sheet": <tag:forge:sheets/ruby>
    },

    "redstone": {
        "nugget": <tag:forge:nuggets/redstone>,
        "ingot": <tag:forge:ingots/redstone>,
        "block": <tag:forge:storage_blocks/redstone>,
        "ore": <tag:forge:ores/redstone>,
        "dust": <tag:forge:dusts/redstone>,
        //"fluid": <fluid:forge:fluids/redstone>,
        "gear": <tag:forge:gears/redstone>,
        "plate": <tag:forge:plates/redstone>,
        "rod": <tag:forge:rods/redstone>,
        "sheet": <tag:forge:sheets/redstone>
    },

    "glowstone": {
        "nugget": <tag:forge:nuggets/glowstone>,
        "ingot": <tag:forge:ingots/glowstone>,
        "block": <tag:forge:storage_blocks/glowstone>,
        "ore": <tag:forge:ores/glowstone>,
        "dust": <tag:forge:dusts/glowstone>,
        //"fluid": <fluid:forge:fluids/glowstone>,
        "gear": <tag:forge:gears/glowstone>,
        "plate": <tag:forge:plates/glowstone>,
        "rod": <tag:forge:rods/glowstone>,
        "sheet": <tag:forge:sheets/glowstone>
    },

    "teslatite": {
        "nugget": <tag:forge:nuggets/teslatite>,
        "ingot": <tag:forge:ingots/teslatite>,
        "block": <tag:forge:storage_blocks/teslatite>,
        "ore": <tag:forge:ores/teslatite>,
        "dust": <tag:forge:dusts/teslatite>,
        //"fluid": <fluid:forge:fluids/teslatite>,
        "gear": <tag:forge:gears/teslatite>,
        "plate": <tag:forge:plates/teslatite>,
        "rod": <tag:forge:rods/teslatite>,
        "sheet": <tag:forge:sheets/teslatite>
    }
}; 

var modPriorities as string[] = [
    "minecraft",
    "kubejs",
    "silents_mechanisms",
    "bluepower",
    "botania",
    "mysticalworld",
    "tmechworks",
    "industrialforegoing"
];

for material, types in materials {
    for type, itemTag in types {
        if (itemTag.items.length > 1) {
            purgeItemTag(itemTag, modPriorities);
        }
    }
}