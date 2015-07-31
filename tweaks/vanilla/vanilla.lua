data:extend({

	-- Recipes for new science packs intermediary products.
	-- ===================================================================

	-- Tier 1 Intermediary products.
	-- =============================
	{
		type = "recipe",
		name = "sct-t1-ironcore",
		enabled = "true",
		energy_required = 1.24,
		ingredients =
		{
			{"iron-plate", 2},
		},
		results = 
		{
			{type="item", name="sct-t1-ironcore", amount=1},
		},
	},

	{
		type = "recipe",
		name = "sct-t1-magnet-coils",
		enabled = "true",
		energy_required = 2.48,
		ingredients =
		{
			{"copper-plate", 2},
		},
		results = 
		{
			{type="item", name="sct-t1-magnet-coils", amount=4},
		},
	},
	
	-- Tier 2 Intermediary products.
	-- =============================
	{
		type = "recipe",
		name = "sct-t2-reaction-nodes",
		enabled = "true",
		energy_required = 1.45,
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

	{
		type = "recipe",
		name = "sct-t2-instruments",
		enabled = "true",
		energy_required = 1.45,
		ingredients =
		{
			{"sct-t2-microcircuits", 10},
			{"iron-plate", 2},
		},
		results = 
		{
			{type="item", name="sct-t2-instruments", amount=1},
		},
	},

	{
		type = "recipe",
		name = "sct-t2-microcircuits",
		enabled = "true",
		energy_required = 1.45,
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

	{
		type = "recipe",
		name = "sct-t2-micro-wafer",
		enabled = "true",
		energy_required = 2.9,
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

	{
		type = "recipe",
		name = "sct-t2-wafer-stamp",
		enabled = "true",
		energy_required = 2.9,
		ingredients =
		{
			{"iron-plate", 4},
		},
		results = 
		{
			{type="item", name="sct-t2-wafer-stamp", amount=4},
		},
	},
	
	-- Tier 3 Intermediary products.
	-- =============================
	{
		type = "recipe",
		name = "sct-t3-flash-fuel",
		category = "chemistry",
		enabled = "false",
		energy_required = 3,
		ingredients =
		{
			{type="fluid", name="heavy-oil", amount=1},
			{type="fluid", name="light-oil", amount=1},
			{type="item", name="iron-plate", amount=2}
		},
		results = 
		{
			{type="item", name="sct-t3-flash-fuel", amount=1},
		},
	},

	{
		type = "recipe",
		name = "sct-t3-laser-foci",
		category = "crafting-with-fluid",
		enabled = "false",
		energy_required = 3,
		ingredients =
		{
			{type="item", name="iron-plate", amount=3},
			{type="item", name="copper-plate", amount=3},
			{type="fluid", name="sulfuric-acid", amount=4}
		},
		results = 
		{
			{type="item", name="sct-t3-laser-foci", amount=1},
		},
	},

	{
		type = "recipe",
		name = "sct-t3-laser-emitter",
		category = "crafting-with-fluid",
		enabled = "false",
		energy_required = 3,
		ingredients =
		{
			{type="item", name="battery", amount=1},
			{type="item", name="iron-plate", amount=2},
			{type="item", name="plastic-bar", amount=4},
			{type="fluid", name="sulfuric-acid", amount=0.5}
		},
		results = 
		{
			{type="item", name="sct-t3-laser-emitter", amount=1},
		},
	},

	{
		type = "recipe",
		name = "sct-t3-femto-lasers",
		category = "crafting-with-fluid",
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
	},

	{
		type = "recipe",
		name = "sct-t3-atomic-sensors",
		category = "crafting-with-fluid",
		enabled = "false",
		energy_required = 3,
		ingredients =
		{
			{type="item", name="electronic-circuit", amount=1},
			{type="item", name="iron-plate", amount=4},
			{type="item", name="copper-plate", amount=4},
			{type="fluid", name="water", amount=5}
		},
		results = 
		{
			{type="item", name="sct-t3-atomic-sensors", amount=1},
		},
	},
	
	-- Tier 4 Intermediary products.
	-- =============================
	{
		type = "recipe",
		name = "sct-t4-bioprocessor",
		category = "crafting-with-fluid",
		enabled = "false",
		energy_required = 90,
		ingredients =
		{
			{type="item", name="alien-artifact", amount=1},
			{type="item", name="copper-plate", amount=40},
			{type="item", name="iron-plate", amount=40}
		},
		results = 
		{
			{type="item", name="sct-t4-bioprocessor", amount=30},
		},
	},

	{
		type = "recipe",
		name = "sct-t4-overclocker",
		category = "crafting-with-fluid",
		enabled = "false",
		energy_required = 12,
		ingredients =
		{
			{type="item", name="iron-plate", amount=2},
			{type="item", name="copper-plate", amount=2},
			{type="fluid", name="water", amount=4}
		},
		results = 
		{
			{type="item", name="sct-t4-overclocker", amount=4},
		},
	},
	
})
