data:extend({
	
	-- Create new intermediary products unique to science pack creation.
	-- ===================================================================

	{
		type = "item-group",
		name = "sct-science",
		order = "aaa-a",
		inventory_order = "c-a",
		icon = "__base__/graphics/item-group/fluids.png",
	},

	{
		type = "item-subgroup",
		name = "sct-sciencestuff",
		group = "sct-science",
		order = "a-a",
	},
	
	{
		type = "item-subgroup",
		name = "sct-labs",
		group = "sct-science",
		order = "a-a",
	},
	
	{
		type = "item-subgroup",
		name = "sct-byproducts",
		group = "sct-science",
		order = "b-a",
	},
	
	{
		type = "item-subgroup",
		name = "sct-sciencepack-1",
		group = "sct-science",
		order = "c-a",
	},
	
	{
		type = "item-subgroup",
		name = "sct-sciencepack-2",
		group = "sct-science",
		order = "d-a",
	},
	
	{
		type = "item-subgroup",
		name = "sct-sciencepack-3",
		group = "sct-science",
		order = "e-a",
	},
	
	{
		type = "item-subgroup",
		name = "sct-sciencepack-mil",
		group = "sct-science",
		order = "f-a",
	},
	
	{
		type = "item-subgroup",
		name = "sct-sciencepack-prod",
		group = "sct-science",
		order = "g-a",
	},
	
	{
		type = "item-subgroup",
		name = "sct-sciencepack-hightech",
		group = "sct-science",
		order = "h-a",
	},
	
	-- Junk Byproducts
	-- =============================
	{
		type = "item",
		name = "sct-waste-ironcopper",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-waste-ironcopper.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-byproducts",
		order = "a[mixedewaste]",
		stack_size = 50
	},
	{
		type = "item",
		name = "sct-waste-copperonly",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-waste-copperonly.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-byproducts",
		order = "a[copperwaste]",
		stack_size = 50
	},
	
	-- Setup the recipe for smelting the junk byproducts back into useful stuff.
	-- ===================================================================

	{
		type = "recipe",
		name = "sct-waste-processing-mixed",
		energy_required = 0.5,
		enabled = true,
		category = "crafting-with-fluid",
		ingredients = {{"sct-waste-ironcopper", 2}},
		icon = "__ScienceCostTweaker__/graphics/icons/sct-waste-ironcopper.png",
		subgroup = "sct-byproducts",
		order = "a[waste-process-basic]",
		results =
		{
			{
				name = "iron-ore",
				amount = 1
			},
			{
				name = "copper-ore",
				amount = 1
			}
		}
	},

	{
		type = "recipe",
		name = "sct-waste-processing-copper",
		energy_required = 0.5,
		enabled = true,
		category = "crafting-with-fluid",
		ingredients = {{"sct-waste-copperonly", 2}},
		icon = "__ScienceCostTweaker__/graphics/icons/sct-waste-copperonly.png",
		subgroup = "sct-byproducts",
		order = "a[waste-process-copper]",
		results =
		{
			{
				name = "copper-ore",
				amount = 2
			}
		}
	},


	-- Tier 1 Intermediary products.
	-- =============================
	{
		type = "item",
		name = "sct-t1-ironcore",
		icon = "__ScienceCostTweaker__/graphics/icons/iron-core.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-1",
		order = "b[t1-ironcore]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t1-magnet-coils",
		icon = "__ScienceCostTweaker__/graphics/icons/magnet-coils.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-1",
		order = "b[t1-magnet-coils]",
		stack_size = 200
	},

	-- Tier 2 Intermediary products.
	-- =============================
	{
		type = "item",
		name = "sct-t2-reaction-nodes",
		icon = "__ScienceCostTweaker__/graphics/icons/reaction-nodes.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-2",
		order = "b[t2-reaction-nodes]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t2-instruments",
		icon = "__ScienceCostTweaker__/graphics/icons/instruments.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-2",
		order = "b[t2-instruments]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t2-microcircuits",
		icon = "__ScienceCostTweaker__/graphics/icons/microcircuits.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-2",
		order = "b[t2-microcircuits]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t2-micro-wafer",
		icon = "__ScienceCostTweaker__/graphics/icons/micro-wafer.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-2",
		order = "b[t2-micro-wafer]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t2-wafer-stamp",
		icon = "__ScienceCostTweaker__/graphics/icons/wafer-stamp.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-2",
		order = "b[t2-wafer-stamp]",
		stack_size = 200
	},

	-- Tier 3 Intermediary products.
	-- =============================
	{
		type = "item",
		name = "sct-t3-flash-fuel",
		icon = "__ScienceCostTweaker__/graphics/icons/flash-fuel.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-3",
		order = "b[a]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t3-laser-foci",
		icon = "__ScienceCostTweaker__/graphics/icons/laser-foci.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-3",
		order = "b[b]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t3-laser-emitter",
		icon = "__ScienceCostTweaker__/graphics/icons/laser-emitter.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-3",
		order = "b[c]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t3-femto-lasers",
		icon = "__ScienceCostTweaker__/graphics/icons/femto-lasers.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-3",
		order = "b[d]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t3-atomic-sensors",
		icon = "__ScienceCostTweaker__/graphics/icons/atomic-sensors.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-3",
		order = "b[e]",
		stack_size = 200
	},

	-- Military Intermediary products.
	-- =============================
	{
		type = "item",
		name = "sct-mil-subplating",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-mil-subplating.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-mil",
		order = "b[a]",
		stack_size = 200
	},
	{
		type = "item",
		name = "sct-mil-plating",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-mil-plating.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-mil",
		order = "b[b]",
		stack_size = 200
	},
	{
		type = "item",
		name = "sct-mil-circuit1",
		icon = "__ScienceCostTweaker__/graphics/icons/military_analysis_1.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-mil",
		order = "b[c]",
		stack_size = 200
	},
	{
		type = "item",
		name = "sct-mil-circuit2",
		icon = "__ScienceCostTweaker__/graphics/icons/military_analysis_2.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-mil",
		order = "b[d]",
		stack_size = 200
	},
	{
		type = "item",
		name = "sct-mil-circuit3",
		icon = "__ScienceCostTweaker__/graphics/icons/military_analysis_3.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-mil",
		order = "b[e]",
		stack_size = 200
	},

	-- Production Intermediary products.
	-- =============================
	{
		type = "item",
		name = "sct-prod-biosilicate",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-prod-biosilicate.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-prod",
		order = "b[biosilicate]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-prod-baked-biopaste",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-prod-baked-biopaste.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-prod",
		order = "b[biopaste]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-prod-bioprocessor",
		icon = "__ScienceCostTweaker__/graphics/icons/bioprocessor.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-prod",
		order = "b[bioprocessor]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-prod-overclocker",
		icon = "__ScienceCostTweaker__/graphics/icons/overclocker.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-prod",
		order = "b[overclocker]",
		stack_size = 200
	},

	-- High-Tech Intermediary products.
	-- =============================
	
	-- Energy Bank
	{
		type = "item",
		name = "sct-htech-capbank",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-htech-capbank.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "b[capbank]",
		stack_size = 200
	},
	
	-- Particle Injector
	{
		type = "item",
		name = "sct-htech-injector",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-htech-injector.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "b[injector]",
		stack_size = 200
	},

	-- Thermal Store
	{
		type = "item",
		name = "sct-htech-thermalstore",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-htech-thermalstore.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "b[thermalstore]",
		stack_size = 200
	},

	-- Heated Thermal Store
	{
		type = "item",
		name = "sct-htech-thermalstore-heated",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-htech-thermalstore-heated.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "b[thermalstore-heated]",
		stack_size = 200
	},

	-- Mechanical Random Number Analyzer
	{
		type = "item",
		name = "sct-htech-random",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-htech-random.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "b[random]",
		stack_size = 200
	},

	--[[
	-- Quantum Plating
	{
		type = "item",
		name = "sct-bm4-plating",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part2a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-plating]",
		stack_size = 200
	},

	-- Charged Coils
	{
		type = "item",
		name = "sct-bm4-part3b",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part1c.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-part3b]",
		stack_size = 200
	},

	-- Chemical Temper
	{
		type = "item",
		name = "sct-bm4-part3c",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part2a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-part3c]",
		stack_size = 200
	},

	-- Virtual Particle Emitter
	{
		type = "item",
		name = "sct-bm4-part3d",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part2b.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-part3d]",
		stack_size = 200
	},

	-- Capacitor Stack
	{
		type = "item",
		name = "sct-bm4-part4a",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part2a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-part4a]",
		stack_size = 200
	},

	-- Thermal Shield
	{
		type = "item",
		name = "sct-bm4-part4b",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part2a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-part4b]",
		stack_size = 200
	},

	-- Nanofusion Core
	{
		type = "item",
		name = "sct-bm4-part4c",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part2a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-part4c]",
		stack_size = 200
	},

	-- Virtual Particle Shield
	{
		type = "item",
		name = "sct-bm4-part4d",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part2a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-part4d]",
		stack_size = 200
	},
	]]--

})

-- Make technology research enable the Tier 3 and Tier 4 intermediates
-- ===================================================================
-- Tier 3 enabled by Advanced Electronics
table.insert(data.raw.technology["advanced-electronics"].effects,{type = "unlock-recipe", recipe = "sct-t3-flash-fuel"})
table.insert(data.raw.technology["advanced-electronics"].effects,{type = "unlock-recipe", recipe = "sct-t3-laser-foci"})
table.insert(data.raw.technology["advanced-electronics"].effects,{type = "unlock-recipe", recipe = "sct-t3-laser-emitter"})
table.insert(data.raw.technology["advanced-electronics"].effects,{type = "unlock-recipe", recipe = "sct-t3-femto-lasers"})
table.insert(data.raw.technology["advanced-electronics"].effects,{type = "unlock-recipe", recipe = "sct-t3-atomic-sensors"})

-- Military enabled by Military 2
table.insert(data.raw.technology["military-2"].effects,{type = "unlock-recipe", recipe = "sct-mil-subplating"})
table.insert(data.raw.technology["military-2"].effects,{type = "unlock-recipe", recipe = "sct-mil-plating"})
table.insert(data.raw.technology["military-2"].effects,{type = "unlock-recipe", recipe = "sct-mil-circuit1"})
table.insert(data.raw.technology["military-2"].effects,{type = "unlock-recipe", recipe = "sct-mil-circuit2"})
table.insert(data.raw.technology["military-2"].effects,{type = "unlock-recipe", recipe = "sct-mil-circuit3"})

-- Production Tech enabled by Advanced Material Processing 2
table.insert(data.raw.technology["advanced-material-processing-2"].effects,{type = "unlock-recipe", recipe = "sct-prod-biosilicate"})
table.insert(data.raw.technology["advanced-material-processing-2"].effects,{type = "unlock-recipe", recipe = "sct-prod-baked-biopaste"})
table.insert(data.raw.technology["advanced-material-processing-2"].effects,{type = "unlock-recipe", recipe = "sct-prod-bioprocessor"})
table.insert(data.raw.technology["advanced-material-processing-2"].effects,{type = "unlock-recipe", recipe = "sct-prod-overclocker"})

-- High Tech enabled by Advanced Electronics 2
table.insert(data.raw.technology["advanced-electronics-2"].effects,{type = "unlock-recipe", recipe = "sct-htech-thermalstore"})
table.insert(data.raw.technology["advanced-electronics-2"].effects,{type = "unlock-recipe", recipe = "sct-htech-thermalstore-heated"})
table.insert(data.raw.technology["advanced-electronics-2"].effects,{type = "unlock-recipe", recipe = "sct-htech-capbank"})
table.insert(data.raw.technology["advanced-electronics-2"].effects,{type = "unlock-recipe", recipe = "sct-htech-random"})
table.insert(data.raw.technology["advanced-electronics-2"].effects,{type = "unlock-recipe", recipe = "sct-htech-injector"})


