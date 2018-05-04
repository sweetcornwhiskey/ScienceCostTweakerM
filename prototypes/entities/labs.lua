data:extend({
	{
		type = "item",
		name = "sct-lab-1",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/sct-lab-1/icon.png",
		flags = {"goes-to-quickbar"},
		subgroup = "sct-labs",
		order = "a[labs]-a[lab1]",
		place_result = "sct-lab-1",
		stack_size = 10
	},

	{
		type = "lab",
		name = "sct-lab-1",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/sct-lab-1/icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "sct-lab-1"},
		max_health = 150,
		researching_speed = 1,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		light = {intensity = 0.75, size = 8},
		on_animation =
		{
			filename = "__ScienceCostTweakerM__/graphics/sct-lab-1/entity.png",
			width = 113,
			height = 91,
			frame_count = 33,
			line_length = 11,
			animation_speed = 1 / 3,
			shift = {0.2, 0.15}
		},
		off_animation =
		{
			filename = "__ScienceCostTweakerM__/graphics/sct-lab-1/entity.png",
			width = 113,
			height = 91,
			frame_count = 1,
			shift = {0.2, 0.15}
		},
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/lab.ogg",
				volume = 0.7
			},
			apparent_volume = 1
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage = "60kW",
		inputs =
		{
			"science-pack-1"
		},
		module_specification =
		{
			module_slots = 0,
			max_entity_info_module_icons_per_row = 3,
			max_entity_info_module_icon_rows = 1,
			module_info_icon_shift = {0, 0.9}
		},
		fast_replaceable_group = "lab",
	},	

	-- New Science Labs, from Tier 2 to Tier 4. (Vanilla lab becomes Tier 1)
	-- ===================================================================
	-- == Tier 2 ==
	{
		type = "item",
		name = "sct-lab-2",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/sct-lab-2/icon.png",
		flags = {"goes-to-quickbar"},
		subgroup = "sct-labs",
		order = "a[labs]-b[lab2]",
		place_result = "sct-lab-2",
		stack_size = 10
	},
	{
		type = "lab",
		name = "sct-lab-2",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/sct-lab-2/icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "sct-lab-2"},
		max_health = 200,
		researching_speed = 1,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		light = {intensity = 0.75, size = 8},
		on_animation =
		{
			filename = "__ScienceCostTweakerM__/graphics/sct-lab-2/entity.png",
			width = 113,
			height = 91,
			frame_count = 33,
			line_length = 11,
			animation_speed = 1 / 3,
			shift = {0.2, 0.15}
		},
		off_animation =
		{
			filename = "__ScienceCostTweakerM__/graphics/sct-lab-2/entity.png",
			width = 113,
			height = 91,
			frame_count = 1,
			shift = {0.2, 0.15}
		},
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/lab.ogg",
				volume = 0.7
			},
			apparent_volume = 1
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage = "120kW",
		inputs =
		{
			"science-pack-1",
			"science-pack-2"
		},
		module_specification =
		{
			module_slots = 0,
			max_entity_info_module_icons_per_row = 3,
			max_entity_info_module_icon_rows = 1,
			module_info_icon_shift = {0, 0.9}
		},
		fast_replaceable_group = "lab",
	},
	-- == Tier 3 ==
	{
		type = "item",
		name = "sct-lab-3",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/sct-lab-3/icon.png",
		flags = {"goes-to-quickbar"},
		subgroup = "sct-labs",
		order = "a[labs]-c[lab3]",
		place_result = "sct-lab-3",
		stack_size = 10
	},
	{
		type = "lab",
		name = "sct-lab-3",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/sct-lab-3/icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "sct-lab-3"},
		max_health = 250,
		researching_speed = 1,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		light = {intensity = 0.75, size = 8},
		on_animation =
		{
			filename = "__ScienceCostTweakerM__/graphics/sct-lab-3/entity.png",
			width = 113,
			height = 91,
			frame_count = 33,
			line_length = 11,
			animation_speed = 1 / 3,
			shift = {0.2, 0.15}
		},
		off_animation =
		{
			filename = "__ScienceCostTweakerM__/graphics/sct-lab-3/entity.png",
			width = 113,
			height = 91,
			frame_count = 1,
			shift = {0.2, 0.15}
		},
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/lab.ogg",
				volume = 0.7
			},
			apparent_volume = 1
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage = "300kW",
		inputs =
		{
			"science-pack-1",
			"science-pack-2",
			"science-pack-3",
			"military-science-pack",
			"production-science-pack"
		},
		module_specification =
		{
			module_slots = 0,
			max_entity_info_module_icons_per_row = 3,
			max_entity_info_module_icon_rows = 1,
			module_info_icon_shift = {0, 0.9}
		},
		fast_replaceable_group = "lab",
	},

	-- == Tier 4 ==
	{
		type = "item",
		name = "sct-lab-4",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/sct-lab-4/icon.png",
		flags = {"goes-to-quickbar"},
		subgroup = "sct-labs",
		order = "a[labs]-d[lab4]",
		place_result = "sct-lab-4",
		stack_size = 10
	},
	{
		type = "lab",
		name = "sct-lab-4",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/sct-lab-4/icon.png",
		flags = {"placeable-player", "player-creation"},
		minable = {mining_time = 1, result = "sct-lab-4"},
		max_health = 300,
		researching_speed = 1,
		corpse = "big-remnants",
		dying_explosion = "medium-explosion",
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		light = {intensity = 0.75, size = 8},
		on_animation =
		{
			filename = "__ScienceCostTweakerM__/graphics/sct-lab-4/entity.png",
			width = 113,
			height = 91,
			frame_count = 33,
			line_length = 11,
			animation_speed = 1 / 3,
			shift = {0.2, 0.15}
		},
		off_animation =
		{
			filename = "__ScienceCostTweakerM__/graphics/sct-lab-4/entity.png",
			width = 113,
			height = 91,
			frame_count = 1,
			shift = {0.2, 0.15}
		},
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/lab.ogg",
				volume = 0.7
			},
			apparent_volume = 1
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		energy_usage = "2MW",
		inputs =
		{
			"science-pack-1",
			"science-pack-2",
			"science-pack-3",
			"military-science-pack",
			"production-science-pack",
			"high-tech-science-pack",
			"space-science-pack"
		},
		module_specification =
		{
			module_slots = 0,
			max_entity_info_module_icons_per_row = 3,
			max_entity_info_module_icon_rows = 1,
			module_info_icon_shift = {0, 0.9}
		},
		fast_replaceable_group = "lab",
	},
	
})

-- Disable standard lab - other mods change standard lab, so we disable it, and use our own, other modules can only change lab intermediates
data.raw.lab["lab"].enabled = false
