data:extend({
	
	-- Create new intermediary products unique to science pack creation.
	-- ===================================================================

	-- Blue-Science Intermediary products.
	-- =============================
	-- Quantum Plating
	{
		type = "item",
		name = "sct-bm4-plating",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-plating.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-plating]",
		stack_size = 200
	},

	
	-- Old cost = 1x Express transport belt = 21.5x Iron plate, 2x Heavy Oil (5 steps)
	{
		type = "recipe",
		name = "sct-bm4-plating",
		category = "crafting-with-fluid",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-plating.png",
		subgroup = "intermediate-product",
		order = "a[bm4-plating]",
		enabled = false,
		energy_required = 15.0,
		ingredients =
		{
			{type="item", name="sct-bm4-part3c", amount=1},
			{type="item", name="sct-bm4-part4d", amount=1},
			{type="item", name="sct-bm4-part5c", amount=1},
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
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-injector.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-injector]",
		stack_size = 200
	},

	-- Old cost = 1x Processing Unit
	{
		type = "recipe",
		name = "sct-bm4-injector",	
		category = "crafting-with-fluid",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-injector.png",
		subgroup = "intermediate-product",
		order = "a[bm4-injector]",
		enabled = false,
		energy_required = 15.0,
		ingredients =
		{
			{type="item", name="sct-bm4-part4c", amount=1},
			{type="item", name="sct-bm4-part3d", amount=1},
			{type="item", name="sct-bm4-part5d", amount=1},
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
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-supercoils.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-supercoils]",
		stack_size = 200
	},

	-- Old cost = 1x Silicon Nitride
	{
		type = "recipe",
		name = "sct-bm4-supercoils",
		category = "crafting-with-fluid",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-supercoils.png",
		subgroup = "intermediate-product",
		order = "a[bm4-supercoils]",
		enabled = false,
		energy_required = 15.0,
		ingredients =
		{
			{type="item", name="sct-bm4-part3b", amount=1},
			{type="item", name="sct-bm4-part4b", amount=1},
			{type="item", name="sct-bm4-part5b", amount=1},
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
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-capbank.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-capbank]",
		stack_size = 200
	},

	-- Old cost = 1x Lithium Ion Battery
	{
		type = "recipe",
		name = "sct-bm4-capbank",
		category = "crafting-with-fluid",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-capbank.png",
		subgroup = "intermediate-product",
		order = "a[bm4-capbank]",
		enabled = false,
		energy_required = 15.0,
		ingredients =
		{
			{type="item", name="sct-bm4-part3a", amount=1},
			{type="item", name="sct-bm4-part4a", amount=1},
			{type="item", name="sct-bm4-part5a", amount=1},
		},
		results = 
		{
			{type="item", name="sct-bm4-capbank", amount=1},
		},
	},
	
	-- Battery Core
	{
		type = "item",
		name = "sct-bm4-part3a",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part3a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-part3a]",
		stack_size = 200
	},

	-- Charged Coils
	{
		type = "item",
		name = "sct-bm4-part3b",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part3b.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-part3b]",
		stack_size = 200
	},

	-- Chemical Temper
	{
		type = "item",
		name = "sct-bm4-part3c",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part3c.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-part3c]",
		stack_size = 200
	},

	-- Virtual Particle Emitter
	{
		type = "item",
		name = "sct-bm4-part3d",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part3d.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-part3d]",
		stack_size = 200
	},

	{
		type = "recipe",
		name = "sct-bm4-part3",
		category = "crafting-with-fluid",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part3a.png",
		subgroup = "intermediate-product",
		order = "a[bm4-part3]",
		enabled = false,
		energy_required = 15.0,
		ingredients =
		{
			{type="item", name="sct-bm4-part2a", amount=2},
			{type="item", name="lithium-ion-battery", amount=1},
			{type="item", name="sct-bm4-part1a", amount=3},
			{type="item", name="processing-unit", amount=1},
			{type="item", name="sct-bm4-part2b", amount=2},
			{type="item", name="sct-bm4-part2c", amount=2},
		},
		results = 
		{
			{type="item", name="sct-bm4-part3a", amount=2},
			{type="item", name="sct-bm4-part3b", amount=2},
			{type="item", name="sct-bm4-part3c", amount=2},
			{type="item", name="sct-bm4-part3d", amount=2},
		},
	},
	
	-- Capacitor Stack
	{
		type = "item",
		name = "sct-bm4-part4a",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part4a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-part4a]",
		stack_size = 200
	},

	-- Thermal Shield
	{
		type = "item",
		name = "sct-bm4-part4b",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part4b.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-part4b]",
		stack_size = 200
	},

	-- Nanofusion Core
	{
		type = "item",
		name = "sct-bm4-part4c",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part4c.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-part4c]",
		stack_size = 200
	},

	-- Virtual Particle Shield
	{
		type = "item",
		name = "sct-bm4-part4d",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part4d.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-part4d]",
		stack_size = 200
	},

	{
		type = "recipe",
		name = "sct-bm4-part4",
		category = "crafting-with-fluid",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part4a.png",
		subgroup = "intermediate-product",
		order = "a[bm4-part4]",
		enabled = false,
		energy_required = 15.0,
		ingredients =
		{
			{type="item", name="sct-bm4-part1a", amount=3},
			{type="item", name="titanium-plate", amount=1},
			{type="item", name="sct-bm4-part1b", amount=2},
			{type="item", name="lithium", amount=5},
			{type="item", name="sct-bm4-part2b", amount=2},
			{type="item", name="sct-bm4-part1c", amount=2},
		},
		results = 
		{
			{type="item", name="sct-bm4-part4a", amount=2},
			{type="item", name="sct-bm4-part4b", amount=2},
			{type="item", name="sct-bm4-part4c", amount=2},
			{type="item", name="sct-bm4-part4d", amount=2},
		},
	},
	
	-- Regulator : sct-bm4-part5a = 1x Supertransistor Array
	{
		type = "item",
		name = "sct-bm4-part5a",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part5a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-part5a]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-bm4-part5b",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part5b.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-part5b]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-bm4-part5c",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part5c.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-part5c]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-bm4-part5d",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part5d.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-part5d]",
		stack_size = 200
	},

	{
		type = "recipe",
		name = "sct-bm4-part5",
		category = "crafting-with-fluid",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part5a.png",
		subgroup = "intermediate-product",
		order = "a[bm4-part5]",
		enabled = false,
		energy_required = 15.0,
		ingredients =
		{
			{type="item", name="sct-bm4-part2a", amount=2},
			{type="item", name="processing-unit", amount=1},
			{type="item", name="sct-bm4-part1b", amount=3},
			{type="item", name="silicon-wafer", amount=5},
			{type="item", name="sct-bm4-part1c", amount=2},
			{type="item", name="sct-bm4-part2c", amount=2},
		},
		results = 
		{
			{type="item", name="sct-bm4-part5a", amount=2},
			{type="item", name="sct-bm4-part5b", amount=2},
			{type="item", name="sct-bm4-part5c", amount=2},
			{type="item", name="sct-bm4-part5d", amount=2},
		},
	},
				
	-- Supertransistor Array
	{
		type = "item",
		name = "sct-bm4-part2a",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part2a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-part2a]",
		stack_size = 200
	},
				
	-- Chemical Paste
	{
		type = "item",
		name = "sct-bm4-part2b",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part2b.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-part2b]",
		stack_size = 200
	},
				
	-- Atomic Components
	{
		type = "item",
		name = "sct-bm4-part2c",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part2c.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-part2c]",
		stack_size = 200
	},

	{
		type = "recipe",
		name = "sct-bm4-part2",
		category = "crafting-with-fluid",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part2a.png",
		subgroup = "intermediate-product",
		order = "a[bm4-part2]",
		enabled = false,
		energy_required = 15.0,
		ingredients =
		{
			{type="item", name="silicon-nitride", amount=1},
			{type="item", name="electronic-components", amount=4},
			{type="item", name="solid-fuel", amount=1},
			{type="item", name="carbon", amount=1},
			{type="item", name="electrum-alloy", amount=3},
			{type="item", name="zinc-plate", amount=3},
		},
		results = 
		{
			{type="item", name="sct-bm4-part2a", amount=4},
			{type="item", name="sct-bm4-part2b", amount=4},
			{type="item", name="sct-bm4-part2c", amount=4},
		},
	},
		
	-- Conductive Mesh
	{
		type = "item",
		name = "sct-bm4-part1a",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part1a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-part1a]",
		stack_size = 200
	},
				
	-- Insulation
	{
		type = "item",
		name = "sct-bm4-part1b",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part1b.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-part1b]",
		stack_size = 200
	},
				
	-- Shielding
	{
		type = "item",
		name = "sct-bm4-part1c",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part1c.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "intermediate-product",
		order = "a[bm4-part1c]",
		stack_size = 200
	},

	{
		type = "recipe",
		name = "sct-bm4-part1",
		category = "crafting-with-fluid",
		icon = "__ScienceCostTweaker__/graphics/icons/sct-bm4-part1a.png",
		subgroup = "intermediate-product",
		order = "a[bm4-part1]",
		enabled = false,
		energy_required = 15.0,
		ingredients =
		{
			{type="item", name="copper-cable", amount=12},
			{type="item", name="bronze-alloy", amount=5},
			{type="item", name="rubber", amount=5},
			{type="item", name="plastic-bar", amount=3},
			{type="item", name="brass-alloy", amount=5},
			{type="item", name="invar-alloy", amount=5},
		},
		results = 
		{
			{type="item", name="sct-bm4-part1a", amount=6},
			{type="item", name="sct-bm4-part1b", amount=5},
			{type="item", name="sct-bm4-part1c", amount=4},
		},
	},
		
})
