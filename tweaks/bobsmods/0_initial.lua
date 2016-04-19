-- Check that both bobsmod tech and bobsmod plates is installed
-- If not, then revert to using 'vanilla' config files.
bobIsAbout = true
if (data.raw["item"]["resin"] == nil or data.raw["item"]["glass"] == nil or data.raw["item"]["silicon-wafer"] == nil or data.raw["item"]["brass-alloy"] == nil) then
	require("tweaks.vanilla.0_initial")
	bobIsAbout = false
end


if (bobIsAbout == true) then
	-- Firstly, set the options for using the new intermediaries, as well as using the new tiered labs.
	require("tweaks.newIntermediates.newintermediates")
	
	-- If BobsTech is installed, then adjust the new science packs as well.
	if (data.raw["item"]["lab-2"] ~= nil) then
		require("tweaks.bobsmods.newintermediates")
	end

	-- Make resin craftable by hand, so that we can use it in science pack crafting.
	data.raw.recipe["bob-resin-wood"].category = "crafting"

	data:extend({
		-- Recipes for new science packs intermediary products.
		-- ===================================================================

		-- Tier 1 Intermediary products.
		-- =============================
		-- Pure Bobsmods Tier 1 Science Pack:
		-- 5.5x time, 2x Iron plate, 1x Copper plate
		-- <- 1x Iron gear (2x Iron plate) + 1x Copper plate
		--
		-- New cost: 8.72x time, 2x Iron plate, 1x Copper plate, 0.25x Raw Wood
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
			energy_required = 4.96,
			ingredients =
			{
				{"copper-plate", 4},
				{"resin", 1},
			},
			results = 
			{
				{type="item", name="sct-t1-magnet-coils", amount=8},
			},
		},
		
		-- Tier 2 Intermediary products.
		-- =============================
		-- Pure Bobsmods Tier 2 Science Pack:
		-- 9.4x time, 0.25x Raw Wood, 4.5x Iron plate, 1.5x Copper plate
		-- <- 1x Transport Belt (0.5x Iron gear + 0.5x Iron plate) + 1x Inserter (1x Electronic circuit + 1x Iron gear + 1x Iron plate)
		-- <- 1.5x Gear + 1.5x Iron plate + 3x Copper cable (1.5x copper plate) + 1x Wooden Board (0.5x Wood)
		-- <- 5.5x Iron plate + 1.5x Copper plate + 0.5x Wood (0.25x Raw Wood)
		--
		-- New cost: 12.21x time, 4x Iron plate, 2x Copper plate, 1.25x Raw Wood, 0.5xSteel
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
				{"resin", 1},
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
				{"steel-plate", 1},
				{"resin", 1},
			},
			results = 
			{
				{type="item", name="sct-t2-wafer-stamp", amount=4},
			},
		},
		
		-- Tier 3 Intermediary products.
		-- =============================
		-- Pure Bobsmods Tier 3 Science Pack:
		-- 66.7x time, 11x Iron Plate, 13.3x Copper Plate, 2.625x Raw Wood, 2x Sulfiric Acid, 1.7x Tin Plate, 0.8x Coal, 0.2x Silicon Plate, 0.3x Lead, 1.2x PetroGas, 0.2x Water, 0.5x Ferric Chlorine
		-- <- 1x Battery (1x Iron plate + 1x Copper plate + 2x Sulfiric Acid) + 1x Steel (5x Iron plate) + 1x Advanced Circuit (1x Circuit Board + 4x Basic ElecComp + 4x ElecComp + 1x Solder) + 1x Smart Inserter (1x Fast Inserter + 4x Electronic circuit)
		-- <- 6x Iron plate + 1x Copper plate + 2x Sulfiric Acid + 1x Fast Inserter (1x Inserter + 2x Iron plate + 2x Electronic circuit) + 4x Electronic circuit (12x Copper cable + 4x Wooden Board) + 1x Circuit Board (1x Phenolic Board + 1x Copper Plate + 1x Tin Plate + 0.5x Ferric Chlorine)+ 4x Basic ElecComp (0.8x Tinned Copper Wire + 0.8x Carbon) + 4x ElecComp (0.8x Plastic Bar + 0.8x Tinned Copper Wire + 1.6x Silicon Wafer) + 1x Solder (0.5x Solder Plate + 0.125x Resin)
		-- <- 8x Iron plate + 2x Copper plate + 2x Sulfiric Acid + 1x Inserter (1x Electronic circuit + 1x Iron gear + 1x Iron plate) + 2x Electronic circuit (6x Copper cable + 2x Wooden Board) + 12x Copper cable (6x Copper Plate) + 4x Wooden Board (2x Wood) + 1x Phenolic Board (0.5x Wood + 0.5x Resin) + 1x Tin Plate + 0.5x Ferric Chlorine  + 1.6x Tinned Copper Wire (1.6x Copper Cable + 0.5x Tin Plate) + 0.8x Carbon (0.4x Coal + 0.2x Water) + 0.8x Plastic Bar (0.4x Coal + 1.2x PetroGas)+ 1.6x Silicon Wafer (0.2x Silicon plate) + 0.5x Solder Plate (0.2x Tin + 0.3x Lead) + 0.125x Resin (0.125x Raw Wood)
		-- <- 9x Iron plate + 8x Copper plate + 2x Sulfiric Acid + 1x Electronic circuit (3x Copper cable + 1x Wooden Board) + 1x Iron gear (2x Iron plate) + 6x Copper cable (3x Copper plate) + 2x Wooden Board (1x Wood) + 2.5x Wood + 0.625x Raw Wood + 1.5x Tin Plate + 0.5x Ferric Chlorine  + 1.6x Copper Cable + 0.8x Coal + 0.2x Water + 1.2x PetroGas + 0.2x Silicon plate + 0.2x Tin + 0.3x Lead
		-- <- 11x Iron plate + 11.8x Copper plate + 2x Sulfiric Acid + 3x Copper cable (1.5x Copper plate) + 1x Wooden Board (0.5x Wood) + 3.5x Wood (1.75x Raw Wood) + 0.625x Raw Wood + 1.7x Tin Plate + 0.5x Ferric Chlorine + 0.8x Coal + 0.2x Water + 1.2x PetroGas + 0.2x Silicon plate + 0.3x Lead
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
				{type="item", name="steel-plate", amount=1}
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
				{type="item", name="glass", amount=1},
				{type="item", name="silicon-wafer", amount=1},
				{type="item", name="brass-alloy", amount=1},
				{type="fluid", name="nitrogen", amount=10}
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
				{type="item", name="steel-plate", amount=1},
				{type="item", name="plastic-bar", amount=2},
				{type="item", name="gold-plate", amount=1},
				{type="item", name="electronic-circuit", amount=6},
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
				{type="fluid", name="nitrogen", amount=10}
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
				{type="item", name="advanced-circuit", amount=1},
				{type="item", name="aluminium-plate", amount=1},
				{type="item", name="iron-plate", amount=3},
				{type="item", name="copper-plate", amount=6},
				{type="fluid", name="ferric-chloride-solution", amount=0.5}
			},
			results = 
			{
				{type="item", name="sct-t3-atomic-sensors", amount=1},
			},
		},
		
		-- Tier 4 Intermediary products.
		-- =============================
		-- Pure Bobsmods Tier 4 Science Pack:
		-- 1.2x time, 0.1x Alien Artifact
		--
		-- New cost: 18x time, 0.1x Alien Artifact, 2.25x Copper plate, 2x Silicon Wafer, 2x Gold plate, 0.5x Nitrogen, 0.25x Phenolic Board
		{
			type = "recipe",
			name = "sct-t4-bioprocessor",
			category = "crafting-with-fluid",
			enabled = "false",
			energy_required = 90,
			ingredients =
			{
				{type="item", name="alien-artifact", amount=1},
				{type="item", name="silicon-wafer", amount=20},
				{type="item", name="copper-plate", amount=20},
				{type="item", name="gold-plate", amount=20}
			},
			results = 
			{
				{type="item", name="sct-t4-bioprocessor", amount=10},
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
				{type="item", name="phenolic-board", amount=1},
				{type="item", name="copper-plate", amount=1},
				{type="fluid", name="nitrogen", amount=2}
			},
			results = 
			{
				{type="item", name="sct-t4-overclocker", amount=4},
			},
		},
		
	})
end