-- Make resin craftable by hand, so that we can use it in science pack crafting.
data.raw.recipe["bob-resin-wood"].category = "crafting"

if (sciencecosttweaker.options.bobsmods.moreComplexBasicCircuits == true) then
	-- Make offshore pump not use basic circuit boards.
	data.raw.recipe["offshore-pump"].ingredients =
		{
			{"copper-cable", 6},
			{"pipe", 2},
			{"iron-gear-wheel", 2}
		}

	-- Make assembling machine tier 1 use no electronic circuits, so that automation can start without needing 4 types of research.
	data.raw.recipe["assembling-machine-1"].ingredients =
		{
			{"copper-cable", 6},
			{"iron-gear-wheel", 7},
			{"iron-plate", 12}
		}

	-- Make basic circuit boards require basic electronic components (tinned copper wire + carbon)
	data.raw.item["electronic-circuit"].icon = "__bobplates__/graphics/icons/basic-electronic-circuit-board.png"

	data.raw.recipe["electronic-circuit"].ingredients =
		{
			{"basic-circuit-board-base", 1},
			{"basic-electronic-components", 5},
			{"solder", 1},
		}

	-- Make basic electronic components craftable by hand, so that we can make basic circuits require them.
	data.raw.recipe["basic-electronic-components"].category = "crafting"

	-- Turn the usual electronic circuit boards (only ever used on beacons), into a different looking type.
	data.raw.recipe["basic-electronic-circuit-board"].icon = "__base__/graphics/icons/electronic-circuit.png"

	data:extend({
		{
			type = "item",
			name = "basic-circuit-board-base",
			icon = "__bobplates__/graphics/icons/basic-circuit-board.png",
			flags = {"goes-to-main-inventory"},
			subgroup = "bob-electronic-boards",
			order = "c-b1[basic-circuit-board-base]",
			stack_size = 200
		},
		{
			type = "recipe",
			name = "basic-circuit-board-base",
			ingredients =
			{
				{"wooden-board", 1},
				{"copper-cable", 3},
			},
			result = "basic-circuit-board-base",
		},
	})
end
