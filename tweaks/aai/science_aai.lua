-- sicence group
data:extend ({
	{
		type = "item-subgroup",
		name = "sct-science-pack-0",
		group = "sct-science",
		order = "d[t0]",
	},
})
-- intermediates
data:extend({
	{
		type = "item",
		name = "sct-t0-crate",
		icon = "__ScienceCostTweakerM__/graphics/aai/sct-t0-crate.png",
		icon_size = 32,
		subgroup = "sct-science-pack-0",
		order = "d[t0]-b[crate]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t0-solvent",
		icon = "__ScienceCostTweakerM__/graphics/aai/sct-t0-solvent.png",
		icon_size = 32,
		subgroup = "sct-science-pack-0",
		order = "d[t0]-c[solvent]",
		stack_size = 200
	},
})

data:extend({
	{
		type = "recipe",
		name = "sct-t0-crate",
		subgroup = "sct-science-pack-0",
		order = "d[t0]-b[crate]",	
		expensive =
		{
			enabled = true,
			energy_required = 2,
			ingredients = 
			{
				{type="item", name="stone", amount=4},
			},
			results = 
			{
				{type="item", name="sct-t0-crate", amount=1},
			},
		},
		normal =
		{
			enabled = true,
			energy_required = 1,
			ingredients = 
			{
				{type="item", name="stone", amount=2},
			},
			results = 
			{
				{type="item", name="sct-t0-crate", amount=1},
			},
		},
	},

	{
		type = "recipe",
		name = "sct-t0-solvent",
		subgroup = "sct-science-pack-0",
		order = "d[t0]-c[solvent]",
		expensive =
		{
			enabled = true,
			energy_required = 2.5,
			ingredients = 
			{
				{type="item", name="iron-ore", amount=3},
				{type="item", name="wood", amount=4},
			},
			results = 
			{
				{type="item", name="sct-t0-solvent", amount=1},
			},
		},
		normal =
		{
			enabled = true,
			energy_required = 1,
			ingredients = 
			{
				{type="item", name="iron-ore", amount=2},
				{type="item", name="wood", amount=2},
			},
			results = 
			{
				{type="item", name="sct-t0-solvent", amount=1},
			},
		},
	},
})
-- science pack
data:extend({
	{
		type = "tool",
		name = "sct-science-pack-0",
		icon = "__ScienceCostTweakerM__/graphics/aai/sct-science-pack-0.png",
		icon_size = 32,
		subgroup = "sct-science-pack-0",
		order = "d[t0]-a[pack]",
		stack_size = 200,
		durability = 1,
	   	durability_description_key = "description.science-pack-remaining-amount-key",
		durability_description_value = "description.science-pack-remaining-amount-value",
	},
})

data:extend({
	{
		type = "recipe",
		name = "sct-science-pack-0",
		subgroup = "sct-science-pack-0",
		order = "d[t0]-a[pack]",	
		--[[
		expensive =
		{
			enabled = true,
			energy_required = 7.5,
			ingredients = 
			{
				{type="item", name="sct-t0-crate", amount=5},
				{type="item", name="sct-t0-solvent", amount=5},
			},
			results = 
			{
				{type="item", name="sct-science-pack-0", amount=4},
			},
		},
		]]--
		expensive = 
		{
			enabled = true,
			energy_required = 3,
			ingredients = 
			{
				{type="item", name="sct-t0-crate", amount=2},
				{type="item", name="sct-t0-solvent", amount=2},
			},
			results = 
			{
				{type="item", name="sct-science-pack-0", amount=4},
			},
		},
		normal =
		{
			enabled = true,
			energy_required = 3,
			ingredients = 
			{
				{type="item", name="sct-t0-crate", amount=2},
				{type="item", name="sct-t0-solvent", amount=2},
			},
			results = 
			{
				{type="item", name="sct-science-pack-0", amount=4},
			},
		},
	},
})

-- aai fuel processing rework
data:extend({
    {
        type = "technology",
        name = "sct-aai-basic-fuel-processing",
        icon = "__aai-industry__/graphics/technology/fuel-processing.png",
        icon_size = 128,
        order = "a",
        effects = 
        {
--[[
			{
				type = "unlock-recipe",
				recipe = "fuel-processor",
			},
			{
				type = "unlock-recipe",
				recipe = "vehicle-fuel-from-coal",
			},
			{
				type = "unlock-recipe",
				recipe = "vehicle-fuel-from-wood",
			},
			{
				type = "unlock-recipe",
				recipe = "vehicle-fuel-from-raw-wood",
			},
]]--
		},
        prerequisites = {
        	"electricity",
        },
        unit = 
        {
            count = 20,
            ingredients = 
            {
                {"sct-science-pack-0", 1},
            },
            time = 10
        },
    },
    {
        type = "technology",
        name = "sct-aai-advanced-fuel-processing",
        icon = "__aai-industry__/graphics/technology/fuel-processing.png",
        icon_size = 128,
        order = "a",
        effects = 
        {
		},
        prerequisites = 
        {
        	"fuel-processing",
        	"oil-processing",
        },
        unit = 
        {
            count = 40,
            ingredients = 
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
            },
            time = 20
        },
    },
    {
        type = "technology",
        name = "sct-aai-nuclear-fuel-processing",
        icon = "__aai-industry__/graphics/technology/fuel-processing.png",
        icon_size = 128,
        order = "a",
        effects = 
        {
		},
        prerequisites = 
        {
        	"sct-aai-advanced-fuel-processing",
        	"kovarex-enrichment-process",
        },
        unit = 
        {
            count = 100,
            ingredients = 
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
                {"production-science-pack", 1},
--                {"utility-science-pack", 1},
            },
            time = 40
        },
    },
    {
        type = "technology",
        name = "sct-aai-rocket-fuel-processing",
        icon = "__aai-industry__/graphics/technology/fuel-processing.png",
        icon_size = 128,
        order = "a",
        effects = 
        {
		},
        prerequisites = 
        {
        	"sct-aai-advanced-fuel-processing",
        	"rocket-fuel",
        },
        unit = 
        {
            count = 100,
            ingredients = 
            {
                {"automation-science-pack", 1},
                {"logistic-science-pack", 1},
                {"chemical-science-pack", 1},
--                {"military-science-pack", 1},
--                {"production-science-pack", 1},
--                {"utility-science-pack", 1},
            },
            time = 40
        },
    },
})