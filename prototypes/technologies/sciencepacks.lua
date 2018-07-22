-- add new technology tree for science packs
data:extend({
	-- TIER 1
	-- tier 1 pack
	{
		type = "technology",
		name = "sct-research-t1",
		icon = "__ScienceCostTweakerM__/graphics/icons/science-pack-1-128.png",
		icon_size = 128,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "science-pack-1",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-t1-ironcore",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-t1-magnet-coils",
			},
		},
		prerequisites =
		{
			"sct-lab-t1",
		},
		unit =
		{
			count = 30,
			ingredients =
			{
--				{"science-pack-0", 1},
			},
			time = 1,
		},
		order = "sct-pack-a[t1]",
	},

	-- TIER 2
	-- tier 2 pack
	{
		type = "technology",
		name = "sct-research-t2",
		icon = "__ScienceCostTweakerM__/graphics/icons/science-pack-2-128.png",
		icon_size = 128,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "science-pack-2",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-t2-instruments",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-t2-microcircuits",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-t2-micro-wafer",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-t2-wafer-stamp",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-t2-reaction-nodes",
			},
		},
		prerequisites =
		{
			"automation-2",
			"sct-lab-t2",
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
		order = "sct-pack-b[t2]",
	},

	-- TIER 3
	-- tier 3 pack
	{
		type = "technology",
		name = "sct-research-t3",
		icon = "__ScienceCostTweakerM__/graphics/icons/science-pack-3-128.png",
		icon_size = 128,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "science-pack-3",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-t3-atomic-sensors",
			},
		},
		prerequisites =
		{
			"sct-lab-t3",
		},
		unit =
		{
			count = 90,
			ingredients =
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
			},
			time = 3,
		},
		order = "sct-pack-c[t3]",
	},

	-- military // unlocked by t2/t3 depends on settings
	{
		type = "technology",
		name = "sct-research-mil",
		icon = "__ScienceCostTweakerM__/graphics/icons/military-science-pack-128.png",
		icon_size = 128,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "military-science-pack",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-mil-subplating",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-mil-plating",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-mil-circuit1",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-mil-circuit2",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-mil-circuit3",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-waste-processing-copper",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-waste-processing-mixed",
			},
		},
		prerequisites =
		{
			"military-2",
		},
		unit =
		{
			count = 60,
			ingredients =
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
			},
			time = 2,
		},
		order = "sct-pack-d[mil]",
	},
	
	-- production - tier 3
	{
		type = "technology",
		name = "sct-research-prod",
		icon = "__ScienceCostTweakerM__/graphics/icons/production-science-pack-128.png",
		icon_size = 128,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "production-science-pack",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-prod-biosilicate",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-prod-baked-biopaste",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-prod-bioprocessor",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-prod-overclocker",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-prod-chipcase",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-waste-processing-mixed",
			},
		},
		prerequisites =
		{
			"sct-research-t3",
			"circuit-network",
		},
		unit =
		{
			count = 90,
			ingredients =
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
			},
			time = 3,
		},
		order = "sct-pack-e[prod]",
	},
	
	-- TIER 4
	-- hightech - tier 4
	{
		type = "technology",
		name = "sct-research-ht",
		icon = "__ScienceCostTweakerM__/graphics/icons/high-tech-science-pack-128.png",
		icon_size = 128,
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "high-tech-science-pack",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-htech-thermalstore",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-htech-thermalstore-heated",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-htech-capbank",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-htech-random",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-waste-processing-copper",
			},
			{
				type = "unlock-recipe",
				recipe = "sct-waste-processing-mixed",
			},
		},
		prerequisites =
		{
			"sct-lab-t4",
			"battery",
			"advanced-material-processing",
		},
		unit =
		{
			count = 120,
			ingredients =
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
			},
			time = 4,
		},
		order = "sct-pack-f[ht]",
	},
})

-- military tech dependencies, based on settings
if settings.startup["sct-military"].value == "tier2" then
	sctm.tech_dependency_add("sct-research-mil", "sct-research-t2")
else
	sctm.tech_dependency_add("sct-research-mil", "sct-research-t3")
	sctm.tech_pack_add("sct-research-mil", {"science-pack-3",1})
	data.raw.technology["sct-research-mil"].unit.time = 3
	data.raw.technology["sct-research-mil"].unit.count = 90
end
