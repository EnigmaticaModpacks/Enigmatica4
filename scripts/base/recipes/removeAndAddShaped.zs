#priority 50
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

/*

output : 
    [
        [air, air, air], 
        [air, air, air],
        [air, air, air]
    ]

*/

var air = <item:minecraft:air>;
var recipes as IIngredient[][][IItemStack] = {
    <item:refinedstorageaddons:wireless_crafting_grid> : 
    [
        [<item:refinedstorage:quartz_enriched_iron>, <item:rftoolsbase:infused_enderpearl>, <item:refinedstorage:quartz_enriched_iron>], 
        [<item:refinedstorage:quartz_enriched_iron>, <item:refinedstorage:wireless_grid>, <item:refinedstorage:quartz_enriched_iron>],
        [<item:refinedstorage:quartz_enriched_iron>, <item:minecraft:crafting_table>, <item:refinedstorage:quartz_enriched_iron>]
    ]
};

for output, input in recipes {
    addShaped(output, input, true);
}