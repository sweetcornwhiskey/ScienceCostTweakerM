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
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-science-pack-0",
		order = "d[t0]-b[crate]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t0-solvent",
		icon = "__ScienceCostTweakerM__/graphics/aai/sct-t0-solvent.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
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
			energy_required = 2.5,
			ingredients = 
			{
				{"stone", 5},
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
				{"stone", 2},
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
				{"iron-ore", 5},
				{"wood", 5},
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
				{"iron-ore", 2},
				{"wood", 2},
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
		flags = {"goes-to-main-inventory"},
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
		expensive =
		{
			enabled = true,
			energy_required = 7.5,
			ingredients = 
			{
				{"sct-t0-crate", 5},
				{"sct-t0-solvent", 5},
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
				{"sct-t0-crate", 2},
				{"sct-t0-solvent", 2},
			},
			results = 
			{
				{type="item", name="sct-science-pack-0", amount=4},
			},
		},
	},
})
