#priority 99

import mods.powah.Energizing;

Energizing.addRecipe(<item:tetra:magmatic_cell>, 250000, [<item:rftoolspower:dimensionalcell_simple>, <item:powah:capacitor_blazing>, <item:powah:capacitor_blazing>]);

// Example method to add Energizing recipe
// Arguments: output, energy (max = 2147483647), inputs (max = 6 items/tags)
// Energizing.addRecipe(<item:powah:dielectric_paste>, 1000, [<tag:minecraft:coals>, <item:minecraft:clay>]);

// Example method to remove Energizing recipe
// Arguments: output
// Energizing.removeRecipe(<item:powah:energised_steel>);

// Example method to clear all Energizing recipes
// Energizing.clearAll();