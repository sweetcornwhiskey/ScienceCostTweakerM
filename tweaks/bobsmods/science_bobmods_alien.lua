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
			"chemical-science-pack",
			"military-science-pack",
		},
		unit =
		{
			count = 45,
			ingredients =
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"military-science-pack", 1},
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
			"chemical-science-pack",
			"military-science-pack",
		},
		unit =
		{
			count = 90,
			ingredients = 
			{
				{"automation-science-pack", 1},
				{"logistic-science-pack", 1},
				{"chemical-science-pack", 1},
				{"military-science-pack", 1},
			},
			time = 3,
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
			count = 120,
			ingredients = 
			{
				{"science-pack-gold", 1},
			},
			time = 4,
		},
		order = "sct-pack-e[alien]",
	},
})