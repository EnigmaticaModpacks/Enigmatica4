/* #priority 900

import crafttweaker.api.item.IIngredient;

public static IIngredient[string][string] metals = {
    'iron': {
        'nugget': <item:forge:nuggets/iron>,
        'ingot': <item:forge:ingots/iron>,
        'block': <item:forge:storage_blocks/iron>,
        'ore': <item:forge:ores/iron>,
        'dust': <item:forge:dusts/iron>,
        'fluid': <fluid:forge:fluids/iron>,
        'gear': <item:forge:gears/iron>,
        'plate': <item:forge:plates/iron>,
        'rod': <item:forge:rods/iron>,
        'sheet': <item:forge:sheets/iron>
    },

    'gold': {
        'nugget': <item:forge:nuggets/gold>,
        'ingot': <item:forge:ingots/gold>,
        'block': <item:forge:storage_blocks/gold>,
        'ore': <item:forge:ores/gold>,
        'dust': <item:forge:dusts/gold>,
        'fluid': <fluid:forge:fluids/gold>,
        'gear': <item:forge:gears/gold>,
        'plate': <item:forge:plates/gold>,
        'rod': <item:forge:rods/gold>,
        'sheet': <item:forge:sheets/gold>
    },

    'neptunium': {
        'nugget': <item:forge:nuggets/neptunium>,
        'ingot': <item:forge:ingots/neptunium>,
        'block': <item:forge:storage_blocks/neptunium>,
        'ore': <item:forge:ores/neptunium>,
        'dust': <item:forge:dusts/neptunium>,
        'fluid': <fluid:forge:fluids/neptunium>,
        'gear': <item:forge:gears/neptunium>,
        'plate': <item:forge:plates/neptunium>,
        'rod': <item:forge:rods/neptunium>,
        'sheet': <item:forge:sheets/neptunium>
    },

    'copper': {
        'nugget': <item:forge:nuggets/copper>,
        'ingot': <item:forge:ingots/copper>,
        'block': <item:forge:storage_blocks/copper>,
        'ore': <item:forge:ores/copper>,
        'dust': <item:forge:dusts/copper>,
        'fluid': <fluid:forge:fluids/copper>,
        'gear': <item:forge:gears/copper>,
        'plate': <item:forge:plates/copper>,
        'rod': <item:forge:rods/copper>,
        'sheet': <item:forge:sheets/copper>
    },

    'silver': {
        'nugget': <item:forge:nuggets/silver>,
        'ingot': <item:forge:ingots/silver>,
        'block': <item:forge:storage_blocks/silver>,
        'ore': <item:forge:ores/silver>,
        'dust': <item:forge:dusts/silver>,
        'fluid': <fluid:forge:fluids/silver>,
        'gear': <item:forge:gears/silver>,
        'plate': <item:forge:plates/silver>,
        'rod': <item:forge:rods/silver>,
        'sheet': <item:forge:sheets/silver>
    },

    'zinc': {
        'nugget': <item:forge:nuggets/zinc>,
        'ingot': <item:forge:ingots/zinc>,
        'block': <item:forge:storage_blocks/zinc>,
        'ore': <item:forge:ores/zinc>,
        'dust': <item:forge:dusts/zinc>,
        'fluid': <fluid:forge:fluids/zinc>,
        'gear': <item:forge:gears/zinc>,
        'plate': <item:forge:plates/zinc>,
        'rod': <item:forge:rods/zinc>,
        'sheet': <item:forge:sheets/zinc>
    },

    'brass': {
        'nugget': <item:forge:nuggets/brass>,
        'ingot': <item:forge:ingots/brass>,
        'block': <item:forge:storage_blocks/brass>,
        'ore': <item:forge:ores/brass>,
        'dust': <item:forge:dusts/brass>,
        'fluid': <fluid:forge:fluids/brass>,
        'gear': <item:forge:gears/brass>,
        'plate': <item:forge:plates/brass>,
        'rod': <item:forge:rods/brass>,
        'sheet': <item:forge:sheets/brass>
    },

    'tungsten': {
        'nugget': <item:forge:nuggets/tungsten>,
        'ingot': <item:forge:ingots/tungsten>,
        'block': <item:forge:storage_blocks/tungsten>,
        'ore': <item:forge:ores/tungsten>,
        'dust': <item:forge:dusts/tungsten>,
        'fluid': <fluid:forge:fluids/tungsten>,
        'gear': <item:forge:gears/tungsten>,
        'plate': <item:forge:plates/tungsten>,
        'rod': <item:forge:rods/tungsten>,
        'sheet': <item:forge:sheets/tungsten>
    },

    'lead': {
        'nugget': <item:forge:nuggets/lead>,
        'ingot': <item:forge:ingots/lead>,
        'block': <item:forge:storage_blocks/lead>,
        'ore': <item:forge:ores/lead>,
        'dust': <item:forge:dusts/lead>,
        'fluid': <fluid:forge:fluids/lead>,
        'gear': <item:forge:gears/lead>,
        'plate': <item:forge:plates/lead>,
        'rod': <item:forge:rods/lead>,
        'sheet': <item:forge:sheets/lead>
    },

    'quicksilver': {
        'nugget': <item:forge:nuggets/quicksilver>,
        'ingot': <item:forge:ingots/quicksilver>,
        'block': <item:forge:storage_blocks/quicksilver>,
        'ore': <item:forge:ores/quicksilver>,
        'dust': <item:forge:dusts/quicksilver>,
        'fluid': <fluid:forge:fluids/quicksilver>,
        'gear': <item:forge:gears/quicksilver>,
        'plate': <item:forge:plates/quicksilver>,
        'rod': <item:forge:rods/quicksilver>,
        'sheet': <item:forge:sheets/quicksilver>
    },

    'tin': {
        'nugget': <item:forge:nuggets/tin>,
        'ingot': <item:forge:ingots/tin>,
        'block': <item:forge:storage_blocks/tin>,
        'ore': <item:forge:ores/tin>,
        'dust': <item:forge:dusts/tin>,
        'fluid': <fluid:forge:fluids/tin>,
        'gear': <item:forge:gears/tin>,
        'plate': <item:forge:plates/tin>,
        'rod': <item:forge:rods/tin>,
        'sheet': <item:forge:sheets/tin>
    },

    'redstone_alloy': {
        'nugget': <item:forge:nuggets/redstone_alloy>,
        'ingot': <item:forge:ingots/redstone_alloy>,
        'block': <item:forge:storage_blocks/redstone_alloy>,
        'ore': <item:forge:ores/redstone_alloy>,
        'dust': <item:forge:dusts/redstone_alloy>,
        'fluid': <fluid:forge:fluids/redstone_alloy>,
        'gear': <item:forge:gears/redstone_alloy>,
        'plate': <item:forge:plates/redstone_alloy>,
        'rod': <item:forge:rods/redstone_alloy>,
        'sheet': <item:forge:sheets/redstone_alloy>
    },

    'refined_iron': {
        'nugget': <item:forge:nuggets/refined_iron>,
        'ingot': <item:forge:ingots/refined_iron>,
        'block': <item:forge:storage_blocks/refined_iron>,
        'ore': <item:forge:ores/refined_iron>,
        'dust': <item:forge:dusts/refined_iron>,
        'fluid': <fluid:forge:fluids/refined_iron>,
        'gear': <item:forge:gears/refined_iron>,
        'plate': <item:forge:plates/refined_iron>,
        'rod': <item:forge:rods/refined_iron>,
        'sheet': <item:forge:sheets/refined_iron>
    },

    'compressed_iron': {
        'nugget': <item:forge:nuggets/compressed_iron>,
        'ingot': <item:forge:ingots/compressed_iron>,
        'block': <item:forge:storage_blocks/compressed_iron>,
        'ore': <item:forge:ores/compressed_iron>,
        'dust': <item:forge:dusts/compressed_iron>,
        'fluid': <fluid:forge:fluids/compressed_iron>,
        'gear': <item:forge:gears/compressed_iron>,
        'plate': <item:forge:plates/compressed_iron>,
        'rod': <item:forge:rods/compressed_iron>,
        'sheet': <item:forge:sheets/compressed_iron>
    },

    'nickel': {
        'nugget': <item:forge:nuggets/nickel>,
        'ingot': <item:forge:ingots/nickel>,
        'block': <item:forge:storage_blocks/nickel>,
        'ore': <item:forge:ores/nickel>,
        'dust': <item:forge:dusts/nickel>,
        'fluid': <fluid:forge:fluids/nickel>,
        'gear': <item:forge:gears/nickel>,
        'plate': <item:forge:plates/nickel>,
        'rod': <item:forge:rods/nickel>,
        'sheet': <item:forge:sheets/nickel>
    },

    'platinum': {
        'nugget': <item:forge:nuggets/platinum>,
        'ingot': <item:forge:ingots/platinum>,
        'block': <item:forge:storage_blocks/platinum>,
        'ore': <item:forge:ores/platinum>,
        'dust': <item:forge:dusts/platinum>,
        'fluid': <fluid:forge:fluids/platinum>,
        'gear': <item:forge:gears/platinum>,
        'plate': <item:forge:plates/platinum>,
        'rod': <item:forge:rods/platinum>,
        'sheet': <item:forge:sheets/platinum>
    },

    'bismuth': {
        'nugget': <item:forge:nuggets/bismuth>,
        'ingot': <item:forge:ingots/bismuth>,
        'block': <item:forge:storage_blocks/bismuth>,
        'ore': <item:forge:ores/bismuth>,
        'dust': <item:forge:dusts/bismuth>,
        'fluid': <fluid:forge:fluids/bismuth>,
        'gear': <item:forge:gears/bismuth>,
        'plate': <item:forge:plates/bismuth>,
        'rod': <item:forge:rods/bismuth>,
        'sheet': <item:forge:sheets/bismuth>
    },

    'aluminum': {
        'nugget': <item:forge:nuggets/aluminum>,
        'ingot': <item:forge:ingots/aluminum>,
        'block': <item:forge:storage_blocks/aluminum>,
        'ore': <item:forge:ores/aluminum>,
        'dust': <item:forge:dusts/aluminum>,
        'fluid': <fluid:forge:fluids/aluminum>,
        'gear': <item:forge:gears/aluminum>,
        'plate': <item:forge:plates/aluminum>,
        'rod': <item:forge:rods/aluminum>,
        'sheet': <item:forge:sheets/aluminum>
    },

    'uranium': {
        'nugget': <item:forge:nuggets/uranium>,
        'ingot': <item:forge:ingots/uranium>,
        'block': <item:forge:storage_blocks/uranium>,
        'ore': <item:forge:ores/uranium>,
        'dust': <item:forge:dusts/uranium>,
        'fluid': <fluid:forge:fluids/uranium>,
        'gear': <item:forge:gears/uranium>,
        'plate': <item:forge:plates/uranium>,
        'rod': <item:forge:rods/uranium>,
        'sheet': <item:forge:sheets/uranium>
    },

    'bronze': {
        'nugget': <item:forge:nuggets/bronze>,
        'ingot': <item:forge:ingots/bronze>,
        'block': <item:forge:storage_blocks/bronze>,
        'ore': <item:forge:ores/bronze>,
        'dust': <item:forge:dusts/bronze>,
        'fluid': <fluid:forge:fluids/bronze>,
        'gear': <item:forge:gears/bronze>,
        'plate': <item:forge:plates/bronze>,
        'rod': <item:forge:rods/bronze>,
        'sheet': <item:forge:sheets/bronze>
    },

    'invar': {
        'nugget': <item:forge:nuggets/invar>,
        'ingot': <item:forge:ingots/invar>,
        'block': <item:forge:storage_blocks/invar>,
        'ore': <item:forge:ores/invar>,
        'dust': <item:forge:dusts/invar>,
        'fluid': <fluid:forge:fluids/invar>,
        'gear': <item:forge:gears/invar>,
        'plate': <item:forge:plates/invar>,
        'rod': <item:forge:rods/invar>,
        'sheet': <item:forge:sheets/invar>
    },

    'electrum': {
        'nugget': <item:forge:nuggets/electrum>,
        'ingot': <item:forge:ingots/electrum>,
        'block': <item:forge:storage_blocks/electrum>,
        'ore': <item:forge:ores/electrum>,
        'dust': <item:forge:dusts/electrum>,
        'fluid': <fluid:forge:fluids/electrum>,
        'gear': <item:forge:gears/electrum>,
        'plate': <item:forge:plates/electrum>,
        'rod': <item:forge:rods/electrum>,
        'sheet': <item:forge:sheets/electrum>
    },

    'bismuth_brass': {
        'nugget': <item:forge:nuggets/bismuth_brass>,
        'ingot': <item:forge:ingots/bismuth_brass>,
        'block': <item:forge:storage_blocks/bismuth_brass>,
        'ore': <item:forge:ores/bismuth_brass>,
        'dust': <item:forge:dusts/bismuth_brass>,
        'fluid': <fluid:forge:fluids/bismuth_brass>,
        'gear': <item:forge:gears/bismuth_brass>,
        'plate': <item:forge:plates/bismuth_brass>,
        'rod': <item:forge:rods/bismuth_brass>,
        'sheet': <item:forge:sheets/bismuth_brass>
    },

    'aluminum_steel': {
        'nugget': <item:forge:nuggets/aluminum_steel>,
        'ingot': <item:forge:ingots/aluminum_steel>,
        'block': <item:forge:storage_blocks/aluminum_steel>,
        'ore': <item:forge:ores/aluminum_steel>,
        'dust': <item:forge:dusts/aluminum_steel>,
        'fluid': <fluid:forge:fluids/aluminum_steel>,
        'gear': <item:forge:gears/aluminum_steel>,
        'plate': <item:forge:plates/aluminum_steel>,
        'rod': <item:forge:rods/aluminum_steel>,
        'sheet': <item:forge:sheets/aluminum_steel>
    },

    'bismuth_steel': {
        'nugget': <item:forge:nuggets/bismuth_steel>,
        'ingot': <item:forge:ingots/bismuth_steel>,
        'block': <item:forge:storage_blocks/bismuth_steel>,
        'ore': <item:forge:ores/bismuth_steel>,
        'dust': <item:forge:dusts/bismuth_steel>,
        'fluid': <fluid:forge:fluids/bismuth_steel>,
        'gear': <item:forge:gears/bismuth_steel>,
        'plate': <item:forge:plates/bismuth_steel>,
        'rod': <item:forge:rods/bismuth_steel>,
        'sheet': <item:forge:sheets/bismuth_steel>
    },

    'signalum': {
        'nugget': <item:forge:nuggets/signalum>,
        'ingot': <item:forge:ingots/signalum>,
        'block': <item:forge:storage_blocks/signalum>,
        'ore': <item:forge:ores/signalum>,
        'dust': <item:forge:dusts/signalum>,
        'fluid': <fluid:forge:fluids/signalum>,
        'gear': <item:forge:gears/signalum>,
        'plate': <item:forge:plates/signalum>,
        'rod': <item:forge:rods/signalum>,
        'sheet': <item:forge:sheets/signalum>
    },

    'lumium': {
        'nugget': <item:forge:nuggets/lumium>,
        'ingot': <item:forge:ingots/lumium>,
        'block': <item:forge:storage_blocks/lumium>,
        'ore': <item:forge:ores/lumium>,
        'dust': <item:forge:dusts/lumium>,
        'fluid': <fluid:forge:fluids/lumium>,
        'gear': <item:forge:gears/lumium>,
        'plate': <item:forge:plates/lumium>,
        'rod': <item:forge:rods/lumium>,
        'sheet': <item:forge:sheets/lumium>
    },

    'enderium': {
        'nugget': <item:forge:nuggets/enderium>,
        'ingot': <item:forge:ingots/enderium>,
        'block': <item:forge:storage_blocks/enderium>,
        'ore': <item:forge:ores/enderium>,
        'dust': <item:forge:dusts/enderium>,
        'fluid': <fluid:forge:fluids/enderium>,
        'gear': <item:forge:gears/enderium>,
        'plate': <item:forge:plates/enderium>,
        'rod': <item:forge:rods/enderium>,
        'sheet': <item:forge:sheets/enderium>
    },
};
public static IIngredient[string][string] gems = {
    'diamond': {
        'nugget': <item:forge:nuggets/diamond>,
        'gem': <item:forge:ingots/diamond>,
        'block': <item:forge:storage_blocks/diamond>,
        'ore': <item:forge:ores/diamond>,
        'dust': <item:forge:dusts/diamond>,
        'fluid': <fluid:forge:fluids/diamond>,
        'gear': <item:forge:gears/diamond>,
        'plate': <item:forge:plates/diamond>,
        'rod': <item:forge:rods/diamond>,
        'sheet': <item:forge:sheets/diamond>
    },

    'lapis_lazuli': {
        'nugget': <item:forge:nuggets/lapis_lazuli>,
        'gem': <item:forge:ingots/lapis_lazuli>,
        'block': <item:forge:storage_blocks/lapis_lazuli>,
        'ore': <item:forge:ores/lapis_lazuli>,
        'dust': <item:forge:dusts/lapis_lazuli>,
        'fluid': <fluid:forge:fluids/lapis_lazuli>,
        'gear': <item:forge:gears/lapis_lazuli>,
        'plate': <item:forge:plates/lapis_lazuli>,
        'rod': <item:forge:rods/lapis_lazuli>,
        'sheet': <item:forge:sheets/lapis_lazuli>
    },

    'emerald': {
        'nugget': <item:forge:nuggets/emerald>,
        'gem': <item:forge:ingots/emerald>,
        'block': <item:forge:storage_blocks/emerald>,
        'ore': <item:forge:ores/emerald>,
        'dust': <item:forge:dusts/emerald>,
        'fluid': <fluid:forge:fluids/emerald>,
        'gear': <item:forge:gears/emerald>,
        'plate': <item:forge:plates/emerald>,
        'rod': <item:forge:rods/emerald>,
        'sheet': <item:forge:sheets/emerald>
    },

    'quartz': {
        'nugget': <item:forge:nuggets/quartz>,
        'gem': <item:forge:ingots/quartz>,
        'block': <item:forge:storage_blocks/quartz>,
        'ore': <item:forge:ores/quartz>,
        'dust': <item:forge:dusts/quartz>,
        'fluid': <fluid:forge:fluids/quartz>,
        'gear': <item:forge:gears/quartz>,
        'plate': <item:forge:plates/quartz>,
        'rod': <item:forge:rods/quartz>,
        'sheet': <item:forge:sheets/quartz>
    },

    'amethyst': {
        'nugget': <item:forge:nuggets/amethyst>,
        'gem': <item:forge:ingots/amethyst>,
        'block': <item:forge:storage_blocks/amethyst>,
        'ore': <item:forge:ores/amethyst>,
        'dust': <item:forge:dusts/amethyst>,
        'fluid': <fluid:forge:fluids/amethyst>,
        'gear': <item:forge:gears/amethyst>,
        'plate': <item:forge:plates/amethyst>,
        'rod': <item:forge:rods/amethyst>,
        'sheet': <item:forge:sheets/amethyst>
    },

    'sapphire': {
        'nugget': <item:forge:nuggets/sapphire>,
        'gem': <item:forge:ingots/sapphire>,
        'block': <item:forge:storage_blocks/sapphire>,
        'ore': <item:forge:ores/sapphire>,
        'dust': <item:forge:dusts/sapphire>,
        'fluid': <fluid:forge:fluids/sapphire>,
        'gear': <item:forge:gears/sapphire>,
        'plate': <item:forge:plates/sapphire>,
        'rod': <item:forge:rods/sapphire>,
        'sheet': <item:forge:sheets/sapphire>
    },

    'malachite': {
        'nugget': <item:forge:nuggets/malachite>,
        'gem': <item:forge:ingots/malachite>,
        'block': <item:forge:storage_blocks/malachite>,
        'ore': <item:forge:ores/malachite>,
        'dust': <item:forge:dusts/malachite>,
        'fluid': <fluid:forge:fluids/malachite>,
        'gear': <item:forge:gears/malachite>,
        'plate': <item:forge:plates/malachite>,
        'rod': <item:forge:rods/malachite>,
        'sheet': <item:forge:sheets/malachite>
    },

    'ruby': {
        'nugget': <item:forge:nuggets/ruby>,
        'gem': <item:forge:ingots/ruby>,
        'block': <item:forge:storage_blocks/ruby>,
        'ore': <item:forge:ores/ruby>,
        'dust': <item:forge:dusts/ruby>,
        'fluid': <fluid:forge:fluids/ruby>,
        'gear': <item:forge:gears/ruby>,
        'plate': <item:forge:plates/ruby>,
        'rod': <item:forge:rods/ruby>,
        'sheet': <item:forge:sheets/ruby>
    },
};
public static IIngredient[string][string] dusts = {
    'redstone': {
        'block': <item:forge:storage_blocks/redstone>,
        'ore': <item:forge:ores/redstone>,
        'dust': <item:forge:dusts/redstone>,
        'fluid': <fluid:forge:fluids/redstone>,
        'gear': <item:forge:gears/redstone>,
        'plate': <item:forge:plates/redstone>,
        'rod': <item:forge:rods/redstone>,
        'sheet': <item:forge:sheets/redstone>
    },

    'glowstone': {
        'block': <item:forge:storage_blocks/glowstone>,
        'ore': <item:forge:ores/glowstone>,
        'dust': <item:forge:dusts/glowstone>,
        'fluid': <fluid:forge:fluids/glowstone>,
        'gear': <item:forge:gears/glowstone>,
        'plate': <item:forge:plates/glowstone>,
        'rod': <item:forge:rods/glowstone>,
        'sheet': <item:forge:sheets/glowstone>
    },

    'teslatite': {
        'block': <item:forge:storage_blocks/teslatite>,
        'ore': <item:forge:ores/teslatite>,
        'dust': <item:forge:dusts/teslatite>,
        'fluid': <fluid:forge:fluids/teslatite>,
        'gear': <item:forge:gears/teslatite>,
        'plate': <item:forge:plates/teslatite>,
        'rod': <item:forge:rods/teslatite>,
        'sheet': <item:forge:sheets/teslatite>
    }
}; */