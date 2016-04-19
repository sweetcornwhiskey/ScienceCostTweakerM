data:extend({
	
	-- Create new intermediary products unique to science pack creation.
	-- ===================================================================

	-- Blue-Science Intermediary products.
	-- =============================
	-- Quantum Plating
	{
		type = "item",
		name = "sct-bm4-plating",
		icon = "__ScienceCostTweaker__/graphics/icons/iron-core.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-plating]",
		stack_size = 200
	},

	
	-- Old cost = 1x Express transport belt = 21.5x Iron plate, 2x Heavy Oil (5 steps)
	-- New cost = Carbon + Cobalt Steel + Invar ( steps)
	{
		type = "recipe",
		name = "sct-bm4-plating",
		category = "crafting-with-fluid",
		enabled = false,
		energy_required = 20.5,
		ingredients =
		{
			{"iron-plate", 8},
			{type="fluid", name="lubricant", amount=2},
			{"invar-alloy", 1},
			{"cobalt-steel-alloy", 1},
			{"carbon", 2},
		},
		results = 
		{
			{type="item", name="sct-bm4-plating", amount=1},
		},
	},

	-- Particle Injector
	{
		type = "item",
		name = "sct-bm4-injector",
		icon = "__ScienceCostTweaker__/graphics/icons/magnet-coils.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-injector]",
		stack_size = 200
	},

	-- Old cost = 1x Processing Unit = ( steps)
	-- New cost = 1x Processing Unit,  ( steps)
	{
		type = "recipe",
		name = "sct-bm4-injector",
		enabled = false,
		energy_required = 20.5,
		ingredients =
		{
			{"processing-unit", 1},
		},
		results = 
		{
			{type="item", name="sct-bm4-injector", amount=1},
		},
	},
	
	-- Superconductive Coils
	{
		type = "item",
		name = "sct-bm4-supercoils",
		icon = "__ScienceCostTweaker__/graphics/icons/iron-core.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-supercoils]",
		stack_size = 200
	},

	-- Old cost = 1x Silicon Nitride =  ( steps)
	-- New cost =  ( steps)
	{
		type = "recipe",
		name = "sct-bm4-supercoils",
		enabled = false,
		energy_required = 20.5,
		ingredients =
		{
			{"silicon-nitride", 1},
		},
		results = 
		{
			{type="item", name="sct-bm4-supercoils", amount=1},
		},
	},

	-- Energy Bank
	{
		type = "item",
		name = "sct-bm4-capbank",
		icon = "__ScienceCostTweaker__/graphics/icons/magnet-coils.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-capbank]",
		stack_size = 200
	},

	-- Old cost =  ( steps)
	-- New cost =  ( steps)
	{
		type = "recipe",
		name = "sct-bm4-capbank",
		enabled = false,
		energy_required = 20.5,
		ingredients =
		{
			{"lithium-ion-battery", 1},
		},
		results = 
		{
			{type="item", name="sct-bm4-capbank", amount=1},
		},
	},
})
