/* import crafttweaker.api.data.StringData;
import crafttweaker.api.data.ShortData;
import crafttweaker.api.data.MapData;
import crafttweaker.api.data.ListData;
import crafttweaker.api.data.IData;

var tag = new MapData();
var enchants = new ListData();
var enchantEff = new MapData();
enchantEff.put("lvl", new ShortData(1));
enchantEff.put("id", new StringData("minecraft:efficiency"));
enchants.add(enchantEff);
tag.put("Enchantments", enchants);

var pick = <item:minecraft:diamond_pickaxe>.withTag(tag);
craftingTable.addShapeless("tag_test", <item:minecraft:diamond_pickaxe>, [<item:minecraft:grindstone>, pick]);
furnace.addRecipe("nbt_test", <item:minecraft:iron_pickaxe>, pick, 20,20);

craftingTable.addShapeless("expand_test", <item:minecraft:diamond_pickaxe>.withTag({Enchantments: [{lvl: 1 as short, id: "minecraft:efficiency" as string} as IData] as IData} as IData), [<item:minecraft:dirt>, <item:minecraft:glass>]); */
