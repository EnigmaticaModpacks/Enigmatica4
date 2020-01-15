#priority 50
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

/*

output :
[air, air, air]

*/
var air = <item:minecraft:air>;
var recipes as IIngredient[][IItemStack] = {
	<item:minecraft:flint> : 
    [<item:minecraft:gravel>, <item:minecraft:gravel>, <item:minecraft:gravel>],

    <item:simplefarming:cornbread> : 
    [<tag:forge:grain>, <tag:forge:crops/corn>, <tag:forge:grain>],

    <item:minecraft:chest> :
    [<tag:forge:chests/wooden>],
	
	<item:quark:basalt> :
    [<item:bluepower:basalt>],
	
	<item:bluepower:basalt> :
    [<item:quark:basalt>],
	
	<item:minecraft:crafting_table> :
    [<item:craftingstation:crafting_station_slab>],

    <item:simplefarming:fish_sandwich> :
    [<tag:forge:bread>, <item:aquaculture:fish_fillet_cooked>, <item:aquaculture:fish_fillet_cooked>, <tag:forge:crops/tomato>, <tag:forge:salad_ingredients>],

    <item:simplefarming:sushi> :
    [<tag:forge:grain>, <item:minecraft:dried_kelp>, <item:aquaculture:fish_fillet_raw>, <item:aquaculture:fish_fillet_raw>],

    <item:simplefarming:fish_fillet> :
    [<tag:forge:grain>, <tag:forge:grain>, <item:aquaculture:fish_fillet_cooked>, <item:aquaculture:fish_fillet_cooked>]
};

for output, input in recipes {
    addShapeless(output, input, false);
}