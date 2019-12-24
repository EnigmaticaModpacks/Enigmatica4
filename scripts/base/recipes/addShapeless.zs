#priority 50
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

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
    [<item:craftingstation:crafting_station_slab>]
/* 
     : 
    [],
    
     : 
    [],
     : 
    [],
     : 
    [],
     : 
    [],
     : 
    [],
     : 
    [],
     : 
    [],
     : 
    [], */
};

for output, input in recipes {
    addShapeless(output, input, false);
}