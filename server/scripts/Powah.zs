/* scripts made by Douwsky
for Iskall85's Vaulthunters */

// adding recipes

<recipetype:powah:energizing>.addJsonRecipe("crystal_nitro", { //
  "ingredients": [
	{"tag": "forge:nether_stars"},
	{"item": "compressium:redstone_2"},
	{"item": "compressium:redstone_2"},
	{"item": "powah:blazing_crystal_block"},
    {"item": "the_vault:black_chromatic_steel_ingot"},
  	{"item": "the_vault:gem_echo"}
  ],
  "energy": 85000000,
  "result": {
	"item": "powah:crystal_nitro",
	"count": 3
  }
});

<recipetype:powah:energizing>.addJsonRecipe("crystal_spirited", { //
  "ingredients": [
	{"tag": "forge:storage_blocks/emerald"},
    {"item": "the_vault:chromatic_steel_ingot"},
   	{"item": "the_vault:extraordinary_larimar"}
  ],
  "energy": 5000000,
  "result": {
	"item": "powah:crystal_spirited",
	"count": 1
  }
});

<recipetype:powah:energizing>.addJsonRecipe("crystal_niotic", { //
  "ingredients": [
	{"tag": "forge:storage_blocks/diamond"},
    {"item": "the_vault:chromatic_steel_ingot"},
   	{"item": "the_vault:extraordinary_larimar"}
  ],
  "energy": 1200000,
  "result": {
	"item": "powah:crystal_niotic",
	"count": 1
  }
});

<recipetype:powah:energizing>.addJsonRecipe("crystal_blazing", { //
  "ingredients": [
	{"item": "minecraft:blaze_powder"},
	{"item": "minecraft:blaze_powder"},
	{"item": "minecraft:blaze_powder"},
	{"item": "minecraft:blaze_powder"},
   	{"item": "the_vault:extraordinary_larimar"}
  ],
  "energy": 270000,
  "result": {
	"item": "powah:crystal_blazing",
	"count": 1
  }
});

<recipetype:powah:energizing>.addJsonRecipe("crystal_blazing2", { //
  "ingredients": [
	{"item": "minecraft:blaze_rod"},
   	{"item": "the_vault:extraordinary_larimar"}
  ],
  "energy": 480000,
  "result": {
	"item": "powah:crystal_blazing",
	"count": 1
  }
});

<recipetype:powah:energizing>.addJsonRecipe("steel_energized", { //
  "ingredients": [
	{"item": "the_vault:chromatic_steel_ingot"},
	{"item": "the_vault:perfect_larimar"},
    {"item": "the_vault:vault_essence"},
  	{"item": "the_vault:chromatic_steel_ingot"}
  ],
  "energy": 40000,
  "result": {
	"item": "powah:steel_energized",
	"count": 4
  }
});

<recipetype:powah:energizing>.addJsonRecipe("steel_energized_block", { //
  "ingredients": [
	{"item": "the_vault:chromatic_steel_block"},
	{"item": "the_vault:chromatic_steel_block"},
  	{"item": "the_vault:extraordinary_larimar"}
  ],
  "energy": 440000,
  "result": {
	"item": "powah:energized_steel_block",
	"count": 4
  }
});

<recipetype:powah:energizing>.addJsonRecipe("ender_core", { //
  "ingredients": [
	{"item": "quark:ender_watcher"},
	{"item": "powah:dielectric_casing"},
	{"item": "powah:capacitor_basic_tiny"},
  	{"item": "the_vault:extraordinary_larimar"}
  ],
  "energy": 230000,
  "result": {
	"item": "powah:ender_core",
	"count": 1
  }
});

<recipetype:powah:energizing>.addJsonRecipe("charged_snowball", { //
  "ingredients": [
	{"item": "minecraft:snowball"},
  	{"item": "the_vault:perfect_larimar"}
  ],
  "energy": 2300000,
  "result": {
	"item": "powah:charged_snowball",
	"count": 1
  }
});

<recipetype:powah:energizing>.addJsonRecipe("dry_ice", { //
  "ingredients": [
	{"item": "minecraft:blue_ice"},
	{"item": "minecraft:blue_ice"},
	{"item": "minecraft:blue_ice"},
    {"item": "the_vault:vault_essence"},
  	{"item": "the_vault:perfect_larimar"}
  ],
  "energy": 24300,
  "result": {
	"item": "powah:dry_ice",
	"count": 1
  }
});

craftingTable.addShapeless("powah_dielectric_paste", <item:powah:dielectric_paste> * 4, [
	<item:the_vault:gem_larimar>, <item:the_vault:carbon>,
	<item:the_vault:chromatic_iron_ingot>, <item:the_vault:magic_silk>
]);

craftingTable.addShaped("powah_binding_card_dim", <item:powah:binding_card_dim>, [
	[<item:powah:ender_gate_nitro>, <item:the_vault:vault_diamond_block>, <item:powah:ender_gate_nitro>],
	[<item:powah:player_transmitter_nitro>, <item:the_vault:omega_pog>, <item:powah:player_transmitter_nitro>],
	[<item:powah:ender_gate_nitro>, <item:the_vault:vault_diamond_block>, <item:powah:ender_gate_nitro>]
]);

craftingTable.addShaped("powah_capacitor_basic", <item:powah:capacitor_basic>, [
	[<item:the_vault:magic_silk>, <item:the_vault:gem_larimar>, <item:powah:dielectric_paste>],
	[<item:the_vault:gem_larimar>, <item:the_vault:chromatic_iron_ingot>, <item:the_vault:gem_larimar>],
	[<item:powah:dielectric_paste>, <item:the_vault:gem_larimar>, <item:the_vault:magic_silk>]
]);

craftingTable.addShaped("powah_dielectric_rod", <item:powah:dielectric_rod> *2, [
	[<item:powah:dielectric_paste>, <item:the_vault:gem_larimar>, <item:powah:dielectric_paste>],
	[<item:powah:dielectric_paste>, <item:the_vault:chromatic_iron_ingot>, <item:powah:dielectric_paste>],
	[<item:powah:dielectric_paste>, <item:the_vault:gem_larimar>, <item:powah:dielectric_paste>]
]);

craftingTable.addShaped("powah_dielectric_rod_horizontal", <item:powah:dielectric_rod_horizontal> *2, [
	[<item:powah:dielectric_paste>, <item:powah:dielectric_paste>, <item:powah:dielectric_paste>],
	[<item:the_vault:gem_larimar>, <item:the_vault:chromatic_iron_ingot>, <item:the_vault:gem_larimar>],
	[<item:powah:dielectric_paste>, <item:powah:dielectric_paste>, <item:powah:dielectric_paste>]
]);

craftingTable.addShaped("powah_dielectric_casing", <item:powah:dielectric_casing>, [
	[<tag:items:forge:storage_blocks/iron>, <item:powah:dielectric_rod_horizontal>, <tag:items:forge:storage_blocks/iron>],
	[<item:powah:dielectric_rod>, <item:the_vault:chromatic_steel_ingot>, <item:powah:dielectric_rod>],
	[<tag:items:forge:storage_blocks/iron>, <item:powah:dielectric_rod_horizontal>, <tag:items:forge:storage_blocks/iron>]
]);

craftingTable.addShaped("powah_solar_panel_starter", <item:powah:solar_panel_starter>, [
	[<item:powah:photoelectric_pane>, <item:the_vault:chromatic_iron_ingot>, <item:powah:photoelectric_pane>],
	[<item:powah:capacitor_basic_tiny>, <item:powah:dielectric_casing>, <item:powah:capacitor_basic_tiny>],
	[<item:powah:dielectric_paste>, <item:powah:dielectric_paste>, <item:powah:dielectric_paste>]
]);

craftingTable.addShaped("powah_solar_panel_basic", <item:powah:solar_panel_basic>, [
	[<item:powah:solar_panel_starter>, <item:the_vault:chromatic_iron_ingot>, <item:powah:solar_panel_starter>],
	[<item:powah:capacitor_basic>, <item:powah:dielectric_casing>, <item:powah:capacitor_basic>],
	[<tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>, <tag:items:forge:ingots/iron>]
]);

craftingTable.addShaped("powah_solar_panel_hardened", <item:powah:solar_panel_hardened>, [
	[<item:powah:solar_panel_basic>, <item:the_vault:chromatic_iron_ingot>, <item:powah:solar_panel_basic>],
	[<item:powah:capacitor_hardened>, <item:powah:dielectric_casing>, <item:powah:capacitor_hardened>],
	[<item:powah:steel_energized>, <item:powah:steel_energized>, <item:powah:steel_energized>]
]);

craftingTable.addShaped("powah_solar_panel_blazing", <item:powah:solar_panel_blazing>, [
	[<item:powah:solar_panel_hardened>, <item:the_vault:chromatic_iron_ingot>, <item:powah:solar_panel_hardened>],
	[<item:powah:capacitor_blazing>, <item:powah:dielectric_casing>, <item:powah:capacitor_blazing>],
	[<item:powah:crystal_blazing>, <item:powah:crystal_blazing>, <item:powah:crystal_blazing>]
]);

craftingTable.addShaped("powah_solar_panel_niotic", <item:powah:solar_panel_niotic>, [
	[<item:powah:solar_panel_blazing>, <item:the_vault:black_chromatic_steel_ingot>, <item:powah:solar_panel_blazing>],
	[<item:powah:capacitor_niotic>, <item:powah:dielectric_casing>, <item:powah:capacitor_niotic>],
	[<item:powah:crystal_niotic>, <item:powah:crystal_niotic>, <item:powah:crystal_niotic>]
]);

craftingTable.addShaped("powah_solar_panel_spirited", <item:powah:solar_panel_spirited>, [
	[<item:powah:solar_panel_niotic>, <item:the_vault:black_chromatic_steel_ingot>, <item:powah:solar_panel_niotic>],
	[<item:powah:capacitor_spirited>, <item:powah:dielectric_casing>, <item:powah:capacitor_spirited>],
	[<item:powah:crystal_spirited>, <item:powah:crystal_spirited>, <item:powah:crystal_spirited>]
]);

craftingTable.addShaped("powah_solar_panel_nitro", <item:powah:solar_panel_nitro>, [
	[<item:powah:solar_panel_spirited>, <item:the_vault:black_chromatic_steel_ingot>, <item:powah:solar_panel_spirited>],
	[<item:powah:capacitor_nitro>, <item:powah:dielectric_casing>, <item:powah:capacitor_nitro>],
	[<item:powah:crystal_nitro>, <item:powah:crystal_nitro>, <item:powah:crystal_nitro>]
]);

craftingTable.addShapeless("powah_tiny_basic_capacitor", <item:powah:capacitor_basic_tiny> * 2, [
	<item:powah:capacitor_basic>, <item:the_vault:vault_essence>, <item:the_vault:gem_larimar>
]);

craftingTable.addShapeless("powah_large_basic_capacitor", <item:powah:capacitor_basic_large>, [
	<item:powah:capacitor_basic>, <item:powah:capacitor_basic>, <item:the_vault:vault_essence>, <item:the_vault:magic_silk_block>
]);

craftingTable.addShaped("powah_thermoelectric_plate", <item:powah:thermoelectric_plate>, [
	[<item:quark:blaze_lantern>, <item:the_vault:chromatic_iron_ingot>, <item:quark:blaze_lantern>],
	[<item:the_vault:chromatic_iron_ingot>, <item:powah:capacitor_basic_tiny>, <item:the_vault:chromatic_iron_ingot>],
	[<item:quark:blaze_lantern>, <item:the_vault:chromatic_iron_ingot>, <item:quark:blaze_lantern>]
]);

craftingTable.addShaped("powah_energizing_orb", <item:powah:energizing_orb>, [
	[<item:minecraft:tinted_glass>, <item:minecraft:tinted_glass>, <item:minecraft:tinted_glass>],
	[<item:minecraft:tinted_glass>, <item:powah:dielectric_casing>, <item:minecraft:tinted_glass>],
	[<item:powah:dielectric_rod_horizontal>, <item:powah:dielectric_rod_horizontal>, <item:powah:dielectric_rod_horizontal>]
]);

craftingTable.addShaped("powah_photoelectric_pane", <item:powah:photoelectric_pane>, [
	[<item:the_vault:chromatic_steel_block>, <item:powah:dielectric_paste>, <item:the_vault:chromatic_steel_block>],
	[<item:powah:dielectric_paste>, <item:minecraft:tinted_glass>, <item:powah:dielectric_paste>],
	[<item:the_vault:chromatic_steel_block>, <item:powah:dielectric_paste>, <item:the_vault:chromatic_steel_block>]
]);

craftingTable.addShaped("powah_capacitor_blazing", <item:powah:capacitor_blazing>, [
	[<item:powah:dielectric_paste>, <item:powah:crystal_blazing>, <item:powah:dielectric_paste>],
	[<item:powah:crystal_blazing>, <item:powah:capacitor_hardened>, <item:powah:crystal_blazing>],
	[<item:powah:dielectric_paste>, <item:powah:crystal_blazing>, <item:powah:dielectric_paste>]
]);

craftingTable.addShaped("powah_capacitor_niotic", <item:powah:capacitor_niotic>, [
	[<item:powah:dielectric_paste>, <item:powah:crystal_niotic>, <item:powah:dielectric_paste>],
	[<item:powah:crystal_niotic>, <item:powah:capacitor_blazing>, <item:powah:crystal_niotic>],
	[<item:powah:dielectric_paste>, <item:powah:crystal_niotic>, <item:powah:dielectric_paste>]
]);

craftingTable.addShaped("powah_capacitor_spirited", <item:powah:capacitor_spirited>, [
	[<item:powah:dielectric_paste>, <item:powah:crystal_spirited>, <item:powah:dielectric_paste>],
	[<item:powah:crystal_spirited>, <item:powah:capacitor_niotic>, <item:powah:crystal_spirited>],
	[<item:powah:dielectric_paste>, <item:powah:crystal_spirited>, <item:powah:dielectric_paste>]
]);

craftingTable.addShaped("powah_capacitor_nitro", <item:powah:capacitor_nitro>, [
	[<item:powah:dielectric_paste>, <item:powah:crystal_nitro>, <item:powah:dielectric_paste>],
	[<item:powah:crystal_nitro>, <item:powah:capacitor_spirited>, <item:powah:crystal_nitro>],
	[<item:powah:dielectric_paste>, <item:powah:crystal_nitro>, <item:powah:dielectric_paste>]
]);

craftingTable.addShapeless("powah_block_to_ingots", <item:powah:steel_energized> *9, [
	<item:powah:energized_steel_block>
]);