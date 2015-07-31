data:extend({

	-- Recipes for new science packs intermediary products.
	-- ===================================================================

	-- Tier 1 Intermediary products.
	-- =============================
	-- Vanilla Tier 1 Science Pack:
	-- 5.5x time, 2x Iron plate, 1x Copper plate
	-- <- 1x Iron gear (2x Iron plate) + 1x Copper plate
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
	-- Vanilla Tier 2 Science Pack:
	-- 8.8x time, 5.5x Iron plate, 1.5x Copper plate
	-- <- 1x Transport Belt (0.5x Iron gear + 1x Iron plate) + 1x Inserter (1x Electronic circuit + 1x Iron gear + 1x Iron plate)
	-- <- 1.5x Gear + 2.5x Iron plate + 3x Copper cable (1.5x copper plate)
	-- <- 5.5x Iron plate + 1.5x Copper plate
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
	-- Vanilla Tier 3 Science Pack:
	-- 57.8x time, 20x Iron plate, 16.5x Copper plate, 2x Sulfiric Acid, 1x Coal, 3x PetroGas
	-- <- 1x Battery (1x Iron plate + 1x Copper plate + 2x Sulfiric Acid) + 1x Steel (5x Iron plate) + 1x Advanced Circuit (2x Electronic circuit + 2x Plastic + 4x Copper Cable) + 1x Smart Inserter (1x Fast Inserter + 4x Electronic circuit)
	-- <- 6x Iron plate + 1x Copper plate + 2x Sulfiric Acid + 6x Electronic circuit (6x Iron Plate + 18x Copper Cable) + 2x Plastic (1x Coal + 3x PetroGas) + 4x Copper Cable (2x copper plate) + 1x Fast Inserter (1x Inserter + 2x Iron plate + 2x Electronic circuit)
	-- <- 14x Iron plate + 3x Copper plate + 1x Coal + 3x PetroGas + 2x Sulfiric Acid + 18x Copper Cable (9x Copper plate) + 1x Inserter (1x Electronic circuit + 1x Iron gear + 1x Iron plate) + 2x Electronic circuit (2x Iron Plate + 6x Copper Cable)
	-- <- 17x Iron plate + 12x Copper plate + 1x Coal + 3x PetroGas + 2x Sulfiric Acid + 1x Electronic circuit (1x Iron Plate + 3x Copper Cable) + 1x Iron gear (2x Iron plate) + 6x Copper Cable (3x copper plate)
	-- <- 20x Iron plate + 15x Copper plate + 1x Coal + 3x PetroGas + 2x Sulfiric Acid + 3x Copper Cable (1.5x Copper Plate)
	-- <- 20x Iron plate + 16.5x Copper plate + 1x Coal + 3x PetroGas + 2x Sulfiric Acid
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
	-- Vanilla Tier 4 Science Pack:
	-- 10x Alien Science Pack = 12x time, 1x Alien Artifact
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
