/* scripts made by Douwsky
for Iskall85's Vaulthunters */

// adding recipes

var logs = {
  "oak_wood": "oak",
  "birch_wood": "birch",
  "warped_hyphae": "warped",
  "jungle_wood": "jungle",
  "acacia_wood": "acacia",
  "dark_oak_wood": "dark_oak",
  "spruce_wood": "spruce",
  "crimson_hyphae": "crimson"
};

for logId, logName in logs {
  craftingTable.addShaped("storagedrawers_" + logName + "_full_drawers_1", <item:storagedrawers:${logName}_full_drawers_1>, [
    [<item:minecraft:${logId}>, <item:the_vault:driftwood>, <item:minecraft:${logId}>],
    [<item:the_vault:chromatic_iron_ingot>, <tag:items:forge:chests>, <item:the_vault:chromatic_iron_ingot>],
    [<item:minecraft:${logId}>, <item:the_vault:driftwood>, <item:minecraft:${logId}>]
  ]);

  craftingTable.addShaped("storagedrawers_" + logName + "_full_drawers_2", <item:storagedrawers:${logName}_full_drawers_2>, [
    [<item:the_vault:driftwood>, <tag:items:forge:chests>, <item:the_vault:driftwood>],
    [<item:the_vault:chromatic_iron_ingot>, <item:minecraft:${logId}>, <item:the_vault:chromatic_iron_ingot>],
    [<item:minecraft:${logId}>, <tag:items:forge:chests>, <item:minecraft:${logId}>]
  ]);

  craftingTable.addShaped("storagedrawers_" + logName + "_full_drawers_4", <item:storagedrawers:${logName}_full_drawers_4>, [
    [<tag:items:forge:chests>, <item:the_vault:driftwood>, <tag:items:forge:chests>],
    [<item:the_vault:chromatic_iron_ingot>, <item:minecraft:${logId}>, <item:the_vault:chromatic_iron_ingot>],
    [<tag:items:forge:chests>, <item:the_vault:driftwood>, <tag:items:forge:chests>]
  ]);

    craftingTable.addShaped("storagedrawers_" + logName + "_half_drawers_1", <item:storagedrawers:${logName}_half_drawers_1>, [
    [<item:minecraft:${logName}_slab>, <item:minecraft:${logName}_slab>, <item:minecraft:${logName}_slab>],
    [<item:the_vault:chromatic_iron_ingot>, <tag:items:forge:chests>, <item:the_vault:chromatic_iron_ingot>],
    [<item:minecraft:${logName}_slab>, <item:minecraft:${logName}_slab>, <item:minecraft:${logName}_slab>]
  ]);

  craftingTable.addShaped("storagedrawers_" + logName + "_half_drawers_2", <item:storagedrawers:${logName}_half_drawers_2>, [
    [<item:minecraft:${logName}_slab>, <tag:items:forge:chests>, <item:minecraft:${logName}_slab>],
    [<item:the_vault:chromatic_iron_ingot>, <item:minecraft:${logName}_slab>, <item:the_vault:chromatic_iron_ingot>],
    [<item:minecraft:${logName}_slab>, <tag:items:forge:chests>, <item:minecraft:${logName}_slab>]
  ]);

  craftingTable.addShaped("storagedrawers_" + logName + "_half_drawers_4", <item:storagedrawers:${logName}_half_drawers_4>, [
    [<tag:items:forge:chests>, <item:minecraft:${logName}_slab>, <tag:items:forge:chests>],
    [<item:the_vault:chromatic_iron_ingot>, <item:minecraft:${logName}_slab>, <item:the_vault:chromatic_iron_ingot>],
    [<tag:items:forge:chests>, <item:minecraft:${logName}_slab>, <tag:items:forge:chests>]
  ]);

  craftingTable.addShaped("framed" + logName + "_storage_drawer", <item:framedcompactdrawers:framed_full_one>, [
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>],
    [<item:minecraft:stick>, <item:storagedrawers:${logName}_full_drawers_1>, <item:minecraft:stick>],
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>]
  ]);

    craftingTable.addShaped("framed" + logName + "_storage_drawer_2", <item:framedcompactdrawers:framed_full_two>, [
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>],
    [<item:minecraft:stick>, <item:storagedrawers:${logName}_full_drawers_2>, <item:minecraft:stick>],
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>]
  ]);

    craftingTable.addShaped("framed" + logName + "_storage_drawer_4", <item:framedcompactdrawers:framed_full_four>, [
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>],
    [<item:minecraft:stick>, <item:storagedrawers:${logName}_full_drawers_4>, <item:minecraft:stick>],
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>]
  ]);

    craftingTable.addShaped("framed" + logName + "_half_drawer", <item:framedcompactdrawers:framed_half_one>, [
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>],
    [<item:minecraft:stick>, <item:storagedrawers:${logName}_half_drawers_1>, <item:minecraft:stick>],
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>]
  ]);

    craftingTable.addShaped("framed" + logName + "_half_drawer_2", <item:framedcompactdrawers:framed_half_two>, [
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>],
    [<item:minecraft:stick>, <item:storagedrawers:${logName}_half_drawers_2>, <item:minecraft:stick>],
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>]
  ]);

    craftingTable.addShaped("framed" + logName + "_half_drawer_4", <item:framedcompactdrawers:framed_half_four>, [
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>],
    [<item:minecraft:stick>, <item:storagedrawers:${logName}_half_drawers_4>, <item:minecraft:stick>],
    [<item:minecraft:stick>, <item:minecraft:stick>, <item:minecraft:stick>]
  ]);
}

craftingTable.addShaped("storagedrawers_controller", <item:storagedrawers:controller>, [
    [<item:the_vault:polished_vault_stone>, <item:the_vault:gem_pog>, <item:the_vault:polished_vault_stone>],
    [<item:the_vault:chromatic_steel_ingot>, <tag:items:storagedrawers:drawers>, <item:the_vault:chromatic_steel_ingot>],
    [<item:the_vault:polished_vault_stone>, <item:the_vault:extraordinary_larimar>, <item:the_vault:polished_vault_stone>]
]);

craftingTable.addShaped("storagedrawers_controller_slave", <item:storagedrawers:controller_slave>, [
    [<item:the_vault:polished_vault_stone>, <item:the_vault:chromatic_steel_ingot>, <item:the_vault:polished_vault_stone>],
    [<item:the_vault:chromatic_steel_ingot>, <tag:items:storagedrawers:drawers>, <item:the_vault:chromatic_steel_ingot>],
    [<item:the_vault:polished_vault_stone>, <item:the_vault:vault_diamond>, <item:the_vault:polished_vault_stone>]
]);

craftingTable.addShaped("storagedrawers_compacting_drawers_3", <item:storagedrawers:compacting_drawers_3>, [
    [<item:the_vault:polished_vault_stone>, <item:the_vault:gem_pog>, <item:the_vault:polished_vault_stone>],
    [<item:the_vault:chromatic_steel_ingot>, <tag:items:storagedrawers:drawers>, <item:the_vault:chromatic_steel_ingot>],
    [<item:the_vault:polished_vault_stone>, <item:the_vault:extraordinary_larimar>, <item:the_vault:polished_vault_stone>]
]);

craftingTable.addShaped("storagedrawers_key", <item:storagedrawers:drawer_key>, [
    [<item:the_vault:vault_diamond>, <item:the_vault:chromatic_steel_ingot>, <item:minecraft:air>],
    [<item:storagedrawers:upgrade_template>, <tag:items:storagedrawers:drawers>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:the_vault:vault_diamond>, <item:minecraft:air>]
]);

craftingTable.addShaped("storagedrawers_upgrade_template", <item:storagedrawers:upgrade_template> *8, [
    [<item:the_vault:chromatic_steel_ingot>, <item:the_vault:perfect_larimar>, <item:the_vault:chromatic_steel_ingot>],
    [<item:the_vault:perfect_larimar>, <tag:items:storagedrawers:drawers>, <item:the_vault:perfect_larimar>],
    [<item:the_vault:chromatic_steel_ingot>, <item:the_vault:perfect_larimar>, <item:the_vault:chromatic_steel_ingot>]
]);

craftingTable.addShaped("storagedrawers_iron_storage_upgrade", <item:storagedrawers:iron_storage_upgrade>, [
    [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:chromatic_iron_ingot>, <item:the_vault:chromatic_iron_ingot>],
    [<item:compressium:iron_1>, <item:storagedrawers:upgrade_template>, <item:compressium:iron_1>],
    [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:chromatic_iron_ingot>, <item:the_vault:chromatic_iron_ingot>]
]);

craftingTable.addShaped("storagedrawers_gold_storage_upgrade", <item:storagedrawers:gold_storage_upgrade>, [
    [<item:the_vault:chromatic_steel_ingot>, <item:the_vault:chromatic_steel_ingot>, <item:the_vault:chromatic_steel_ingot>],
    [<item:compressium:gold_1>, <item:storagedrawers:upgrade_template>, <item:compressium:gold_1>],
    [<item:the_vault:chromatic_steel_ingot>, <item:the_vault:chromatic_steel_ingot>, <item:the_vault:chromatic_steel_ingot>]
]);

craftingTable.addShaped("storagedrawers_diamond_storage_upgrade", <item:storagedrawers:diamond_storage_upgrade>, [
    [<item:the_vault:vault_diamond>, <item:the_vault:vault_diamond>, <item:the_vault:vault_diamond>],
    [<item:compressium:diamond_1>, <item:storagedrawers:upgrade_template>, <item:compressium:diamond_1>],
    [<item:the_vault:vault_diamond>, <item:the_vault:vault_diamond>, <item:the_vault:vault_diamond>]
]);

craftingTable.addShaped("storagedrawers_emerald_storage_upgrade", <item:storagedrawers:emerald_storage_upgrade>, [
    [<item:the_vault:black_chromatic_steel_ingot>, <item:the_vault:black_chromatic_steel_ingot>, <item:the_vault:black_chromatic_steel_ingot>],
    [<item:compressium:emerald_2>, <item:storagedrawers:upgrade_template>, <item:compressium:emerald_2>],
    [<item:the_vault:black_chromatic_steel_ingot>, <item:the_vault:black_chromatic_steel_ingot>, <item:the_vault:black_chromatic_steel_ingot>]
]);

craftingTable.addShaped("storagedrawers_void_upgrade", <item:storagedrawers:void_upgrade>, [
    [<item:minecraft:air>, <item:the_vault:gem_echo>, <item:minecraft:air>],
    [<item:the_vault:void_liquid_bucket>, <item:storagedrawers:upgrade_template>, <item:the_vault:void_liquid_bucket>],
    [<item:minecraft:air>, <item:the_vault:black_chromatic_steel_ingot>, <item:minecraft:air>]
]);