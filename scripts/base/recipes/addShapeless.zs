#priority 50
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

/* craftingTable.addShapeless("flintfromgravel", 
<item:minecraft:flint>,
[<item:minecraft:gravel>, <item:minecraft:gravel>, <item:minecraft:gravel>]);

craftingTable.addShapeless("cornbread", 
<item:minecraft:flint>,
[<item:minecraft:gravel>, <item:minecraft:gravel>, <item:minecraft:gravel>]); */



var recipes as IIngredient[][IItemStack] = {
	<item:minecraft:flint> : 
    [<item:minecraft:gravel>, <item:minecraft:gravel>, <item:minecraft:gravel>],

    <item:simplefarming:cornbread> : 
    [<tag:simplefarming:grain>, <tag:forge:corn>, <tag:simplefarming:grain>]
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