data:extend({
	-- Setup the recipe for smelting the junk byproducts back into useful stuff.
	-- ===================================================================

	{
		type = "recipe",
		name = "sct-waste-processing-copper",
		energy_required = 0.5,
		enabled = false,
		category = "crafting-with-fluid",
		ingredients = {{"sct-waste-copperonly", 2}},
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-waste-copperonly.png",
		icon_size = 32,
		subgroup = "sct-byproducts",
		order = "c[bp]-a[copperwaste]",
		results =
		{
			{
				name = "copper-ore",
				amount = 2
			}
		},
		allow_decomposition = false,
		hidden_from_flow_stats = true,
	},

	{
		type = "recipe",
		name = "sct-waste-processing-mixed",
		energy_required = 0.5,
		enabled = false,
		category = "crafting-with-fluid",
		ingredients = {{"sct-waste-ironcopper", 2}},
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-waste-ironcopper.png",
		icon_size = 32,
		subgroup = "sct-byproducts",
		order = "c[bp]-b[mixedewaste]",
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
		},
		allow_decomposition = false,
		hidden_from_flow_stats = true,
	},

	-- Recipes for new science packs intermediary products.
	-- ===================================================================

	-- Tier 1 Intermediary products.
	-- =============================
	-- Vanilla Tier 1 Science Pack:
	-- 5.5x time, 2x Iron plate, 1x Copper plate
	-- <- 1x Iron gear (2x Iron plate) + 1x Copper plate
	--
	-- New cost: 8.72x time, 2x Iron plate, 1x Copper plate
	{
		type = "recipe",
		name = "sct-t1-ironcore",
		enabled = "true",
		energy_required = 1.25,
		ingredients =
		{
			{"iron-plate", 2},
		},
		results = 
		{
			{type="item", name="sct-t1-ironcore", amount=1},
		},
		subgroup = "sct-sciencepack-1",
		order = "d[t1]-b[ironcore]",		
	},

	{
		type = "recipe",
		name = "sct-t1-magnet-coils",
		enabled = "true",
		energy_required = 5,
		ingredients =
		{
			{"copper-plate", 4},
		},
		results = 
		{
			{type="item", name="sct-t1-magnet-coils", amount=8},
		},
		subgroup = "sct-sciencepack-1",
		order = "d[t1]-c[magnet-coils]",
	},
	
	-- Tier 2 Intermediary products.
	-- =============================
	-- Vanilla Tier 2 Science Pack:
	-- 8.8x time, 5.5x Iron plate, 1.5x Copper plate
	-- <- 1x Transport Belt (0.5x Iron gear + 0.5x Iron plate) + 1x Inserter (1x Electronic circuit + 1x Iron gear + 1x Iron plate)
	-- <- 1.5x Gear + 2.5x Iron plate + 3x Copper cable (1.5x copper plate)
	-- <- 5.5x Iron plate + 1.5x Copper plate
	--
	-- New cost: 8.7x time, 8x Iron plate, 2x Copper plate
	{
		type = "recipe",
		name = "sct-t2-instruments",
		enabled = "false",
		energy_required = 1.5,
		ingredients =
		{
			{"sct-t2-microcircuits", 10},
			{"iron-plate", 2},
		},
		results = 
		{
			{type="item", name="sct-t2-instruments", amount=1},
		},
		subgroup = "sct-sciencepack-2",
		order = "e[t2]-b[instruments]",
	},

	{
		type = "recipe",
		name = "sct-t2-microcircuits",
		enabled = "false",
		energy_required = 1.5,
		ingredients =
		{
			{"copper-plate", 1},
			{"sct-t2-micro-wafer", 1},
		},
		results = 
		{
			{type="item", name="sct-t2-microcircuits", amount=10},
		},
		subgroup = "sct-sciencepack-2",
		order = "e[t2]-c[microcircuits]",
	},

	{
		type = "recipe",
		name = "sct-t2-micro-wafer",
		enabled = "false",
		energy_required = 3,
		ingredients =
		{
			{"iron-plate", 2},
			{"sct-t2-wafer-stamp", 4}
		},
		results = 
		{
			{type="item", name="sct-t2-micro-wafer", amount=2},
		},
		subgroup = "sct-sciencepack-2",
		order = "e[t2]-d[micro-wafer]",
	},

	{
		type = "recipe",
		name = "sct-t2-wafer-stamp",
		enabled = "false",
		energy_required = 3,
		ingredients =
		{
			{"iron-plate", 4},
		},
		results = 
		{
			{type="item", name="sct-t2-wafer-stamp", amount=4},
		},
		subgroup = "sct-sciencepack-2",
		order = "e[t2]-e[wafer-stamp]",
	},
	
	{
		type = "recipe",
		name = "sct-t2-reaction-nodes",
		enabled = "false",
		energy_required = 1.5,
		ingredients =
		{
			{"sct-t1-magnet-coils", 2},
			{"iron-plate", 1},
		},
		results = 
		{
			{type="item", name="sct-t2-reaction-nodes", amount=1},
		},
		subgroup = "sct-sciencepack-2",
		order = "e[t2]-f[reaction-nodes]",
	},

	-- Tier 3 Intermediary products.
	-- =============================
	{
		type = "recipe",
		name = "sct-t3-femto-lasers",
		category = "crafting-with-fluid",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/femto-lasers.png",
		enabled = "false",
		energy_required = 3,
		ingredients =
		{
			{type="item", name="sct-t3-laser-emitter", amount=1},
			{type="item", name="sct-t3-laser-foci", amount=1},
			{type="item", name="sct-t3-flash-fuel", amount=1},
			{type="fluid", name="water", amount=10}
		},
		results = 
		{
			{type="item", name="sct-t3-femto-lasers", amount=1},
		},
		subgroup = "sct-sciencepack-3",
		order = "f[t3]-b[femtolasers]",		
	},

	{
		type = "recipe",
		name = "sct-t3-flash-fuel",
		category = "chemistry",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/flash-fuel.png",
		enabled = "false",
		energy_required = 3,
		ingredients =
		{
			{type="fluid", name="heavy-oil", amount=10},
			{type="fluid", name="light-oil", amount=10},
			{type="item", name="steel-plate", amount=1}
		},
		results = 
		{
			{type="item", name="sct-t3-flash-fuel", amount=1},
		},
		always_show_made_in = true,
		subgroup = "sct-sciencepack-3",
		order = "f[t3]-c[flashfuel]",
	},

	{
		type = "recipe",
		name = "sct-t3-laser-foci",
		category = "crafting",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/laser-foci.png",
		enabled = "false",
		energy_required = 3,
		ingredients =
		{
			{type="item", name="copper-plate", amount=4},
			{type="item", name="iron-plate", amount=6}
		},
		results = 
		{
			{type="item", name="sct-t3-laser-foci", amount=1},
			{type="item", name="sct-waste-copperonly", amount=1}
		},
		main_product = "sct-t3-laser-foci",
		subgroup = "sct-sciencepack-3",
		order = "f[t3]-d[laserfoci]",
	},

	{
		type = "recipe",
		name = "sct-t3-laser-emitter",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/laser-emitter.png",
		category = "crafting",
		enabled = "false",
		energy_required = 3,
		ingredients =
		{
			{type="item", name="electronic-circuit", amount=6},
			{type="item", name="copper-plate", amount=2},
			{type="item", name="iron-plate", amount=2}
		},
		results = 
		{
			{type="item", name="sct-t3-laser-emitter", amount=1},
			{type="item", name="sct-waste-copperonly", amount=2}
		},
		main_product = "sct-t3-laser-emitter",
		subgroup = "sct-sciencepack-3",
		order = "f[t3]-e[laseremitter]",
	},

	{
		type = "recipe",
		name = "sct-t3-atomic-sensors",
		category = "crafting-with-fluid",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/atomic-sensors.png",
		enabled = "false",
		energy_required = 3,
		ingredients =
		{
			{type="item", name="advanced-circuit", amount=1},
			{type="item", name="iron-plate", amount=12},
			{type="item", name="sct-t1-magnet-coils", amount=22},
			{type="fluid", name="water", amount=5}
		},
		results = 
		{
			{type="item", name="sct-t3-atomic-sensors", amount=1},
			{type="item", name="sct-waste-copperonly", amount=7}
		},
		main_product = "sct-t3-atomic-sensors",
		subgroup = "sct-sciencepack-3",
		order = "f[t3]-f[atomicsensors]",
	},
	
	-- Military Intermediary products.
	-- =============================
	{
		type = "recipe",
		name = "sct-mil-plating",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-mil-plating.png",
		category = "advanced-crafting",
		enabled = "false",
		energy_required = 10,
		ingredients =
		{
			{type="item", name="steel-plate", amount=1},
			{type="item", name="iron-plate", amount=6},
			{type="item", name="sct-mil-subplating", amount=7},
			{type="item", name="copper-plate", amount=2}
		},
		results = 
		{
			{type="item", name="sct-mil-plating", amount=1},
			{type="item", name="sct-waste-ironcopper", amount=1}
		},
		main_product = "sct-mil-plating",
		subgroup = "sct-sciencepack-mil",
		order = "g[mil]-b[plating]",
	},

	{
		type = "recipe",
		name = "sct-mil-subplating",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-mil-subplating.png",
		category = "crafting",
		enabled = "false",
		energy_required = 0.5,
		ingredients =
		{
			{type="item", name="iron-plate", amount=3},
			{type="item", name="copper-plate", amount=1}
		},
		results = 
		{
			{type="item", name="sct-mil-subplating", amount=1},
			{type="item", name="sct-waste-ironcopper", amount=1}
		},
		main_product = "sct-mil-subplating",
		subgroup = "sct-sciencepack-mil",
		order = "g[mil]-c[subplating]",
	},

	{
		type = "recipe",
		name = "sct-mil-circuit3",
		category = "advanced-crafting",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/military_analysis_3.png",
		enabled = "false",
		energy_required = 1,
		ingredients =
		{
			{type="item", name="sct-mil-circuit2", amount=1},
			{type="item", name="electronic-circuit", amount=4},
			{type="item", name="iron-plate", amount=6},
			{type="item", name="copper-plate", amount=6}
		},
		results = 
		{
			{type="item", name="sct-mil-circuit3", amount=1},
			{type="item", name="sct-waste-ironcopper", amount=7},
			{type="item", name="sct-waste-copperonly", amount=2}
		},
		main_product = "sct-mil-circuit3",
		subgroup = "sct-sciencepack-mil",
		order = "g[mil]-d[circuit3]",
	},
	
	{
		type = "recipe",
		name = "sct-mil-circuit2",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/military_analysis_2.png",
		category = "crafting",
		enabled = "false",
		energy_required = 1,
		ingredients =
		{
			{type="item", name="sct-mil-circuit1", amount=1},
			{type="item", name="copper-plate", amount=5}
		},
		results = 
		{
			{type="item", name="sct-mil-circuit2", amount=1},
			{type="item", name="sct-waste-ironcopper", amount=5},
			{type="item", name="sct-waste-copperonly", amount=1}
		},
		main_product = "sct-mil-circuit2",
		subgroup = "sct-sciencepack-mil",
		order = "g[mil]-e[circuit2]",
	},
	
	{
		type = "recipe",
		name = "sct-mil-circuit1",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/military_analysis_1.png",
		category = "crafting",
		enabled = "false",
		energy_required = 1,
		ingredients =
		{
			{type="item", name="iron-plate", amount=2},
			{type="item", name="copper-plate", amount=2},
			{type="item", name="coal", amount=5}
		},
		results = 
		{
			{type="item", name="sct-mil-circuit1", amount=1},
			{type="item", name="sct-waste-ironcopper", amount=1}
		},
		main_product = "sct-mil-circuit1",
		subgroup = "sct-sciencepack-mil",
		order = "g[mil]-f[circuit1]",
	},

	-- Production Intermediary products.
	-- =============================
	{
		type = "recipe",
		name = "sct-prod-bioprocessor",
		category = "advanced-crafting",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/bioprocessor.png",
		enabled = "false",
		energy_required = 30,
		ingredients =
		{
			{type="item", name="sct-prod-baked-biopaste", amount=1},
			{type="item", name="red-wire", amount=6},
			{type="item", name="advanced-circuit", amount=4}
		},
		results = 
		{
			{type="item", name="sct-prod-bioprocessor", amount=1},
			{type="item", name="sct-waste-ironcopper", amount=4},
		},
		main_product = "sct-prod-bioprocessor",
		subgroup = "sct-sciencepack-prod",
		order = "h[prod]-b[bioprocessor]",
	},

	{
		type = "recipe",
		name = "sct-prod-baked-biopaste",
		category = "smelting",
		energy_required = 3,
		enabled = "false",
		ingredients = 
		{
			{"sct-prod-biosilicate", 1}
		},
		results = 
		{
			{ type="item", name="sct-prod-baked-biopaste", amount=1},
		},
		always_show_made_in = true,
		subgroup = "sct-sciencepack-prod",
		order = "h[prod]-c[biopaste]",
	},
	
	{
		type = "recipe",
		name = "sct-prod-biosilicate",
		category = "chemistry",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-prod-biosilicate.png",
		enabled = "false",
		energy_required = 3,
		ingredients =
		{
			{type="item", name="stone", amount=20},
			{type="item", name="steel-plate", amount=6},
			{type="item", name="plastic-bar", amount=2},
			{type="item", name="electronic-circuit", amount=2},
			{type="fluid", name="petroleum-gas", amount=20}
		},
		results = 
		{
			{type="item", name="sct-prod-biosilicate", amount=1},
		},
		always_show_made_in = true,
		subgroup = "sct-sciencepack-prod",
		order = "h[prod]-d[biosilicate]",
	},

	{
		type = "recipe",
		name = "sct-prod-overclocker",
		category = "crafting-with-fluid",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/overclocker.png",
		enabled = "false",
		energy_required = 1,
		ingredients =
		{
			{type="item", name="iron-gear-wheel", amount=17},
			{type="item", name="copper-cable", amount=16},
			{type="item", name="steel-plate", amount=9},
			{type="item", name="electric-engine-unit", amount=1},
			{type="fluid", name="water", amount=120}
		},
		results = 
		{
			{type="item", name="sct-prod-overclocker", amount=1},
			{type="item", name="sct-waste-ironcopper", amount=5},
			{type="item", name="sct-waste-copperonly", amount=3}
		},
		main_product = "sct-prod-overclocker",
		subgroup = "sct-sciencepack-prod",
		order = "h[prod]-e[overclocker]",
	},
	
	-- High-Tech Intermediary products.
	-- =============================
	
	{
		type = "recipe",
		name = "sct-htech-capbank",
		category = "crafting-with-fluid",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-capbank.png",
		enabled = "false",
		energy_required = 4,
		ingredients =
		{
			{type="item", name="battery", amount=1},
			{type="item", name="iron-plate", amount=10},
			{type="item", name="copper-cable", amount=15}
		},
		results = 
		{
			{type="item", name="sct-htech-capbank", amount=1},
			{type="item", name="sct-waste-ironcopper", amount=5}
		},
		main_product = "sct-htech-capbank",
		subgroup = "sct-sciencepack-hightech",
		order = "i[ht]-b[capbank]",
	},
	
	{
		type = "recipe",
		name = "sct-htech-injector",
		category = "crafting-with-fluid",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-injector.png",
		enabled = "false",
		energy_required = 3.5,
		ingredients =
		{
			{type="item", name="processing-unit", amount=3},
			{type="item", name="plastic-bar", amount=10},
			{type="item", name="iron-plate", amount=15},
			{type="item", name="copper-cable", amount=30}
		},
		results = 
		{
			{type="item", name="sct-htech-injector", amount=1},
			{type="item", name="sct-waste-ironcopper", amount=10}
		},
		main_product = "sct-htech-injector",
		subgroup = "sct-sciencepack-hightech",
		order = "i[ht]-c[injector]",
	},
	
	{
		type = "recipe",
		name = "sct-htech-random",
		category = "advanced-crafting",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-random.png",
		enabled = "false",
		energy_required = 7,
		ingredients =
		{
			{type="item", name="sct-htech-thermalstore-heated", amount=1},
			{type="item", name="iron-gear-wheel", amount=5}
		},
		results = 
		{
			{type="item", name="sct-htech-random", amount=1}
		},
		subgroup = "sct-sciencepack-hightech",
		order = "i[ht]-d[random]",
	},

	{
		type = "recipe",
		name = "sct-htech-thermalstore-heated",
		category = "smelting",
		energy_required = 22,
		enabled = "false",
		ingredients = 
		{
			{"sct-htech-thermalstore", 1}
		},
		results = 
		{
			{type="item", name="sct-htech-thermalstore-heated", amount=1},
		},
		always_show_made_in = true,
		subgroup = "sct-sciencepack-hightech",
		order = "i[ht]-e[thermalstore-heated]",
	},
	
	{
		type = "recipe",
		name = "sct-htech-thermalstore",
		category = "advanced-crafting",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-thermalstore.png",
		enabled = "false",
		energy_required = 3.5,
		ingredients =
		{
			{type="item", name="copper-plate", amount=40}
		},
		results = 
		{
			{type="item", name="sct-htech-thermalstore", amount=1},
			{type="item", name="sct-waste-copperonly", amount=1}
		},
		main_product = "sct-htech-thermalstore",
		subgroup = "sct-sciencepack-hightech",
		order = "i[ht]-f[thermalstore]",
	},		

	-- lab intermediates
	-- lab vanilla ingredients {{"electronic-circuit", 10}, {"iron-gear-wheel", 10}, {"transport-belt", 4}}, 
	-- lab1 intermediates
	{
		type = "recipe",
		name = "sct-lab1-construction",
		category = "crafting",
		energy_required = 5,
		enabled = "true",
		ingredients = 
		{
			{"iron-stick", 8},
			{"iron-plate", 2},
		},
		result = "sct-lab1-construction",
	},

	{
		type = "recipe",
		name = "sct-lab1-mechanization",
		category = "crafting",
		energy_required = 5,
		enabled = "true",
		ingredients = 
		{
			{"transport-belt", 10},
			{"electronic-circuit", 10},
		},
		result = "sct-lab1-mechanization",
	},

	-- lab2 intermediates
	{
		type = "recipe",
		name = "sct-lab2-construction",
		category = "crafting",
		energy_required = 5,
		enabled = "false",
		ingredients = 
		{
			{"iron-stick", 4},
			{"steel-plate", 2},
		},
		result = "sct-lab2-construction",
	},

	{
		type = "recipe",
		name = "sct-lab2-automatization",
		category = "crafting",
		energy_required = 10,
		enabled = "false",
		ingredients = 
		{
			{"fast-inserter", 2},
			{"electronic-circuit", 10},
		},
		result = "sct-lab2-automatization",
	},
	
	-- lab3 intermediates
	{
		type = "recipe",
		name = "sct-lab3-construction",
		category = "crafting",
		energy_required = 10,
		enabled = "false",
		ingredients = 
		{
			{"plastic-bar", 5},
			{"steel-plate", 5},
		},
		result = "sct-lab3-construction",
	},

	{
		type = "recipe",
		name = "sct-lab3-optics",
		category = "crafting",
		energy_required = 20,
		enabled = "false",
		ingredients = 
		{
			{"advanced-circuit", 20},
			{"sct-t3-femto-lasers", 1}
		},
		result = "sct-lab3-optics",
	},
	
	-- lab4 intermediates
	{
		type = "recipe",
		name = "sct-lab4-construction",
		category = "crafting",
		energy_required = 15,
		enabled = "false",
		ingredients = 
		{
			{"solar-panel", 1},
			{"plastic-bar", 5},
		},
		result = "sct-lab4-construction",
	},

	{
		type = "recipe",
		name = "sct-lab4-manipulators",
		category = "crafting",
		energy_required = 30,
		enabled = "false",
		ingredients = 
		{
			{"sct-htech-injector", 1},
			{"filter-inserter", 2},
			{"processing-unit", 5},
		},
		result = "sct-lab4-manipulators",
	},
})