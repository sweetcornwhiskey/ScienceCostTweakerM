-- science groups
data:extend ({
	{
		type = "item-subgroup",
		name = "sct-science-pack-alien",
		group = "sct-science",
		order = "k[alien]",
	},
})

-- technology lab
data:extend({
	{
		type = "technology",
		name = "sct-lab-alien",
		icon_size = 128,
		icons =
		{
			{
				icon = "__ScienceCostTweakerM__/graphics/bobmods/alien-lab-128.png",
			},
			{
				icon = "__ScienceCostTweakerM__/graphics/overlays/alien-128.png",
			},
		},		
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "lab-alien",
			},
		},
		prerequisites =
		{
			"advanced-research",
			"sct-research-t3",
			"sct-research-mil",
		},
		unit =
		{
			count = 30,
			ingredients =
			{
				{type="item", name="science-pack-1", amount=1},
				{type="item", name="science-pack-2", amount=1},
				{type="item", name="science-pack-3", amount=1},
				{type="item", name="military-science-pack", amount=1},
			},
			time = 3,
		},
		order = "sct-lab-d[alien]",
	},
})

-- technology science packs
data:extend({
	{
		type = "technology",
		name = "sct-research-gold",
		icon = "__ScienceCostTweakerM__/graphics/bobmods/gold-science-pack-128.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "science-pack-gold",
			},
		},
		prerequisites =
		{
			"sct-research-t3",
			"sct-research-mil",
		},
		unit =
		{
			count = 60,
			ingredients = 
			{
				{type="item", name="science-pack-1", amount=1},
				{type="item", name="science-pack-2", amount=1},
				{type="item", name="science-pack-3", amount=1},
				{type="item", name="military-science-pack", amount=1},
			},
			time = 1,
		},
		order = "sct-pack-d[gold]",
	},

	{
		type = "technology",
		name = "sct-research-alien",
		icon = "__ScienceCostTweakerM__/graphics/bobmods/alien-science-pack-128.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "alien-science-pack",
			},
--[[			
			{
				type = "unlock-recipe",
				recipe = "alien-science-pack-blue",
			},
			{
				type = "unlock-recipe",
				recipe = "alien-science-pack-orange",
			},
			{
				type = "unlock-recipe",
				recipe = "alien-science-pack-purple",
			},
			{
				type = "unlock-recipe",
				recipe = "alien-science-pack-yellow",
			},
			{
				type = "unlock-recipe",
				recipe = "alien-science-pack-green",
			},
			{
				type = "unlock-recipe",
				recipe = "alien-science-pack-red",
			},
]]--			
		},
		prerequisites =
		{
			"sct-research-gold",
			"sct-lab-alien",
		},
		unit =
		{
			count = 60,
			ingredients = 
			{
				{type="item", name="science-pack-gold", amount=1},
			},
			time = 1,
		},
		order = "sct-pack-e[alien]",
	},
})