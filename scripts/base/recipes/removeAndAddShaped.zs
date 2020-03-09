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
    ],

    <item:mysticalworld:amethyst_spear> : 
    [
        [<item:bluepower:amethyst_sword>], 
        [<tag:forge:rods/wooden>],
        [<tag:forge:rods/wooden>]
    ],

    <item:powah:reactor_basic> * 4 : 
    [
        [<tag:forge:ingots/uranium>, <item:powah:capacitor_basic_large>, <tag:forge:ingots/uranium>], 
        [<item:powah:capacitor_basic_large>, <item:powah:dielectric_casing>, <item:powah:capacitor_basic_large>],
        [<tag:forge:ingots/uranium>, <item:powah:capacitor_basic_large>, <tag:forge:ingots/uranium>]
    ],

    <item:powah:reactor_hardened> * 4 : 
    [
        [<tag:forge:ingots/uranium>, <item:powah:capacitor_hardened>, <tag:forge:ingots/uranium>], 
        [<item:powah:capacitor_hardened>, <item:powah:dielectric_casing>, <item:powah:capacitor_hardened>],
        [<tag:forge:ingots/uranium>, <item:powah:capacitor_hardened>, <tag:forge:ingots/uranium>]
    ],
    <item:powah:reactor_blazing> * 4 : 
    [
        [<tag:forge:ingots/uranium>, <item:powah:capacitor_blazing>, <tag:forge:ingots/uranium>], 
        [<item:powah:capacitor_blazing>, <item:powah:dielectric_casing>, <item:powah:capacitor_blazing>],
        [<tag:forge:ingots/uranium>, <item:powah:capacitor_blazing>, <tag:forge:ingots/uranium>]
    ],
    <item:powah:reactor_niotic> * 4 : 
    [
        [<tag:forge:ingots/uranium>, <item:powah:capacitor_niotic>, <tag:forge:ingots/uranium>], 
        [<item:powah:capacitor_niotic>, <item:powah:dielectric_casing>, <item:powah:capacitor_niotic>],
        [<tag:forge:ingots/uranium>, <item:powah:capacitor_niotic>, <tag:forge:ingots/uranium>]
    ],
    <item:powah:reactor_spirited> * 4 : 
    [
        [<tag:forge:ingots/uranium>, <item:powah:capacitor_spirited>, <tag:forge:ingots/uranium>], 
        [<item:powah:capacitor_spirited>, <item:powah:dielectric_casing>, <item:powah:capacitor_spirited>],
        [<tag:forge:ingots/uranium>, <item:powah:capacitor_spirited>, <tag:forge:ingots/uranium>]
    ]
};

for output, input in recipes {
    addShaped(output, input, true);
}