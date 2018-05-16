-- science groups
data:extend (
{
	{
		type = "item-subgroup",
		name = "sct-sciencepack-bio",
		group = "sct-science",
		order = "d_a[bio]",
		localised_name = "Agrictultural Planing",
		localised_description = "They grow, thay evolve, they are consumed."
	},
}
)

-- bio pack items
data:extend (
{
	{
		type = "tool",
		name = "sct-sciencepack-bio",
		icon = "__ScienceCostTweakerM__/graphics/angelsmods/sct-sciencepack-bio.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-bio",
		order = "d_a[bio]",
		localised_name = "Optimized Biome Planner",
		stack_size = 200,
		durability = 1,
	   	durability_description_key = "description.science-pack-remaining-amount-key",
		durability_description_value = "description.science-pack-remaining-amount-value",
	},

	{
		type = "item",
		name = "sct-bio-ground-sample",
		icon = "__ScienceCostTweakerM__/graphics/angelsmods/sct-bio-ground-sample.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-bio",
		order = "d_a[bio]-b[groundsample]",
		localised_name = "Ground Sample",
		stack_size = 200,
	},

	{
		type = "item",
		name = "sct-bio-sample-scaffold",
		icon = "__ScienceCostTweakerM__/graphics/angelsmods/sct-bio-sample-scaffold.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-bio",
		order = "d_a[bio]-c[scaffold]",
		localised_name = "Scaffolding",
		stack_size = 200,
	},

	{
		type = "item",
		name = "sct-bio-sample-filling",
		icon = "__ScienceCostTweakerM__/graphics/angelsmods/sct-bio-sample-filling.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-bio",
		order = "d_a[bio]-d[filling]",
		localised_name = "Seedling Nest",
		stack_size = 200,
	},
})

-- logistic intermediate recipes
data:extend (
{
	{
		type = "recipe",
		name = "sct-sciencepack-bio",
		subgroup = "sct-sciencepack-bio",
		order = "d_a[bio]",
		expensive =
		{
			enabled = false,
			energy_required = 12.5,
			ingredients =
			{
				{"sct-bio-ground-sample", 3},
				{"token-bio", 2},
			},
			results = 
			{
				{type="item", name="sct-sciencepack-bio", amount=1},
			},
		},
		normal =
		{
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"sct-bio-ground-sample", 1},
				{"token-bio", 1},
			},
			results = 
			{
				{type="item", name="sct-sciencepack-bio", amount=1},
			},
		},
	},
	
	{
		type = "recipe",
		name = "sct-bio-ground-sample",
		subgroup = "sct-sciencepack-bio",
		order = "d_a[bio]-b[groundsample]",
		expensive =
		{
			enabled = false,
			energy_required = 12.5,
			ingredients =
			{
				{"sct-bio-sample-scaffold", 3},
				{"sct-bio-sample-filling", 2},
			},
			results = 
			{
				{type="item", name="sct-bio-ground-sample", amount=1},
			},
		},
		normal =
		{
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"sct-bio-sample-scaffold", 1},
				{"sct-bio-sample-filling", 1},
			},
			results = 
			{
				{type="item", name="sct-bio-ground-sample", amount=1},
			},
		},
	},
	
	{
		type = "recipe",
		name = "sct-bio-sample-scaffold",
		subgroup = "sct-sciencepack-bio",
		order = "d_a[bio]-c[scaffold]",
		expensive =
		{
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"wood", 3},
				{"solid-paper", 5},
			},
			results = 
			{
				{type="item", name="sct-bio-sample-scaffold", amount=1},
			},
		},
		normal =
		{
			enabled = false,
			energy_required = 2,
			ingredients =
			{
				{"wood", 1},
				{"solid-paper", 2},
			},
			results = 
			{
				{type="item", name="sct-bio-sample-scaffold", amount=1},
			},
		},
	},

	{
		type = "recipe",
		name = "sct-bio-sample-filling",
		subgroup = "sct-sciencepack-bio",
		order = "d_a[bio]-d[filling]",
		category = "crafting-with-fluid",
		expensive =
		{
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"solid-soil", 2},
				{"solid-compost", 5},
				{type="fluid", name="water", amount=250},
			},
			results = 
			{
				{type="item", name="sct-bio-sample-filling", amount=1},
			},
		},
		normal =
		{
			enabled = false,
			energy_required = 2,
			ingredients =
			{
				{"solid-soil", 1},
				{"solid-compost", 2},
				{type="fluid", name="water", amount=100},
			},
			results = 
			{
				{type="item", name="sct-bio-sample-filling", amount=1},
			},
		},
	},
}
)
