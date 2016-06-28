-- Make technology research enable the new BobsMods tiers
-- ===================================================================
-- Tier BobsMod 4, enabled by the "Advanced Research" research
table.insert(data.raw.technology["advanced-research"].effects,{type = "unlock-recipe", recipe = "sct-bm4-plating"})
table.insert(data.raw.technology["advanced-research"].effects,{type = "unlock-recipe", recipe = "sct-bm4-injector"})
table.insert(data.raw.technology["advanced-research"].effects,{type = "unlock-recipe", recipe = "sct-bm4-supercoils"})
table.insert(data.raw.technology["advanced-research"].effects,{type = "unlock-recipe", recipe = "sct-bm4-capbank"})

-- Update the Bob's Mods Tech labs and science packs
-- ===================================================================
-- Change the recipe for new lab.
data.raw.recipe["lab-2"].ingredients =
{
	{"sct-lab-4", 1},
	{"advanced-circuit", 10},
	{"smart-inserter", 4},
	{"copper-cable", 400}
}
		
-- Make Lab Mk2 consume more power than Quantum lab.
data.raw["lab"]["lab-2"].energy_usage = "3MW"
-- Make Lab Mk2 not have any module slots.
data.raw["lab"]["lab-2"].module_specification.module_slots = 0

-- Change the recipe for Science-Pack-4 (Dark Blue).
data.raw.recipe["science-pack-4"].ingredients =
{
	{"sct-bm4-plating", 1},
	{"sct-bm4-injector", 1},
	{"sct-bm4-supercoils", 1},
	{"sct-bm4-capbank", 1}
}

-- Make technology research enable the Tier 3 and Tier 4 intermediates
-- ===================================================================
-- BobsMods Tier 4, enabled by Advanced-Research research
table.insert(data.raw.technology["advanced-research"].effects,{type = "unlock-recipe", recipe = "sct-bm4-plating"})
table.insert(data.raw.technology["advanced-research"].effects,{type = "unlock-recipe", recipe = "sct-bm4-injector"})
table.insert(data.raw.technology["advanced-research"].effects,{type = "unlock-recipe", recipe = "sct-bm4-supercoils"})
table.insert(data.raw.technology["advanced-research"].effects,{type = "unlock-recipe", recipe = "sct-bm4-capbank"})
table.insert(data.raw.technology["advanced-research"].effects,{type = "unlock-recipe", recipe = "sct-bm4-part1"})
table.insert(data.raw.technology["advanced-research"].effects,{type = "unlock-recipe", recipe = "sct-bm4-part2"})
table.insert(data.raw.technology["advanced-research"].effects,{type = "unlock-recipe", recipe = "sct-bm4-part3"})
table.insert(data.raw.technology["advanced-research"].effects,{type = "unlock-recipe", recipe = "sct-bm4-part4"})
table.insert(data.raw.technology["advanced-research"].effects,{type = "unlock-recipe", recipe = "sct-bm4-part5"})