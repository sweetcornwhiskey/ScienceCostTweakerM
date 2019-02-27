-- Make the science packs use the new intermediate products
-- ===================================================================

-- Science Pack 1
-- ===================================================================
data:extend(
	{
		{
			type = "recipe",
			name = "sct-science-pack-t1",
			subgroup = "sct-sciencepack-1",
			order = "d[t1]-a[automation-science-pack]",
--[[
			expensive = {
				enabled = false,
				always_show_made_in = true,
				ingredients = {
					{"sct-t1-ironcore", 3},
					{"sct-t1-magnet-coils", 5}
				},
				results = {
					{type = "item", amount = 1, name = "automation-science-pack"}
				},
				energy_required = 12
			},
]]--
			normal = {
				enabled = false,
				always_show_made_in = true,
				ingredients = {
					{"sct-t1-ironcore", 1},
					{"sct-t1-magnet-coils", 2}
				},
				results = {
					{type = "item", amount = 1, name = "automation-science-pack"}
				},
				energy_required = 5
			}
		}
	}
)
-- Science Pack 2
-- ===================================================================
data:extend(
	{
		{
			type = "recipe",
			name = "sct-science-pack-t2",
			subgroup = "sct-sciencepack-2",
			order = "e[t2]-a[logistic-science-pack]",
--[[		
			expensive = {
				enabled = false,
				always_show_made_in = true,
				ingredients = {
					{"sct-t2-instruments", 3},
					{"sct-t2-reaction-nodes", 2}
				},
				results = {
					{type = "item", amount = 1, name = "logistic-science-pack"}
				},
				energy_required = 15,
				enabled = false
			},
]]--
			normal = {
				enabled = false,
				always_show_made_in = true,
				ingredients = {
					{"sct-t2-instruments", 1},
					{"sct-t2-reaction-nodes", 1}
				},
				results = {
					{type = "item", amount = 1, name = "logistic-science-pack"}
				},
				energy_required = 6,
				enabled = false
			}
		}
	}
)
-- Science Pack 3
-- ===================================================================
--[[
	Vanilla:
		Cost: 24x iron-plate + 9.5x copper-plate + 2x plastic-bar + 1x engine-unit
		Time: 28.2
		Complexity: Adv Cir (2+3 step, 3 ing) + Ass Mac 1 (2+2 step, 3 ing) + Engine (2+2 step, 3 ing, nohand)
		
	Science Cost Tweaker:
		Cost: 20x Iron, 17x Copper, 1x Steel, 6x Eletronic Circuits, 1x Adv Circuit, 10x Heavy Oil, 10x Light Oil, 15x Water
			=> 28x Iron, 31x Copper, 1x Steel, 2x Plastic, 10x Heavy Oil, 10x Light Oil, 15x Water
		Refunds: 20x Copper
		
	Note: Circuit = 1x Iron + 1.5x Copper
	Note: Adv Circuit = 2x Iron + 5x Copper + 2x Plastic
	Note: Engine = 1x Steel, 4x Iron
]]--
data:extend(
	{
		{
			type = "recipe",
			name = "sct-science-pack-t3",
			subgroup = "sct-sciencepack-3",
			order = "f[t3]-a[chemical-science-pack]",
--[[
			expensive = {
				enabled = false,
				always_show_made_in = true,
				ingredients = {
					{"sct-t3-femto-lasers", 3},
					{"sct-t3-atomic-sensors", 2}
				},
				results = {
					{type = "item", amount = 1, name = "chemical-science-pack"}
				},
				energy_required = 30,
				enabled = false
			},
]]--
			normal = {
				enabled = false,
				always_show_made_in = true,
				ingredients = {
					{"sct-t3-femto-lasers", 1},
					{"sct-t3-atomic-sensors", 1}
				},
				results = {
					{type = "item", amount = 1, name = "chemical-science-pack"}
				},
				energy_required = 12,
				enabled = false
			}
		}
	}
)
-- Military Science Pack
-- ===================================================================
--[[
	Vanilla:
		Cost: 24.5x iron-plate + 7.5x copper-plate + 1x Steel + 5x coal
		Time: 35
		Complexity: Grenade (1 step, 2 ing) + Turret (2 step, 3 ing) + Piercing ammo (2 step, 3 ing)

	Science Cost Tweaker:
		Cost: 35x Iron, 22x Copper, 1x Steel, 5x Coal, 4x Circuit
			=> 39x Iron, 28x Copper, 1x Steel, 5x Coal
		Refunds: 14x Iron, 20x Copper = 14x Mixed + 3x Copper
		
]]--
data:extend(
	{
		{
			type = "recipe",
			name = "sct-science-pack-mil",
--[[
			expensive = {
				enabled = false,
				always_show_made_in = true,
				ingredients = {
					{"sct-mil-circuit3", 2},
					{"sct-mil-plating", 3}
				},
				results = {
					{type = "item", amount = 2, name = "military-science-pack"}
				},
				energy_required = 15,
				enabled = false
			},
]]--
			normal = {
				enabled = false,
				always_show_made_in = true,
				ingredients = {
					{"sct-mil-circuit3", 1},
					{"sct-mil-plating", 1}
				},
				results = {
					{type = "item", amount = 2, name = "military-science-pack"}
				},
				energy_required = 6,
				enabled = false
			},
			subgroup = "sct-sciencepack-mil",
			order = "g[mil]-a[military-science-pack]"
		}
	}
)
-- Production Science Pack
-- ===================================================================
--[[
	Vanilla:
		Cost: 10x Brick + 45x iron-plate + 32.5x copper-plate + 15x Steel + 10x Plastic + 1x Electric Engine
		Time: 92.7
		Complexity: Pumpjack (2 step, 4 ing) + Elec Furnace (2+3 step, 3 ing) + Elec Eng (2+2 step, liquid, nohand)
		
	Science Cost Tweaker:
		Cost: 17x IronGear, 16x CopperCable, 15x Steel, 20x Stone, 2x Plastic, 4x Adv Circuit, 2x Circuit, 6x Redwire, 20x Petroleum, 120x Water, 1x Electric Engine
			=> 50x Iron, 43x Copper, 15x Steel, 20x Stone, 10x Plastic, 20x Petroleum, 120x Water, 1x Electric Engine
		Refunds: 5x Iron, 11x Copper = 5x Mixed + 3x Copper
		
]]--
data:extend(
	{
		{
			type = "recipe",
			name = "sct-science-pack-prod",
--[[
			expensive = {
				always_show_made_in = true,
				ingredients = {
					{"sct-prod-bioprocessor", 3},
					{"sct-prod-overclocker", 2}
				},
				results = {
					{type = "item", amount = 2, name = "production-science-pack"}
				},
				energy_required = 25,
				enabled = false
			},
]]--
			normal = {
				always_show_made_in = true,
				ingredients = {
					{"sct-prod-bioprocessor", 1},
					{"sct-prod-overclocker", 1}
				},
				results = {
					{type = "item", amount = 2, name = "production-science-pack"}
				},
				energy_required = 10,
				enabled = false
			},
			subgroup = "sct-sciencepack-prod",
			order = "h[prod]-a[production-science-pack]"
		}
	}
)
-- High Tech Science Pack
-- ===================================================================
--[[
	Vanilla:
		Cost: 1x Battery, 3x Processing Unit, 15x Iron, 47.5x Copper, 10x Plastic
		Time: 
		Complexity: 

	Science Cost Tweaker:
		Cost: 90x Iron, 65x Copper, 1x Battery, 3x Processing Unit, 10x Plastic
			=> 
		Refunds: 15x Iron, 17x Copper = 15x Mixed + 1x Copper
		
]]--
data:extend(
	{
		{
			type = "recipe",
			name = "sct-science-pack-ht",
--[[
			expensive = {
				always_show_made_in = true,
				ingredients = {
					{"sct-htech-capbank", 3},
					{"sct-htech-injector", 2},
					{"sct-htech-random", 3}
				},
				results = {
					{type = "item", amount = 2, name = "utility-science-pack"}
				},
				energy_required = 35,
				enabled = false
			},
]]--
			normal = {
				always_show_made_in = true,
				enabled = false,
				ingredients = {
					{"sct-htech-capbank", 1},
					{"sct-htech-injector", 1},
					{"sct-htech-random", 1}
				},
				results = {
					{type = "item", amount = 2, name = "utility-science-pack"}
				},
				energy_required = 14,
			},
			subgroup = "sct-sciencepack-hightech",
			order = "i[ht]-a[ht-science-pack]"
		}
	}
)

local sctpacks = { 
	"sct-science-pack-t1",
	"sct-science-pack-t2",
	"sct-science-pack-t3",
	"sct-science-pack-mil",
	"sct-science-pack-prod",
	"sct-science-pack-ht",
}

for _, stp in pairs(sctpacks) do
	data.raw.recipe[stp].expensive = table.deepcopy(data.raw.recipe[stp].normal)
end

local sciencepack1 = table.deepcopy(data.raw.recipe["sct-science-pack-t1"])
sciencepack1.name = "automation-science-pack"
data.raw.recipe["automation-science-pack"] = sciencepack1

local sciencepack2 = table.deepcopy(data.raw.recipe["sct-science-pack-t2"])
sciencepack2.name = "logistic-science-pack"
data.raw.recipe["logistic-science-pack"] = sciencepack2

local sciencepack3 = table.deepcopy(data.raw.recipe["sct-science-pack-t3"])
sciencepack3.name = "chemical-science-pack"
data.raw.recipe["chemical-science-pack"] = sciencepack3

local sciencepackm = table.deepcopy(data.raw.recipe["sct-science-pack-mil"])
sciencepackm.name = "military-science-pack"
data.raw.recipe["military-science-pack"] = sciencepackm

local sciencepackp = table.deepcopy(data.raw.recipe["sct-science-pack-prod"])
sciencepackp.name = "production-science-pack"
data.raw.recipe["production-science-pack"] = sciencepackp

local sciencepackh = table.deepcopy(data.raw.recipe["sct-science-pack-ht"])
sciencepackh.name = "utility-science-pack"
data.raw.recipe["utility-science-pack"] = sciencepackh

