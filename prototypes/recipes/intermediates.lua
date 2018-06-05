data:extend({
	-- Setup the recipe for smelting the junk byproducts back into useful stuff.
	-- ===================================================================

	{
		type = "recipe",
		name = "sct-waste-processing-copper",
		category = "crafting-with-fluid",
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-waste-copperonly.png",
		icon_size = 32,
		subgroup = "sct-byproducts",
		order = "c[bp]-a[copperwaste]",
		allow_decomposition = false,
		hidden_from_flow_stats = true,
		expensive =
		{
			enabled = false,
			energy_required = 1,
			ingredients = 
			{
				{"sct-waste-copperonly", 5},
			},
			results = 
			{
				{ type="item", name="copper-ore", amount=2 },
			},
		},
		normal =
		{
			enabled = false,
			energy_required = 0.5,
			ingredients = 
			{
				{"sct-waste-copperonly", 2},
			},
			results = 
			{
				{ type="item", name="copper-ore", amount=2 },
			},
		},
	},

	{
		type = "recipe",
		name = "sct-waste-processing-mixed",
		category = "crafting-with-fluid",
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-waste-ironcopper.png",
		icon_size = 32,
		subgroup = "sct-byproducts",
		order = "c[bp]-b[mixedewaste]",
		allow_decomposition = false,
		hidden_from_flow_stats = true,
		expensive =
		{
			enabled = false,
			energy_required = 1,
			ingredients = 
			{
				{"sct-waste-ironcopper", 5},
			},
			results = 
			{
				{ type="item", name="copper-ore", amount=1 },
				{ type="item", name="iron-ore", amount=1 },
			},
		},
		normal =
		{
			enabled = false,
			energy_required = 0.5,
			ingredients = 
			{
				{"sct-waste-ironcopper", 2},
			},
			results = 
			{
				{ type="item", name="copper-ore", amount=1 },
				{ type="item", name="iron-ore", amount=1 },
			},
		},
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
		subgroup = "sct-sciencepack-1",
		order = "d[t1]-b[ironcore]",		
		expensive =
		{
			enabled = true,
			energy_required = 2.5,
			ingredients = 
			{
				{"iron-plate", 5},
			},
			results = 
			{
				{type="item", name="sct-t1-ironcore", amount=1},
			},
		},
		normal =
		{
			enabled = true,
			energy_required = 1.25,
			ingredients = 
			{
				{"iron-plate", 2},
			},
			results = 
			{
				{type="item", name="sct-t1-ironcore", amount=1},
			},
		},
	},

	{
		type = "recipe",
		name = "sct-t1-magnet-coils",
		subgroup = "sct-sciencepack-1",
		order = "d[t1]-c[magnet-coils]",
		expensive = 
		{
			enabled = true,
			energy_required = 12.5,
			ingredients =
			{
				{"copper-plate", 10},
			},
			results = 
			{
				{type="item", name="sct-t1-magnet-coils", amount=8},
			},
		},
		normal = 
		{
			enabled = true,
			energy_required = 5,
			ingredients =
			{
				{"copper-plate", 4},
			},
			results = 
			{
				{type="item", name="sct-t1-magnet-coils", amount=8},
			},
		},
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
		subgroup = "sct-sciencepack-2",
		order = "e[t2]-b[instruments]",
		expensive =
		{
			enabled = false,
			energy_required = 3.75,
			ingredients =
			{
				{"sct-t2-microcircuits", 25},
				{"electronic-circuit", 2},
				{"iron-plate", 2},
			},
			results = 
			{
				{type="item", name="sct-t2-instruments", amount=1},
			},
		},
		normal =
		{
			enabled = false,
			energy_required = 1.5,
			ingredients =
			{
				{"sct-t2-microcircuits", 10},
				{"electronic-circuit", 1},
				{"iron-plate", 1},
			},
			results = 
			{
				{type="item", name="sct-t2-instruments", amount=1},
			},
		},
	},

	{
		type = "recipe",
		name = "sct-t2-microcircuits",
		subgroup = "sct-sciencepack-2",
		order = "e[t2]-c[microcircuits]",
		expensive = 
		{
			enabled = false,
			energy_required = 3.75,
			ingredients =
			{
				{"copper-plate", 3},
				{"sct-t2-micro-wafer", 2},
			},
			results = 
			{
				{type="item", name="sct-t2-microcircuits", amount=10},
			},
		},
		normal = 
		{
			enabled = false,
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
		},
	},

	{
		type = "recipe",
		name = "sct-t2-micro-wafer",
		subgroup = "sct-sciencepack-2",
		order = "e[t2]-d[micro-wafer]",
		expensive =
		{
			enabled = false,
			energy_required = 7.5,
			ingredients =
			{
				{"iron-plate", 5},
				{"sct-t2-wafer-stamp", 10}
			},
			results = 
			{
				{type="item", name="sct-t2-micro-wafer", amount=2},
			},
		},
		normal =
		{
			enabled = false,
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
		},
	},

	{
		type = "recipe",
		name = "sct-t2-wafer-stamp",
		subgroup = "sct-sciencepack-2",
		order = "e[t2]-e[wafer-stamp]",
		expensive = 
		{
			enabled = false,		
			energy_required = 7.5,
			ingredients =
			{
				{"iron-plate", 10},
			},
			results = 
			{
				{type="item", name="sct-t2-wafer-stamp", amount=4},
			},
		},
		normal = 
		{
			enabled = false,		
			energy_required = 3,
			ingredients =
			{
				{"iron-plate", 4},
			},
			results = 
			{
				{type="item", name="sct-t2-wafer-stamp", amount=4},
			},
		},
	},
	
	{
		type = "recipe",
		name = "sct-t2-reaction-nodes",
		subgroup = "sct-sciencepack-2",
		order = "e[t2]-f[reaction-nodes]",
		expensive =
		{
			enabled = false,
			energy_required = 3.75,
			ingredients =
			{
				{"sct-t1-magnet-coils", 5},
				{"iron-plate", 3},
			},
			results = 
			{
				{type="item", name="sct-t2-reaction-nodes", amount=1},
			},
		},
		normal =
		{
			enabled = false,
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
		},
	},
	
	-- Tier 3 Intermediary products.
	-- =============================
	{
		type = "recipe",
		name = "sct-t3-femto-lasers",
		category = "crafting-with-fluid",
		subgroup = "sct-sciencepack-3",
		order = "f[t3]-b[femtolasers]",		
		expensive = 
		{
			enabled = false,
			energy_required = 7.5,
			ingredients =
			{
				{type="item", name="sct-t3-laser-emitter", amount=2},
				{type="item", name="sct-t3-laser-foci", amount=2},
				{type="item", name="sct-t3-flash-fuel", amount=3},
				{type="fluid", name="water", amount=30}
			},
			results = 
			{
				{type="item", name="sct-t3-femto-lasers", amount=1},
			},
		},
		normal = 
		{
			enabled = false,
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
		},
	},
	
	{
		type = "recipe",
		name = "sct-t3-flash-fuel",
		category = "chemistry",
		always_show_made_in = true,
		subgroup = "sct-sciencepack-3",
		order = "f[t3]-c[flashfuel]",
		expensive =
		{
			enabled = false,
			energy_required = 7.5,
			ingredients =
			{
				{type="fluid", name="heavy-oil", amount=25},
				{type="fluid", name="light-oil", amount=25},
				{type="item", name="steel-plate", amount=3}
			},
			results = 
			{
				{type="item", name="sct-t3-flash-fuel", amount=1},
			},
		},
		normal =
		{
			enabled = false,
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
		},
	},

	{
		type = "recipe",
		name = "sct-t3-laser-foci",
		category = "crafting",
		subgroup = "sct-sciencepack-3",
		order = "f[t3]-d[laserfoci]",
		expensive =
		{
			enabled = false,
			energy_required = 7.5,
			ingredients =
			{
				{type="item", name="copper-plate", amount=10},
				{type="item", name="iron-plate", amount=15}
			},
			results = 
			{
				{type="item", name="sct-t3-laser-foci", amount=1},
				{type="item", name="sct-waste-copperonly", amount=1}
			},
			main_product = "sct-t3-laser-foci",
		},
		normal =
		{
			enabled = false,
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
		},
	},

	{
		type = "recipe",
		name = "sct-t3-laser-emitter",
		category = "crafting",
		subgroup = "sct-sciencepack-3",
		order = "f[t3]-e[laseremitter]",
		expensive =
		{
			enabled = false,
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
		},
		normal =
		{
			enabled = false,
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
		},
	},

	{
		type = "recipe",
		name = "sct-t3-atomic-sensors",
		category = "crafting-with-fluid",
		subgroup = "sct-sciencepack-3",
		order = "f[t3]-f[atomicsensors]",
		expensive =
		{
			enabled = false,
			energy_required = 8,
			ingredients =
			{
				{type="item", name="advanced-circuit", amount=3},
				{type="item", name="iron-plate", amount=30},
				{type="item", name="sct-t1-magnet-coils", amount=50},
				{type="fluid", name="water", amount=50}
			},
			results = 
			{
				{type="item", name="sct-t3-atomic-sensors", amount=1},
				{type="item", name="sct-waste-copperonly", amount=7}
			},
			main_product = "sct-t3-atomic-sensors",
		},
		normal =
		{
			enabled = false,
			energy_required = 3,
			ingredients =
			{
				{type="item", name="advanced-circuit", amount=1},
				{type="item", name="iron-plate", amount=12},
				{type="item", name="sct-t1-magnet-coils", amount=22},
				{type="fluid", name="water", amount=20}
			},
			results = 
			{
				{type="item", name="sct-t3-atomic-sensors", amount=1},
				{type="item", name="sct-waste-copperonly", amount=7}
			},
			main_product = "sct-t3-atomic-sensors",
		},
	},
	
	-- Military Intermediary products.
	-- =============================
	{
		type = "recipe",
		name = "sct-mil-plating",
		category = "advanced-crafting",
		subgroup = "sct-sciencepack-mil",
		order = "g[mil]-b[plating]",
		expensive =
		{
			enabled = false,
			energy_required = 25,
			ingredients =
			{
				{type="item", name="steel-plate", amount=2},
				{type="item", name="iron-plate", amount=15},
				{type="item", name="sct-mil-subplating", amount=20},
				{type="item", name="copper-plate", amount=5}
			},
			results = 
			{
				{type="item", name="sct-mil-plating", amount=1},
				{type="item", name="sct-waste-ironcopper", amount=1}
			},
			main_product = "sct-mil-plating",
		},
		normal =
		{
			enabled = false,
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
		},
	},

	{
		type = "recipe",
		name = "sct-mil-subplating",
		category = "crafting",
		subgroup = "sct-sciencepack-mil",
		order = "g[mil]-c[subplating]",
		expensive =
		{
			enabled = false,
			energy_required = 2,
			ingredients =
			{
				{type="item", name="iron-plate", amount=8},
				{type="item", name="copper-plate", amount=3}
			},
			results = 
			{
				{type="item", name="sct-mil-subplating", amount=1},
				{type="item", name="sct-waste-ironcopper", amount=1}
			},
			main_product = "sct-mil-subplating",
		},
		normal =
		{
			enabled = false,
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
		},
	},

	{
		type = "recipe",
		name = "sct-mil-circuit3",
		category = "advanced-crafting",
		subgroup = "sct-sciencepack-mil",
		order = "g[mil]-d[circuit3]",
		expensive =
		{
			enabled = false,
			energy_required = 3,
			ingredients =
			{
				{type="item", name="sct-mil-circuit2", amount=2},
				{type="item", name="advanced-circuit", amount=5},
			},
			results = 
			{
				{type="item", name="sct-mil-circuit3", amount=1},
				{type="item", name="sct-waste-ironcopper", amount=7},
				{type="item", name="sct-waste-copperonly", amount=2}
			},
			main_product = "sct-mil-circuit3",
		},
		normal =
		{
			enabled = false,
			energy_required = 1,
			ingredients =
			{
				{type="item", name="sct-mil-circuit2", amount=1},
				{type="item", name="advanced-circuit", amount=2},
			},
			results = 
			{
				{type="item", name="sct-mil-circuit3", amount=1},
				{type="item", name="sct-waste-ironcopper", amount=7},
				{type="item", name="sct-waste-copperonly", amount=2}
			},
			main_product = "sct-mil-circuit3",
		},
	},
	
	{
		type = "recipe",
		name = "sct-mil-circuit2",
		category = "crafting",
		subgroup = "sct-sciencepack-mil",
		order = "g[mil]-e[circuit2]",
		expensive =
		{
			enabled = false,
			energy_required = 3,
			ingredients =
			{
				{type="item", name="sct-mil-circuit1", amount=2},
				{type="item", name="electronic-circuit", amount=5},
			},
			results = 
			{
				{type="item", name="sct-mil-circuit2", amount=1},
				{type="item", name="sct-waste-ironcopper", amount=5},
				{type="item", name="sct-waste-copperonly", amount=1}
			},
			main_product = "sct-mil-circuit2",
		},
		normal =
		{
			enabled = false,
			energy_required = 1,
			ingredients =
			{
				{type="item", name="sct-mil-circuit1", amount=1},
				{type="item", name="electronic-circuit", amount=2},
			},
			results = 
			{
				{type="item", name="sct-mil-circuit2", amount=1},
				{type="item", name="sct-waste-ironcopper", amount=5},
				{type="item", name="sct-waste-copperonly", amount=1}
			},
			main_product = "sct-mil-circuit2",
		},
	},
	
	{
		type = "recipe",
		name = "sct-mil-circuit1",
		category = "crafting",
		subgroup = "sct-sciencepack-mil",
		order = "g[mil]-f[circuit1]",
		expensive = 
		{
			enabled = false,
			energy_required = 3,
			ingredients =
			{
				{type="item", name="electronic-circuit", amount=5},
				{type="item", name="coal", amount=12}
			},
			results = 
			{
				{type="item", name="sct-mil-circuit1", amount=1},
				{type="item", name="sct-waste-ironcopper", amount=1}
			},
			main_product = "sct-mil-circuit1",
		},
		normal = 
		{
			enabled = false,
			energy_required = 1,
			ingredients =
			{
				{type="item", name="electronic-circuit", amount=2},
				{type="item", name="coal", amount=5}
			},
			results = 
			{
				{type="item", name="sct-mil-circuit1", amount=1},
				{type="item", name="sct-waste-ironcopper", amount=1}
			},
			main_product = "sct-mil-circuit1",
		},
	},

	-- Production Intermediary products.
	-- =============================
	{
		type = "recipe",
		name = "sct-prod-bioprocessor",
		category = "advanced-crafting",
		subgroup = "sct-sciencepack-prod",
		order = "h[prod]-b[bioprocessor]",
		expensive =
		{
			enabled = false,
			energy_required = 60,
			ingredients =
			{
				{type="item", name="sct-prod-baked-biopaste", amount=2},
				{type="item", name="red-wire", amount=15},
				{type="item", name="advanced-circuit", amount=10}
			},
			results = 
			{
				{type="item", name="sct-prod-bioprocessor", amount=1},
				{type="item", name="sct-waste-ironcopper", amount=4},
			},
			main_product = "sct-prod-bioprocessor",
		},
		normal =
		{
			enabled = false,
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
		},
	},

	{
		type = "recipe",
		name = "sct-prod-baked-biopaste",
		category = "smelting",
		subgroup = "sct-sciencepack-prod",
		order = "h[prod]-c[biopaste]",
		always_show_made_in = true,
		expensive =
		{
			energy_required = 7,
			enabled = false,
			ingredients = 
			{
				{"sct-prod-biosilicate", 3}
			},
			results = 
			{
				{ type="item", name="sct-prod-baked-biopaste", amount=1},
			},
		},
		normal =
		{
			energy_required = 3,
			enabled = false,
			ingredients = 
			{
				{"sct-prod-biosilicate", 1}
			},
			results = 
			{
				{ type="item", name="sct-prod-baked-biopaste", amount=1},
			},
		},
	},
	
	{
		type = "recipe",
		name = "sct-prod-biosilicate",
		category = "chemistry",
		subgroup = "sct-sciencepack-prod",
		order = "h[prod]-d[biosilicate]",
		always_show_made_in = true,
		expensive =
		{
			enabled = false,
			energy_required = 7,
			ingredients =
			{
				{type="item", name="stone", amount=50},
				{type="item", name="steel-plate", amount=20},
				{type="item", name="plastic-bar", amount=10},
				{type="item", name="electronic-circuit", amount=5},
				{type="fluid", name="petroleum-gas", amount=50}
			},
			results = 
			{
				{type="item", name="sct-prod-biosilicate", amount=1},
			},
		},
		normal =
		{
			enabled = false,
			energy_required = 3,
			ingredients =
			{
				{type="item", name="stone", amount=20},
				{type="item", name="steel-plate", amount=8},
				{type="item", name="plastic-bar", amount=4},
				{type="item", name="electronic-circuit", amount=2},
				{type="fluid", name="petroleum-gas", amount=20}
			},
			results = 
			{
				{type="item", name="sct-prod-biosilicate", amount=1},
			},
		},
	},

	{
		type = "recipe",
		name = "sct-prod-overclocker",
		category = "crafting-with-fluid",
		subgroup = "sct-sciencepack-prod",
		order = "h[prod]-e[overclocker]",
		expensive =
		{
			enabled = false,
			energy_required = 3,
			ingredients =
			{
				{type="item", name="iron-gear-wheel", amount=40},
				{type="item", name="copper-cable", amount=40},
				{type="item", name="steel-plate", amount=20},
				{type="item", name="sct-prod-chipcase", amount=2},
				{type="fluid", name="water", amount=300}
			},
			results = 
			{
				{type="item", name="sct-prod-overclocker", amount=1},
				{type="item", name="sct-waste-ironcopper", amount=5},
				{type="item", name="sct-waste-copperonly", amount=3}
			},
			main_product = "sct-prod-overclocker",
		},
		normal =
		{
			enabled = false,
			energy_required = 1,
			ingredients =
			{
				{type="item", name="iron-gear-wheel", amount=17},
				{type="item", name="copper-cable", amount=16},
				{type="item", name="steel-plate", amount=9},
				{type="item", name="sct-prod-chipcase", amount=1},
				{type="fluid", name="water", amount=120}
			},
			results = 
			{
				{type="item", name="sct-prod-overclocker", amount=1},
				{type="item", name="sct-waste-ironcopper", amount=5},
				{type="item", name="sct-waste-copperonly", amount=3}
			},
			main_product = "sct-prod-overclocker",
		},
	},
	
	{
		type = "recipe",
		name = "sct-prod-chipcase",
		category = "crafting-with-fluid",
		subgroup = "sct-sciencepack-prod",
		order = "h[prod]-f[chipcase]",
		expensive =
		{
			enabled = false,
			energy_required = 3,
			ingredients =
			{
				{type="item", name="plastic-bar", amount=12},
				{type="item", name="green-wire", amount=13},
				{type="item", name="advanced-circuit", amount=2},
				{type="fluid", name="heavy-oil", amount=300}
			},
			results = 
			{
				{type="item", name="sct-prod-chipcase", amount=1},
				{type="item", name="sct-waste-copperonly", amount=3}
			},
			main_product = "sct-prod-chipcase",
		},
		normal =
		{
			enabled = false,
			energy_required = 1,
			ingredients =
			{
				{type="item", name="plastic-bar", amount=5},
				{type="item", name="green-wire", amount=5},
				{type="item", name="advanced-circuit", amount=1},
				{type="fluid", name="heavy-oil", amount=120}
			},
			results = 
			{
				{type="item", name="sct-prod-chipcase", amount=1},
				{type="item", name="sct-waste-copperonly", amount=3}
			},
			main_product = "sct-prod-chipcase",
		},
	},
	
	-- High-Tech Intermediary products.
	-- =============================
	
	{
		type = "recipe",
		name = "sct-htech-capbank",
		category = "crafting-with-fluid",
		subgroup = "sct-sciencepack-hightech",
		order = "i[ht]-b[capbank]",
		expensive =
		{
			enabled = false,
			energy_required = 10,
			ingredients =
			{
				{type="item", name="battery", amount=2},
				{type="item", name="iron-plate", amount=30},
				{type="item", name="copper-cable", amount=30}
			},
			results = 
			{
				{type="item", name="sct-htech-capbank", amount=1},
				{type="item", name="sct-waste-ironcopper", amount=5}
			},
			main_product = "sct-htech-capbank",
		},
		normal =
		{
			enabled = false,
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
		},
	},
	
	{
		type = "recipe",
		name = "sct-htech-injector",
		category = "crafting-with-fluid",
		subgroup = "sct-sciencepack-hightech",
		order = "i[ht]-c[injector]",
		expensive =
		{
			enabled = false,
			energy_required = 10,
			ingredients =
			{
				{type="item", name="processing-unit", amount=8},
				{type="item", name="plastic-bar", amount=25},
				{type="item", name="iron-plate", amount=40},
				{type="item", name="copper-cable", amount=70}
			},
			results = 
			{
				{type="item", name="sct-htech-injector", amount=1},
				{type="item", name="sct-waste-ironcopper", amount=10}
			},
			main_product = "sct-htech-injector",
		},
		normal =
		{
			enabled = false,
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
		},
	},
	
	{
		type = "recipe",
		name = "sct-htech-random",
		category = "advanced-crafting",
		subgroup = "sct-sciencepack-hightech",
		order = "i[ht]-d[random]",
		expensive =
		{
			enabled = false,
			energy_required = 17,
			ingredients =
			{
				{type="item", name="sct-htech-thermalstore-heated", amount=2},
				{type="item", name="iron-gear-wheel", amount=15}
			},
			results = 
			{
				{type="item", name="sct-htech-random", amount=1}
			},
		},
		normal =
		{
			enabled = false,
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
		},
	},

	{
		type = "recipe",
		name = "sct-htech-thermalstore-heated",
		category = "smelting",
		subgroup = "sct-sciencepack-hightech",
		order = "i[ht]-e[thermalstore-heated]",
		expensive =
		{
			energy_required = 55,
			enabled = false,
			ingredients = 
			{
				{"sct-htech-thermalstore", 2}
			},
			results = 
			{
				{type="item", name="sct-htech-thermalstore-heated", amount=1},
			},
			always_show_made_in = true,
		},
		normal =
		{
			energy_required = 22,
			enabled = false,
			ingredients = 
			{
				{"sct-htech-thermalstore", 1}
			},
			results = 
			{
				{type="item", name="sct-htech-thermalstore-heated", amount=1},
			},
			always_show_made_in = true,
		},
	},
	
	{
		type = "recipe",
		name = "sct-htech-thermalstore",
		category = "advanced-crafting",
		subgroup = "sct-sciencepack-hightech",
		order = "i[ht]-f[thermalstore]",
		expensive =
		{
			enabled = false,
			energy_required = 10,
			ingredients =
			{
				{type="item", name="copper-plate", amount=100}
			},
			results = 
			{
				{type="item", name="sct-htech-thermalstore", amount=1},
				{type="item", name="sct-waste-copperonly", amount=1}
			},			
			main_product = "sct-htech-thermalstore",
		},
		normal =
		{
			enabled = false,
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
		},
	},		

	-- lab intermediates
	-- lab vanilla ingredients {{"electronic-circuit", 10}, {"iron-gear-wheel", 10}, {"transport-belt", 4}}, 
	-- lab1 intermediates
	{
		type = "recipe",
		name = "sct-lab1-construction",
		category = "crafting",
		expensive =
		{
			energy_required = 5,
			enabled = true,
			ingredients = 
			{
				{"iron-stick", 10},
				{"iron-plate", 3},
			},
			result = "sct-lab1-construction",
		},
		normal =
		{
			energy_required = 2,
			enabled = true,
			ingredients = 
			{
				{"iron-stick", 4},
				{"iron-plate", 1},
			},
			result = "sct-lab1-construction",
		},
	},

	{
		type = "recipe",
		name = "sct-lab1-mechanization",
		category = "crafting",
		expensive =
		{
			energy_required = 10,
			enabled = true,
			ingredients = 
			{
				{"transport-belt", 30},
				{"electronic-circuit", 20},
			},
			result = "sct-lab1-mechanization",
		},
		normal =
		{
			energy_required = 4,
			enabled = true,
			ingredients = 
			{
				{"transport-belt", 10},
				{"electronic-circuit", 10},
			},
			result = "sct-lab1-mechanization",
		},
	},

	-- lab2 intermediates
	{
		type = "recipe",
		name = "sct-lab2-construction",
		category = "crafting",
		expensive = 
		{
			energy_required = 10,
			enabled = false,
			ingredients = 
			{
				{"iron-gear-wheel", 10},
				{"steel-plate", 5},
			},
			result = "sct-lab2-construction",
		},
		normal = 
		{
			energy_required = 4,
			enabled = false,
			ingredients = 
			{
				{"iron-gear-wheel", 4},
				{"steel-plate", 2},
			},
			result = "sct-lab2-construction",
		},
	},

	{
		type = "recipe",
		name = "sct-lab2-automatization",
		category = "crafting",
		expensive = 
		{
			energy_required = 20,
			enabled = false,
			ingredients = 
			{
				{"fast-inserter", 5},
				{"electronic-circuit", 30},
			},
			result = "sct-lab2-automatization",
		},
		normal = 
		{
			energy_required = 8,
			enabled = false,
			ingredients = 
			{
				{"fast-inserter", 2},
				{"electronic-circuit", 10},
			},
			result = "sct-lab2-automatization",
		},
	},
	
	-- lab3 intermediates
	{
		type = "recipe",
		name = "sct-lab3-construction",
		category = "crafting",
		expensive = 
		{
			energy_required = 15,
			enabled = false,
			ingredients = 
			{
				{"solar-panel", 10},
				{"steel-plate", 15},
			},
			result = "sct-lab3-construction",
		},
		normal = 
		{
			energy_required = 6,
			enabled = false,
			ingredients = 
			{
				{"solar-panel", 5},
				{"steel-plate", 5},
			},
			result = "sct-lab3-construction",
		},
	},

	{
		type = "recipe",
		name = "sct-lab3-optics",
		category = "crafting",
		expensive =
		{
			energy_required = 30,
			enabled = false,
			ingredients = 
			{
				{"advanced-circuit", 50},
				{"sct-t3-femto-lasers", 2}
			},
			result = "sct-lab3-optics",
		},
		normal =
		{
			energy_required = 12,
			enabled = false,
			ingredients = 
			{
				{"advanced-circuit", 20},
				{"sct-t3-femto-lasers", 1}
			},
			result = "sct-lab3-optics",
		},
	},
	
	-- lab4 intermediates
	{
		type = "recipe",
		name = "sct-lab4-construction",
		category = "crafting",
		expensive = 
		{
			energy_required = 15,
			enabled = false,
			ingredients = 
			{
				{"centrifuge", 2},
				{"steel-plate", 20},
			},
			result = "sct-lab4-construction",
		},
		normal = 
		{
			energy_required = 6,
			enabled = false,
			ingredients = 
			{
				{"centrifuge", 1},
				{"steel-plate", 5},
			},
			result = "sct-lab4-construction",
		},
	},

	{
		type = "recipe",
		name = "sct-lab4-manipulators",
		category = "crafting",
		expensive =
		{
			energy_required = 30,
			enabled = false,
			ingredients = 
			{
				{"sct-htech-injector", 1},
				{"stack-filter-inserter", 5},
				{"processing-unit", 15},
			},
			result = "sct-lab4-manipulators",
		},
		normal =
		{
			energy_required = 12,
			enabled = false,
			ingredients = 
			{
				{"sct-htech-injector", 1},
				{"stack-filter-inserter", 2},
				{"processing-unit", 5},
			},
			result = "sct-lab4-manipulators",
		},
	},
})