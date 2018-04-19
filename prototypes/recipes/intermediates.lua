data:extend({
	-- Setup the recipe for smelting the junk byproducts back into useful stuff.
	-- ===================================================================

	{
		type = "recipe",
		name = "sct-waste-processing-mixed",
		energy_required = 0.5,
		enabled = false,
		category = "crafting-with-fluid",
		ingredients = {{"sct-waste-ironcopper", 2}},
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-waste-ironcopper.png",
		icon_size = 32,
		subgroup = "sct-byproducts",
		order = "a[waste-process-basic]",
		results =
		{
			{
				name = "iron-ore",
				amount = 1
			},
			{
				name = "copper-ore",
				amount = 1
			}
		},
		allow_decomposition = false,
	},

	{
		type = "recipe",
		name = "sct-waste-processing-copper",
		energy_required = 0.5,
		enabled = false,
		category = "crafting-with-fluid",
		ingredients = {{"sct-waste-copperonly", 2}},
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-waste-copperonly.png",
		icon_size = 32,
		subgroup = "sct-byproducts",
		order = "a[waste-process-copper]",
		results =
		{
			{
				name = "copper-ore",
				amount = 2
			}
		},
		allow_decomposition = false,
	},

})