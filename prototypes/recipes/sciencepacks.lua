-- Make the science packs use the new intermediate products
-- ===================================================================

-- Science Pack 1
-- ===================================================================
data.raw["recipe"]["science-pack-1"].expensive = 
{
	ingredients =
	{
		{"sct-t1-ironcore", 3},
		{"sct-t1-magnet-coils", 5},
	},
   	results = 
	{
		{ type="item", amount=1, name="science-pack-1" },
	},
	energy_required = 12,
}
data.raw["recipe"]["science-pack-1"].normal =
{
	ingredients =
	{
		{"sct-t1-ironcore", 1},
		{"sct-t1-magnet-coils", 2},
	},
	results = 
	{
		{ type="item", amount=1, name="science-pack-1" },
	},
	energy_required = 5,
}
data.raw["recipe"]["science-pack-1"].ingredients = nil
data.raw["recipe"]["science-pack-1"].subgroup = "sct-sciencepack-1"
data.raw["recipe"]["science-pack-1"].order = "d[t1]-a[science-pack-1]"

-- Science Pack 2
-- ===================================================================
data.raw["recipe"]["science-pack-2"].expensive =
{
	enabled = "false",
	ingredients =
	{
		{"sct-t2-instruments", 3},
		{"sct-t2-reaction-nodes", 2},
	},
	results =
	{
		{ type="item", amount=1, name="science-pack-2" },
	},
	energy_required = 15,
	enabled = false,
}
data.raw["recipe"]["science-pack-2"].normal =
{
	enabled = "false",
	ingredients =
	{
		{"sct-t2-instruments", 1},
		{"sct-t2-reaction-nodes", 1},
	},
	results =
	{
		{ type="item", amount=1, name="science-pack-2" },
	},
	energy_required = 6,
	enabled = false,
}
data.raw["recipe"]["science-pack-2"].ingredients = nil
data.raw["recipe"]["science-pack-2"].enabled = false
data.raw["recipe"]["science-pack-2"].subgroup = "sct-sciencepack-2"
data.raw["recipe"]["science-pack-2"].order = "e[t2]-a[science-pack-2]"

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
data.raw["recipe"]["science-pack-3"].expensive =
{
	enabled = "false",
	ingredients =
	{
		{"sct-t3-femto-lasers", 3},
		{"sct-t3-atomic-sensors", 2},
	},
	results =
	{
		{ type="item", amount=1, name="science-pack-3" },
	},
	energy_required = 30,
	enabled = false,
}
data.raw["recipe"]["science-pack-3"].normal =
{
	enabled = "false",
	ingredients =
	{
		{"sct-t3-femto-lasers", 1},
		{"sct-t3-atomic-sensors", 1},
	},
	results =
	{
		{ type="item", amount=1, name="science-pack-3" },
	},
	energy_required = 12,
	enabled = false,
}
data.raw["recipe"]["science-pack-3"].ingredients = nil
data.raw["recipe"]["science-pack-3"].subgroup = "sct-sciencepack-3"
data.raw["recipe"]["science-pack-3"].order = "f[t3]-a[science-pack-3]"

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
data.raw["recipe"]["military-science-pack"].expensive =
{
	enabled = "false",
	ingredients =
	{
		{"sct-mil-circuit3", 2},
		{"sct-mil-plating", 3},
	},
	results =
	{
		{ type="item", amount=2, name="military-science-pack" },
	},
	energy_required = 15,
	enabled = false,
}
data.raw["recipe"]["military-science-pack"].normal =
{
	enabled = "false",
	ingredients =
	{
		{"sct-mil-circuit3", 1},
		{"sct-mil-plating", 1},
	},
	results =
	{
		{ type="item", amount=2, name="military-science-pack" },
	},
	energy_required = 6,
	enabled = false,
}
data.raw["recipe"]["military-science-pack"].ingredients = nil
data.raw["recipe"]["military-science-pack"].subgroup = "sct-sciencepack-mil"
data.raw["recipe"]["military-science-pack"].order = "g[mil]-a[military-science-pack]"

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
data.raw["recipe"]["production-science-pack"].expensive =
{
	ingredients =
	{
		{"sct-prod-bioprocessor", 3},
		{"sct-prod-overclocker", 2},
	},
	results =
	{
		{ type="item", amount=2, name="production-science-pack" },
	},
	energy_required = 25,
	enabled = false,
}
data.raw["recipe"]["production-science-pack"].normal =
{
	ingredients =
	{
		{"sct-prod-bioprocessor", 1},
		{"sct-prod-overclocker", 1},
	},
	results =
	{
		{ type="item", amount=2, name="production-science-pack" },
	},
	energy_required = 10,
	enabled = false,
}
data.raw["recipe"]["production-science-pack"].ingredients = nil
data.raw["recipe"]["production-science-pack"].subgroup = "sct-sciencepack-prod"
data.raw["recipe"]["production-science-pack"].order = "h[prod]-a[production-science-pack]"

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
data.raw["recipe"]["high-tech-science-pack"].expensive =
{
	ingredients =
	{
		{"sct-htech-capbank", 3},
		{"sct-htech-injector", 2},
		{"sct-htech-random", 3},
	},
	results =
	{
		{ type="item", amount=2, name="high-tech-science-pack" },
	},
	energy_required = 35,
	enabled = false,
}
data.raw["recipe"]["high-tech-science-pack"].normal =
{
	enabled = "false",
	ingredients =
	{
		{"sct-htech-capbank", 1},
		{"sct-htech-injector", 1},
		{"sct-htech-random", 1},
	},
	results =
	{
		{ type="item", amount=2, name="high-tech-science-pack" },
	},
	energy_required = 14,
	enabled = false,
}
data.raw["recipe"]["high-tech-science-pack"].ingredients = nil
data.raw["recipe"]["high-tech-science-pack"].subgroup = "sct-sciencepack-hightech"
data.raw["recipe"]["high-tech-science-pack"].order = "i[ht]-a[high-tech-science-pack]"
