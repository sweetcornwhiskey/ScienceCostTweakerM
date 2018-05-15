-- science groups
data:extend ({
	{
		type = "item-subgroup",
		name = "sct-sciencepack-logistic",
		group = "sct-science",
		order = "i[logistic]",
		localised_name = "Commercial AI Implementation",
		localised_description = "Technology for controling logistic item flow and optimal transfer and delivery."
	},
	{
		type = "item-subgroup",
		name = "sct-sciencepack-alien",
		group = "sct-science",
		order = "k[alien]",
	},
})

-- logistic pack items
data:extend ({
	{
		type = "item",
		name = "sct-logistic-cargo-unit",
		icon = "__ScienceCostTweakerM__/graphics/bobmods/sct-logistic-cargo-unit.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-logistic",
		order = "i[logistic]-b[cargo]",
		localised_name = "Flying Cargo Kit",
		stack_size = 200,
	},

	{
		type = "item",
		name = "sct-logistic-unimover",
		icon = "__ScienceCostTweakerM__/graphics/bobmods/sct-logistic-unimover.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-logistic",
		order = "i[logistic]-c[unimover]",
		localised_name = "Universal Transport Engine",
		stack_size = 200,
	},

	{
		type = "item",
		name = "sct-logistic-automated-storage",
		icon = "__ScienceCostTweakerM__/graphics/bobmods/sct-logistic-automated-storage.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-logistic",
		order = "i[logistic]-d[storage]",
		localised_name = "Automated Storage",
		stack_size = 200,
	},

	{
		type = "item",
		name = "sct-logistic-memory-unit",
		icon = "__ScienceCostTweakerM__/graphics/bobmods/sct-logistic-memory-unit.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-logistic",
		order = "i[logistic]-e[memory-unit]",
		localised_name = "Memory Unit",
		stack_size = 200,
	},	
})

-- logistic intermediate recipes
data:extend ({
	{
		type = "recipe",
		name = "sct-logistic-cargo-unit",
		subgroup = "sct-sciencepack-logistic",
		order = "i[logistic]-b[cargo]",
		expensive =
		{
			enabled = false,
			energy_required = 7.5,
			ingredients =
			{
				{"sct-logistic-unimover", 2},
				{"sct-logistic-automated-storage", 3},
			},
			results = 
			{
				{type="item", name="sct-logistic-cargo-unit", amount=1},
			},
		},
		normal =
		{
			enabled = false,
			energy_required = 3,
			ingredients =
			{
				{"sct-logistic-unimover", 1},
				{"sct-logistic-automated-storage", 1},
			},
			results = 
			{
				{type="item", name="sct-logistic-cargo-unit", amount=1},
			},
		},
	},
	
	{
		type = "recipe",
		name = "sct-logistic-unimover",
		subgroup = "sct-sciencepack-logistic",
		order = "i[logistic]-c[unimover]",
		expensive =
		{
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"flying-robot-frame", 2},
				{"express-transport-belt", 5},
			},
			results = 
			{
				{type="item", name="sct-logistic-unimover", amount=1},
			},
		},
		normal =
		{
			enabled = false,
			energy_required = 2,
			ingredients =
			{
				{"flying-robot-frame", 1},
				{"express-transport-belt", 2},
			},
			results = 
			{
				{type="item", name="sct-logistic-unimover", amount=1},
			},
		},
	},

	{
		type = "recipe",
		name = "sct-logistic-automated-storage",
		subgroup = "sct-sciencepack-logistic",
		order = "i[logistic]-d[storage]",
		expensive =
		{
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"filter-inserter", 2},
				{"steel-chest", 5},
			},
			results = 
			{
				{type="item", name="sct-logistic-automated-storage", amount=1},
			},
		},
		normal =
		{
			enabled = false,
			energy_required = 2,
			ingredients =
			{
				{"filter-inserter", 1},
				{"steel-chest", 2},
			},
			results = 
			{
				{type="item", name="sct-logistic-automated-storage", amount=1},
			},
		},
	},

	{
		type = "recipe",
		name = "sct-logistic-memory-unit",
		subgroup = "sct-sciencepack-logistic",
		order = "i[logistic]-e[memory-unit]",
		expensive =
		{
			enabled = false,
			energy_required = 5,
			ingredients =
			{
				{"arithmetic-combinator", 2},
				{"constant-combinator", 5},
			},
			results = 
			{
				{type="item", name="sct-logistic-memory-unit", amount=1},
			},
		},
		normal =
		{
			enabled = false,
			energy_required = 2,
			ingredients =
			{
				{"arithmetic-combinator", 1},
				{"constant-combinator", 2},
			},
			results = 
			{
				{type="item", name="sct-logistic-memory-unit", amount=1},
			},
		},
	},
})

-- unlocks
bobmods.lib.tech.add_recipe_unlock("logistics-3", "sct-logistic-cargo-unit")
bobmods.lib.tech.add_recipe_unlock("logistics-3", "sct-logistic-unimover")
bobmods.lib.tech.add_recipe_unlock("logistics-3", "sct-logistic-automated-storage")
bobmods.lib.tech.add_recipe_unlock("logistics-3", "sct-logistic-memory-unit")

-- replace steel chest with brass chest if present
if data.raw.item["brass-chest"] then
	bobmods.lib.recipe.replace_ingredient("sct-logistic-automated-storage", "steel-chest", "brass-chest")
end