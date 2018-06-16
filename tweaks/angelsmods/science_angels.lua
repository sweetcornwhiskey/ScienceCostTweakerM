-- science groups
data:extend ({
	{
		type = "item-subgroup",
		name = "sct-science-pack-bio",
		group = "sct-science",
		order = "d_a[bio]",
	},
})

-- bio pack items
data:extend ({
	{
		type = "tool",
		name = "sct-science-pack-bio",
		icon = "__ScienceCostTweakerM__/graphics/angelsmods/sct-science-pack-bio.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-science-pack-bio",
		order = "d_a[bio]",
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
		subgroup = "sct-science-pack-bio",
		order = "d_a[bio]-b[groundsample]",
		stack_size = 200,
	},

	{
		type = "item",
		name = "sct-bio-sample-scaffold",
		icon = "__ScienceCostTweakerM__/graphics/angelsmods/sct-bio-sample-scaffold.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-science-pack-bio",
		order = "d_a[bio]-c[scaffold]",
		stack_size = 200,
	},

	{
		type = "item",
		name = "sct-bio-sample-filling",
		icon = "__ScienceCostTweakerM__/graphics/angelsmods/sct-bio-sample-filling.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-science-pack-bio",
		order = "d_a[bio]-d[filling]",
		stack_size = 200,
	},
})

-- logistic intermediate recipes
data:extend (
{
	{
		type = "recipe",
		name = "sct-science-pack-bio",
		subgroup = "sct-science-pack-bio",
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
				{type="item", name="sct-science-pack-bio", amount=1},
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
				{type="item", name="sct-science-pack-bio", amount=1},
			},
		},
	},
	
	{
		type = "recipe",
		name = "sct-bio-ground-sample",
		subgroup = "sct-science-pack-bio",
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
		subgroup = "sct-science-pack-bio",
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
		subgroup = "sct-science-pack-bio",
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
})

-- bio pack technology
data:extend({
	{
		type = "technology",
		name = "sct-research-bio",
		icon = "__ScienceCostTweakerM__/graphics/angelsmods/sct-science-pack-bio-128.png",
		icon_size = 128,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "sct-science-pack-bio",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-bio-ground-sample",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-bio-sample-scaffold",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-bio-sample-filling",
			},
		},
		prerequisites =
		{
			"gardens",
			"bio-paper-1",
			"bio-farm",
		},
		unit =
		{
			count = 60,
			ingredients = 
			{
				{"science-pack-1", 1},
			},
			time = 2,
		},
		order = "sct-pack-b[bio]",
	},
})

-- hd icon for biopack
if settings.startup["sct-hd-icons"] and settings.startup["sct-hd-icons"].value == true then
	data.raw.tool["sct-science-pack-bio"].icon_size = 64
	data.raw.tool["sct-science-pack-bio"].icon = "__ScienceCostTweakerM__/graphics/angelsmods/sct-science-pack-bio-64.png"
end