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
	
	-- Junk Byproducts
	-- =============================
	{
		type = "item",
		name = "sct-waste-ironcopper",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-waste-ironcopper.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[mixedewaste]",
		stack_size = 50
	},
	{
		type = "item",
		name = "sct-waste-copperonly",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-waste-copperonly.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[copperwaste]",
		stack_size = 50
	},
	
	-- Setup the recipe for smelting the junk byproducts back into useful stuff.
	-- ===================================================================

	{
		type = "recipe",
		name = "sct-waste-processing-mixed",
		energy_required = 2,
		enabled = true,
		category = "crafting-with-fluid",
		ingredients = {{"sct-waste-ironcopper", 2}},
		icon = "__ScienceCostTweaker__/graphics/icons/sct-waste-ironcopper.png",
		subgroup = "sct-sciencestuff",
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
		energy_required = 2,
		enabled = true,
		category = "crafting-with-fluid",
		ingredients = {{"sct-waste-copperonly", 2}},
		icon = "__ScienceCostTweaker__/graphics/icons/sct-waste-copperonly.png",
		subgroup = "sct-sciencestuff",
		order = "a[waste-process-basic]",
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
		subgroup = "sct-sciencestuff",
		order = "a[t1-ironcore]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t1-magnet-coils",
		icon = "__ScienceCostTweaker__/graphics/icons/magnet-coils.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[t1-magnet-coils]",
		stack_size = 200
	},

	-- Tier 2 Intermediary products.
	-- =============================
	{
		type = "item",
		name = "sct-t2-reaction-nodes",
		icon = "__ScienceCostTweaker__/graphics/icons/reaction-nodes.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[t2-reaction-nodes]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t2-instruments",
		icon = "__ScienceCostTweaker__/graphics/icons/instruments.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[t2-instruments]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t2-microcircuits",
		icon = "__ScienceCostTweaker__/graphics/icons/microcircuits.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[t2-microcircuits]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t2-micro-wafer",
		icon = "__ScienceCostTweaker__/graphics/icons/micro-wafer.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[t2-micro-wafer]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t2-wafer-stamp",
		icon = "__ScienceCostTweaker__/graphics/icons/wafer-stamp.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[t2-wafer-stamp]",
		stack_size = 200
	},

	-- Tier 3 Intermediary products.
	-- =============================
	{
		type = "item",
		name = "sct-t3-flash-fuel",
		icon = "__ScienceCostTweaker__/graphics/icons/flash-fuel.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[t3-flash-fuel]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t3-laser-foci",
		icon = "__ScienceCostTweaker__/graphics/icons/laser-foci.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[t3-laser-foci]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t3-laser-emitter",
		icon = "__ScienceCostTweaker__/graphics/icons/laser-emitter.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[t3-laser-emitter]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t3-femto-lasers",
		icon = "__ScienceCostTweaker__/graphics/icons/femto-lasers.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[t3-femto-lasers]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t3-atomic-sensors",
		icon = "__ScienceCostTweaker__/graphics/icons/atomic-sensors.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[t3-femto-lasers]",
		stack_size = 200
	},

	-- Military Intermediary products.
	-- =============================
	{
		type = "item",
		name = "sct-mil-circuit1",
		icon = "__ScienceCostTweaker__/graphics/icons/military_analysis_1.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[mil-circuit1]",
		stack_size = 200
	},
	{
		type = "item",
		name = "sct-mil-plating",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-mil-plating.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[mil-plating]",
		stack_size = 200
	},
	{
		type = "item",
		name = "sct-mil-subplating",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-mil-subplating.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[mil-subplating]",
		stack_size = 200
	},
	{
		type = "item",
		name = "sct-mil-circuit2",
		icon = "__ScienceCostTweaker__/graphics/icons/military_analysis_2.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[mil-circuit2]",
		stack_size = 200
	},
	{
		type = "item",
		name = "sct-mil-circuit3",
		icon = "__ScienceCostTweaker__/graphics/icons/military_analysis_3.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[mil-circuit3]",
		stack_size = 200
	},

	-- Production Intermediary products.
	-- =============================
	{
		type = "item",
		name = "sct-t4-bioprocessor",
		icon = "__ScienceCostTweaker__/graphics/icons/bioprocessor.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[t4-bioprocessor]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t4-overclocker",
		icon = "__ScienceCostTweaker__/graphics/icons/overclocker.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[t4-overclocker]",
		stack_size = 200
	},

	-- High-Tech Intermediary products.
	-- =============================
	-- Quantum Plating
	{
		type = "item",
		name = "sct-bm4-plating",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-plating.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[bm4-plating]",
		stack_size = 200
	},

	-- Particle Injector
	{
		type = "item",
		name = "sct-bm4-injector",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-injector.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[bm4-injector]",
		stack_size = 200
	},

	-- Superconductive Coils
	{
		type = "item",
		name = "sct-bm4-supercoils",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-supercoils.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[bm4-supercoils]",
		stack_size = 200
	},

	-- Energy Bank
	{
		type = "item",
		name = "sct-bm4-capbank",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-capbank.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[bm4-capbank]",
		stack_size = 200
	},

	-- Battery Core
	{
		type = "item",
		name = "sct-bm4-part3a",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part3a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[bm4-part3a]",
		stack_size = 200
	},

	-- Charged Coils
	{
		type = "item",
		name = "sct-bm4-part3b",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part3b.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[bm4-part3b]",
		stack_size = 200
	},

	-- Chemical Temper
	{
		type = "item",
		name = "sct-bm4-part3c",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part3c.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[bm4-part3c]",
		stack_size = 200
	},

	-- Virtual Particle Emitter
	{
		type = "item",
		name = "sct-bm4-part3d",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part3d.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[bm4-part3d]",
		stack_size = 200
	},

	-- Capacitor Stack
	{
		type = "item",
		name = "sct-bm4-part4a",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part4a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[bm4-part4a]",
		stack_size = 200
	},

	-- Thermal Shield
	{
		type = "item",
		name = "sct-bm4-part4b",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part4b.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[bm4-part4b]",
		stack_size = 200
	},

	-- Nanofusion Core
	{
		type = "item",
		name = "sct-bm4-part4c",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part4c.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[bm4-part4c]",
		stack_size = 200
	},

	-- Virtual Particle Shield
	{
		type = "item",
		name = "sct-bm4-part4d",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part4d.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencestuff",
		order = "a[bm4-part4d]",
		stack_size = 200
	},


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

-- High Tech enabled by Advanced Electronics 2
table.insert(data.raw.technology["advanced-electronics-2"].effects,{type = "unlock-recipe", recipe = "sct-t4-bioprocessor"})
table.insert(data.raw.technology["advanced-electronics-2"].effects,{type = "unlock-recipe", recipe = "sct-t4-overclocker"})


