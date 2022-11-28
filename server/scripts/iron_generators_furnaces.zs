/* scripts made by Douwsky
for Iskall85's Vaulthunters */

// adding recipes

craftingTable.addShaped("irongenerators_stone_generator", <item:irongenerators:stone_generator>, [
    [<item:the_vault:vault_stone>, <item:the_vault:gem_larimar>, <item:the_vault:vault_stone>],
    [<item:the_vault:gem_larimar>, <tag:items:forge:furnaces>, <item:the_vault:gem_larimar>],
    [<item:the_vault:vault_stone>, <item:the_vault:gem_larimar>, <item:the_vault:vault_stone>]
]);

craftingTable.addShaped("irongenerators_irongenerator", <item:irongenerators:iron_generator>, [
    [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:chromatic_iron_ingot>, <item:the_vault:chromatic_iron_ingot>],
    [<item:the_vault:chromatic_iron_ingot>, <item:irongenerators:stone_generator>, <item:the_vault:chromatic_iron_ingot>],
    [<item:the_vault:chromatic_iron_ingot>, <item:the_vault:chromatic_iron_ingot>, <item:the_vault:chromatic_iron_ingot>]
]);

craftingTable.addShaped("irongenerators_copper_generator", <item:irongenerators:copper_generator>, [
    [<item:the_vault:chromatic_steel_ingot>, <tag:items:forge:storage_blocks/copper>, <item:the_vault:chromatic_steel_ingot>],
    [<tag:items:forge:storage_blocks/copper>, <item:irongenerators:stone_generator>, <tag:items:forge:storage_blocks/copper>],
    [<item:the_vault:chromatic_steel_ingot>, <tag:items:forge:storage_blocks/copper>, <item:the_vault:chromatic_steel_ingot>]
]);

craftingTable.addShaped("irongenerators_gold_generator", <item:irongenerators:gold_generator>, [
    [<item:the_vault:chromatic_steel_ingot>, <item:compressium:gold_1>, <item:the_vault:chromatic_steel_ingot>],
    [<item:compressium:gold_1>, <item:irongenerators:stone_generator>, <item:compressium:gold_1>],
    [<item:the_vault:chromatic_steel_ingot>, <item:compressium:gold_1>, <item:the_vault:chromatic_steel_ingot>]
]);

craftingTable.addShaped("irongenerators_diamond_generator", <item:irongenerators:diamond_generator>, [
    [<item:the_vault:chromatic_steel_ingot>, <item:minecraft:diamond_block>, <item:the_vault:chromatic_steel_ingot>],
    [<item:minecraft:diamond_block>, <item:irongenerators:stone_generator>, <item:minecraft:diamond_block>],
    [<item:the_vault:chromatic_steel_ingot>, <item:the_vault:vault_diamond_block>, <item:the_vault:chromatic_steel_ingot>]
]);

craftingTable.addShaped("irongenerators_netherite_generator", <item:irongenerators:netherite_generator>, [
    [<item:minecraft:netherite_block>, <item:irongenerators:diamond_generator>, <item:minecraft:netherite_block>],
    [<item:irongenerators:diamond_generator>, <item:irongenerators:stone_generator>, <item:irongenerators:diamond_generator>],
    [<item:minecraft:netherite_block>, <item:the_vault:black_chromatic_steel_block>, <item:minecraft:netherite_block>]
]);

craftingTable.addShaped("ironfurnaces_heater", <item:ironfurnaces:heater>, [
    [<item:the_vault:vault_stone>, <item:minecraft:comparator>, <item:the_vault:vault_stone>],
    [<item:the_vault:vault_stone>, <item:compressium:redstone_1>, <item:the_vault:vault_stone>],
    [<item:the_vault:vault_stone>, <tag:items:forge:furnaces>, <item:the_vault:vault_stone>]
]);

craftingTable.addShaped("ironfurnaces_item_heater", <item:ironfurnaces:item_heater>, [
    [<item:the_vault:vault_stone>, <item:the_vault:chromatic_iron_ingot>, <item:the_vault:vault_stone>],
    [<item:compressium:redstone_1>, <item:minecraft:comparator>, <item:compressium:redstone_1>],
    [<item:the_vault:vault_stone>, <item:the_vault:vault_diamond>, <item:the_vault:vault_stone>]
]);

craftingTable.addShaped("ironfurnaces_item_copy", <item:ironfurnaces:item_copy>, [
    [<item:the_vault:vault_stone>, <item:the_vault:magic_silk>, <item:the_vault:vault_stone>],
    [<item:the_vault:magic_silk>, <tag:items:forge:furnaces>, <item:the_vault:magic_silk>],
    [<item:the_vault:vault_stone>, <item:the_vault:magic_silk>, <item:the_vault:vault_stone>]
]);

craftingTable.addShaped("ironfurnaces_item_linker", <item:ironfurnaces:item_linker>, [
    [<item:the_vault:black_chromatic_steel_ingot>, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:ironfurnaces:rainbow_core>, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, <item:the_vault:black_chromatic_steel_ingot>]
]);