data:extend({
	-- New Science Labs, from Tier 2 to Tier 4. (Vanilla lab becomes Tier 1)
	-- ===================================================================
	-- == Tier 2 ==
	{
		type = "item",
		name = "sct-lab-2",
		icon = "__ScienceCostTweaker__/graphics/sct-lab-2/icon.png",
		flags = {"goes-to-quickbar"},
		subgroup = "sct-labs",
		order = "b[lab2]",
		place_result = "sct-lab-2",
		stack_size = 10
	},
	{
		type = "lab",
		name = "sct-lab-2",
		icon = "__ScienceCostTweaker__/graphics/sct-lab-2/icon.png",
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
			filename = "__ScienceCostTweaker__/graphics/sct-lab-2/entity.png",
			width = 113,
			height = 91,
			frame_count = 33,
			line_length = 11,
			animation_speed = 1 / 3,
			shift = {0.2, 0.15}
		},
		off_animation =
		{
			filename = "__ScienceCostTweaker__/graphics/sct-lab-2/entity.png",
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
	{
		type = "recipe",
		name = "sct-lab-2",
		subgroup = "sct-labs",
		order = "b[lab2]",
		enabled = "true",
		energy_required = 5,
		ingredients =
		{
			{"lab", 1},
			{"electronic-circuit", 20},
			{"iron-gear-wheel", 10}
		},
		result = "sct-lab-2"
	},
	-- == Tier 3 ==
	{
		type = "item",
		name = "sct-lab-3",
		icon = "__ScienceCostTweaker__/graphics/sct-lab-3/icon.png",
		flags = {"goes-to-quickbar"},
		subgroup = "sct-labs",
		order = "c[lab3]",
		place_result = "sct-lab-3",
		stack_size = 10
	},
	{
		type = "lab",
		name = "sct-lab-3",
		icon = "__ScienceCostTweaker__/graphics/sct-lab-3/icon.png",
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
			filename = "__ScienceCostTweaker__/graphics/sct-lab-3/entity.png",
			width = 113,
			height = 91,
			frame_count = 33,
			line_length = 11,
			animation_speed = 1 / 3,
			shift = {0.2, 0.15}
		},
		off_animation =
		{
			filename = "__ScienceCostTweaker__/graphics/sct-lab-3/entity.png",
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
	{
		type = "recipe",
		name = "sct-lab-3",
		subgroup = "sct-labs",
		order = "c[lab3]",
		enabled = "false",
		energy_required = 5,
		ingredients =
		{
			{"sct-lab-2", 1},
			{"advanced-circuit", 20},
			{"filter-inserter", 4}
		},
		result = "sct-lab-3"
	},
	-- == Tier 4 ==
	{
		type = "item",
		name = "sct-lab-4",
		icon = "__ScienceCostTweaker__/graphics/sct-lab-4/icon.png",
		flags = {"goes-to-quickbar"},
		subgroup = "sct-labs",
		order = "d[lab4]",
		place_result = "sct-lab-4",
		stack_size = 10
	},
	{
		type = "lab",
		name = "sct-lab-4",
		icon = "__ScienceCostTweaker__/graphics/sct-lab-4/icon.png",
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
			filename = "__ScienceCostTweaker__/graphics/sct-lab-4/entity.png",
			width = 113,
			height = 91,
			frame_count = 33,
			line_length = 11,
			animation_speed = 1 / 3,
			shift = {0.2, 0.15}
		},
		off_animation =
		{
			filename = "__ScienceCostTweaker__/graphics/sct-lab-4/entity.png",
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
	{
		type = "recipe",
		name = "sct-lab-4",
		subgroup = "sct-labs",
		order = "d[lab3]",
		enabled = "false",
		energy_required = 5,
		ingredients =
		{
			{"sct-lab-3", 1},
			{"processing-unit", 5},
			{"filter-inserter", 2}
		},
		result = "sct-lab-4"
	},
	
})

data:extend({
	-- Old Tier 1 lab. Only for backwards compatibility.
	{
		type = "item",
		name = "sct-lab-1",
		icon = "__ScienceCostTweaker__/graphics/sct-lab-1/icon.png",
		flags = {"goes-to-quickbar"},
		subgroup = "production-machine",
		order = "g[sct-lab-1]",
		place_result = "sct-lab-1",
		stack_size = 10
	},
	{
		type = "lab",
		name = "sct-lab-1",
		icon = "__ScienceCostTweaker__/graphics/sct-lab-1/icon.png",
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
			filename = "__ScienceCostTweaker__/graphics/sct-lab-1/entity.png",
			width = 113,
			height = 91,
			frame_count = 33,
			line_length = 11,
			animation_speed = 1 / 3,
			shift = {0.2, 0.15}
		},
		off_animation =
		{
			filename = "__ScienceCostTweaker__/graphics/sct-lab-1/entity.png",
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
	{
		type = "recipe",
		name = "sct-lab-1",
		subgroup = "sct-labs",
		order = "a[lab1]",
		enabled = "false",
		energy_required = 5,
		ingredients =
		{
			{"copper-cable", 30},
			{"iron-gear-wheel", 10},
			{"transport-belt", 4}
		},
		result = "sct-lab-1"
	},
	
})

-- Rework vanilla science lab into a Tier 1 science lab.
data.raw["item"]["lab"].subgroup = "sct-labs"
data.raw["item"]["lab"].order = "a[lab1]"
data.raw["item"]["lab"].icon = "__ScienceCostTweaker__/graphics/sct-lab-1/icon.png"

data.raw["lab"]["lab"].icon = "__ScienceCostTweaker__/graphics/sct-lab-1/icon.png"
data.raw["lab"]["lab"].collision_box = {{-1.2, -1.2}, {1.2, 1.2}}
data.raw["lab"]["lab"].selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
data.raw["lab"]["lab"].on_animation =
	{
		filename = "__ScienceCostTweaker__/graphics/sct-lab-1/entity.png",
		width = 113,
		height = 91,
		frame_count = 33,
		line_length = 11,
		animation_speed = 1 / 3,
		shift = {0.2, 0.15}
	}
data.raw["lab"]["lab"].off_animation =
	{
		filename = "__ScienceCostTweaker__/graphics/sct-lab-1/entity.png",
		width = 113,
		height = 91,
		frame_count = 1,
		shift = {0.2, 0.15}
	}
data.raw["lab"]["lab"].energy_usage = "60kW"
data.raw["lab"]["lab"].inputs =
	{
		"science-pack-1"
	}
data.raw["lab"]["lab"].module_specification =
	{
		module_slots = 0,
		max_entity_info_module_icons_per_row = 3,
		max_entity_info_module_icon_rows = 1,
		module_info_icon_shift = {0, 0.9}
	}
data.raw["lab"]["lab"].fast_replaceable_group = "lab"

-- Backwards compatibility: Ensure the standard lab recipe is enabled.
data.raw.recipe["lab"].enabled = "true"
-- Note: A lot of mods adjust the standard lab prototype and entity. Keep changes to it to a minimal.
	
-- Make technology research enable the Tier 3 and Tier 4 laboratories.
-- ===================================================================
-- Tier 3, enabled by Advanced Electronics research (which is also enables science pack 3)
table.insert(data.raw.technology["advanced-electronics"].effects,{type = "unlock-recipe", recipe = "sct-lab-3"})
-- Tier 4, enabled by Advanced Electronics 2 research (which is also enables high tech science pack)
table.insert(data.raw.technology["advanced-electronics-2"].effects,{type = "unlock-recipe", recipe = "sct-lab-4"})