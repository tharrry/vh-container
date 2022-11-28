/* scripts made by Douwsky
for Iskall85's Vaulthunters */

// adding recipes

var ingots = {
  "iron": "minecraft:iron_ingot",
  "gold": "minecraft:gold_ingot",
  "copper": "minecraft:copper_ingot",
  "netherite": "minecraft:netherite_ingot",
  "tin": "thermal:tin_ingot",
  "lead": "thermal:lead_ingot",
  "silver": "thermal:silver_ingot",
  "nickel": "thermal:nickel_ingot",
  "bronze": "thermal:bronze_ingot",
  "electrum": "thermal:electrum_ingot",
  "invar": "thermal:invar_ingot",
  "constantan": "thermal:constantan_ingot",
  "signalum": "thermal:signalum_ingot",
  "lumium": "thermal:lumium_ingot",
  "enderium": "thermal:enderium_ingot",
};

var gems = {
    "lapis": "lapis_lazuli",
    "diamond": "diamond",
    "emerald": "emerald",
    "quartz": "quartz",
};    

for ingotId, ingotName in ingots {
  craftingTable.addShaped("thermal_" + ingotId + "_gear", <item:thermal:${ingotId}_gear>, [
    [<item:the_vault:gem_larimar>, <item:${ingotName}>, <item:the_vault:gem_larimar>],
    [<item:${ingotName}>, <item:the_vault:chromatic_iron_ingot>, <item:${ingotName}>],
    [<item:the_vault:gem_larimar>, <item:${ingotName}>, <item:the_vault:gem_larimar>]
]);
}

for gemId, gemName in gems {
  craftingTable.addShaped("thermal_" + gemId + "_gear", <item:thermal:${gemId}_gear>, [
    [<item:the_vault:gem_larimar>, <item:minecraft:${gemName}>, <item:the_vault:gem_larimar>],
    [<item:minecraft:${gemName}>, <item:the_vault:chromatic_iron_ingot>, <item:minecraft:${gemName}>],
    [<item:the_vault:gem_larimar>, <item:minecraft:${gemName}>, <item:the_vault:gem_larimar>]
]);
}

<recipetype:thermal:pulverizer>.addRecipe("ore_to_dust", [<item:the_vault:chromatic_iron_dust> *2], <item:the_vault:chromatic_iron_ore>, 3, 4000);
<recipetype:thermal:pulverizer>.addRecipe("raw_to_dust", [<item:the_vault:chromatic_iron_dust>], <item:the_vault:raw_chromatic_iron>, 3, 4000);
<recipetype:thermal:pulverizer>.addRecipe("ingot_to_dust", [<item:the_vault:chromatic_iron_dust>], <item:the_vault:chromatic_iron_ingot>, 3, 2000);

<recipetype:thermal:pulverizer>.addRecipe("vaultstone_to_rock", [<item:the_vault:vault_cobblestone> % 100, <item:the_vault:chipped_vault_rock> % 50], <item:the_vault:vault_stone>, 3, 2000);

craftingTable.addShaped("thermal_rf_coil", <item:thermal:rf_coil>, [
    [<item:minecraft:air>, <item:minecraft:air>, <tag:items:forge:storage_blocks/redstone>],
    [<item:minecraft:air>, <tag:items:forge:storage_blocks/gold>, <item:minecraft:air>],
    [<tag:items:forge:storage_blocks/redstone>, <item:minecraft:air>, <item:minecraft:air>]
]);

craftingTable.addShaped("thermal_redstone_servo", <item:thermal:redstone_servo>, [
    [<item:minecraft:air>, <tag:items:forge:storage_blocks/redstone>, <item:minecraft:air>],
    [<item:minecraft:air>, <tag:items:forge:storage_blocks/iron>, <item:minecraft:air>],
    [<item:minecraft:air>, <tag:items:forge:storage_blocks/redstone>, <item:minecraft:air>]
]);

<recipetype:create:item_application>.addRecipe("machine_frame", [<item:thermal:machine_frame>],
<item:minecraft:tinted_glass>, <tag:items:forge:gears>);

<recipetype:create:item_application>.addRecipe("energy_cell_frame", [<item:thermal:energy_cell_frame>],
<tag:items:forge:storage_blocks/lead>, <tag:items:forge:gears>);

<recipetype:create:item_application>.addRecipe("fluid_cell_frame", [<item:thermal:fluid_cell_frame>],
<tag:items:forge:storage_blocks/copper>, <tag:items:forge:gears>);

craftingTable.addShaped("thermal_energy_cell", <item:thermal:energy_cell>, [
    [<item:thermal:cured_rubber_block>, <item:compressium:redstone_1>, <item:thermal:cured_rubber_block>],
    [<item:the_vault:chromatic_steel_ingot>, <item:thermal:energy_cell_frame>, <item:the_vault:chromatic_steel_ingot>],
    [<item:thermal:cured_rubber_block>, <item:thermal:rf_coil>, <item:thermal:cured_rubber_block>]
]);

craftingTable.addShaped("thermal_fluid_cell", <item:thermal:fluid_cell>, [
    [<item:thermal:cured_rubber_block>, <tag:items:thermal:glass/hardened>, <item:thermal:cured_rubber_block>],
    [<item:the_vault:chromatic_steel_ingot>, <item:thermal:fluid_cell_frame>, <item:the_vault:chromatic_steel_ingot>],
    [<item:thermal:cured_rubber_block>, <item:thermal:redstone_servo>, <item:thermal:cured_rubber_block>]
]);

craftingTable.addShaped("thermal_wrench", <item:thermal:wrench>, [
    [<item:the_vault:chromatic_iron_ingot>, <item:minecraft:air>, <item:the_vault:chromatic_iron_ingot>],
    [<item:minecraft:air>, <tag:items:forge:gears>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:the_vault:chromatic_steel_ingot>, <item:minecraft:air>]
]);

craftingTable.addShaped("thermal_magmatic_dynamo", <item:thermal:dynamo_magmatic>, [
    [<item:minecraft:air>, <item:thermal:rf_coil>, <item:minecraft:air>],
    [<item:the_vault:chromatic_steel_ingot>, <item:thermal:invar_gear>, <item:the_vault:chromatic_steel_ingot>],
    [<item:thermal:invar_block>, <item:compressium:redstone_1>, <item:thermal:invar_block>]
]);

craftingTable.addShaped("thermal_numismatic_dynamo", <item:thermal:dynamo_numismatic>, [
    [<item:minecraft:air>, <item:thermal:rf_coil>, <item:minecraft:air>],
    [<item:the_vault:chromatic_steel_ingot>, <item:thermal:tin_gear>, <item:the_vault:chromatic_steel_ingot>],
    [<item:thermal:constantan_block>, <item:compressium:redstone_1>, <item:thermal:constantan_block>]
]);

craftingTable.addShaped("thermal_lapidary_dynamo", <item:thermal:dynamo_lapidary>, [
    [<item:minecraft:air>, <item:thermal:rf_coil>, <item:minecraft:air>],
    [<item:the_vault:chromatic_steel_ingot>, <item:thermal:gold_gear>, <item:the_vault:chromatic_steel_ingot>],
    [<item:compressium:lapis_1>, <item:compressium:redstone_1>, <item:compressium:lapis_1>]
]);

craftingTable.addShaped("thermal_disenchantment_dynamo", <item:thermal:dynamo_disenchantment>, [
    [<item:minecraft:air>, <item:thermal:rf_coil>, <item:minecraft:air>],
    [<item:the_vault:chromatic_steel_ingot>, <item:thermal:silver_gear>, <item:the_vault:chromatic_steel_ingot>],
    [<item:minecraft:experience_bottle>, <item:compressium:redstone_1>, <item:minecraft:experience_bottle>]
]);

craftingTable.addShaped("thermal_gourmand_dynamo", <item:thermal:dynamo_gourmand>, [
    [<item:minecraft:air>, <item:thermal:rf_coil>, <item:minecraft:air>],
    [<item:the_vault:chromatic_steel_ingot>, <item:thermal:copper_gear>, <item:the_vault:chromatic_steel_ingot>],
    [<item:thermal:tin_block>, <item:compressium:redstone_1>, <item:thermal:tin_block>]
]);

craftingTable.addShaped("thermal_stirling_dynamo", <item:thermal:dynamo_stirling>, [
    [<item:minecraft:air>, <item:thermal:rf_coil>, <item:minecraft:air>],
    [<item:the_vault:chromatic_steel_ingot>, <item:thermal:iron_gear>, <item:the_vault:chromatic_steel_ingot>],
    [<item:the_vault:vault_stone>, <item:compressium:redstone_1>, <item:the_vault:vault_stone>]
]);

craftingTable.addShaped("thermal_compression_dynamo", <item:thermal:dynamo_compression>, [
    [<item:minecraft:air>, <item:thermal:rf_coil>, <item:minecraft:air>],
    [<item:the_vault:chromatic_steel_ingot>, <item:thermal:copper_gear>, <item:the_vault:chromatic_steel_ingot>],
    [<item:thermal:bronze_block>, <item:compressium:redstone_1>, <item:thermal:bronze_block>]
]);

craftingTable.addShaped("thermal_phyto_insolator", <item:thermal:machine_insolator>, [
    [<item:minecraft:air>, <item:compressium:dirt_2>, <item:minecraft:air>],
    [<item:the_vault:chromatic_steel_ingot>, <item:thermal:machine_frame>, <item:the_vault:chromatic_steel_ingot>],
    [<item:thermal:lumium_gear>, <item:thermal:rf_coil>, <item:thermal:lumium_gear>]
]);

craftingTable.addShaped("thermal_pulverizor", <item:thermal:machine_pulverizer>, [
    [<item:minecraft:air>, <item:the_vault:chromatic_steel_ingot>, <item:minecraft:air>],
    [<item:supplementaries:flint_block>, <item:thermal:machine_frame>, <item:supplementaries:flint_block>],
    [<item:thermal:copper_gear>, <item:thermal:rf_coil>, <item:thermal:copper_gear>]
]);

craftingTable.addShaped("thermal_vacuumulator", <item:thermal:device_collector>, [
    [<tag:items:forge:storage_blocks/tin>, <item:the_vault:gem_pog>, <tag:items:forge:storage_blocks/tin>],
    [<item:minecraft:tinted_glass>, <item:thermal:machine_frame>, <item:minecraft:tinted_glass>],
    [<tag:items:forge:storage_blocks/tin>, <item:thermal:redstone_servo>, <tag:items:forge:storage_blocks/tin>]
]);

craftingTable.addShaped("thermal_igneous_extruder", <item:thermal:device_rock_gen>, [
    [<item:the_vault:chromatic_steel_ingot>, <item:thermal:constantan_gear>, <item:the_vault:chromatic_steel_ingot>],
    [<item:minecraft:tinted_glass>, <item:thermal:machine_frame>, <item:minecraft:tinted_glass>],
    [<item:the_vault:chromatic_steel_ingot>, <item:thermal:redstone_servo>, <item:the_vault:chromatic_steel_ingot>]
]);

craftingTable.addShaped("thermal_aqueous_accumulator", <item:thermal:device_water_gen>, [
    [<item:the_vault:chromatic_steel_ingot>, <item:compressium:iron_1>, <item:the_vault:chromatic_steel_ingot>],
    [<item:minecraft:tinted_glass>, <item:the_vault:infinite_water_bucket>, <item:minecraft:tinted_glass>],
    [<item:the_vault:chromatic_steel_ingot>, <item:thermal:redstone_servo>, <item:the_vault:chromatic_steel_ingot>]
]);