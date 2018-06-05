-- technology
data:extend({
	{
		type = "technology",
		name = "sct-lab-modules",
		icons =
		{
			{
				icon = "__ScienceCostTweakerM__/graphics/bobmods/module-lab-128.png",
				icon_size = 128,
			},
			{
				icon = "__ScienceCostTweakerM__/graphics/overlays/module-128.png",
				icon_size = 128,
			},
		},		
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "lab-module",
			},
			{
				type = "unlock-recipe",
				recipe = "module-processor-board",				
			},			
			{
				type = "unlock-recipe",
				recipe = "speed-processor",
			},
			{
				type = "unlock-recipe",
				recipe = "effectivity-processor",
			},
			{
				type = "unlock-recipe",
				recipe = "productivity-processor",
			},			
		},
		prerequisites =
		{
			"advanced-electronics",
			"sct-research-t2",
		},
		unit =
		{
			count = 30,
			ingredients =
			{
				{type="item", name="science-pack-1", amount=1},
				{type="item", name="science-pack-2", amount=1},
			},
			time = 3,
		},
		order = "sct-lab-c[modules]",
	},
})