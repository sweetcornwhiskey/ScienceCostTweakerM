data:extend({
	{
		type = "recipe",
		name = "sct-lab-1",
		subgroup = "sct-labs",
		order = "a[labs]-a[sct-lab-1]",
		expensive =
		{
			enabled = "true",
			energy_required = 12,
			ingredients =
			{
				{"sct-lab1-construction", 3},
				{"sct-lab1-mechanization", 2},
			},
			results =
			{
				{ type="item", amount=1, name="sct-lab-1",},
			},
		},
		normal = 
		{
			enabled = "true",
			energy_required = 5,
			ingredients =
			{
				{"sct-lab1-construction", 2},
				{"sct-lab1-mechanization", 1},
			},
			results =
			{
				{ type="item", amount=1, name="sct-lab-1",},
			},
		},
	},

	{
		type = "recipe",
		name = "sct-lab-2",
		subgroup = "sct-labs",
		order = "a[labs]-b[sct-lab-2]",
		expensive =
		{
			enabled = "false",
			energy_required = 12,
			ingredients =
			{
				{"sct-lab2-construction", 3},
				{"sct-lab2-automatization", 2},
			},
			results =
			{
				{ type="item", amount=1, name="sct-lab-2",},
			},
		},
		normal = 
		{
			enabled = "false",
			energy_required = 5,
			ingredients =
			{
				{"sct-lab2-construction", 2},
				{"sct-lab2-automatization", 1},
			},
			results =
			{
				{ type="item", amount=1, name="sct-lab-2",},
			},
		},
	},

	{
		type = "recipe",
		name = "sct-lab-3",
		subgroup = "sct-labs",
		order = "b[labs]-c[sct-lab-3]",
		expensive =
		{
			enabled = "false",
			energy_required = 12,
			ingredients =
			{
				{"sct-lab-2", 1},
				{"sct-lab3-construction", 3},
				{"sct-lab3-optics", 2},
			},
			results =
			{
				{ type="item", amount=1, name="sct-lab-3",},
			},
		},
		normal = 
		{
			enabled = "false",
			energy_required = 5,
			ingredients =
			{
				{"sct-lab-2", 1},
				{"sct-lab3-construction", 2},
				{"sct-lab3-optics", 1},
			},
			results =
			{
				{ type="item", amount=1, name="sct-lab-3",},
			},
		},
	},

	{
		type = "recipe",
		name = "sct-lab-4",
		subgroup = "sct-labs",
		order = "b[labs]-d[lab4]",
		expensive =
		{
			enabled = "false",
			energy_required = 12,
			ingredients =
			{
				{"sct-lab-3", 1},
				{"sct-lab4-construction", 3},
				{"sct-lab4-manipulators", 2},
			},
			results =
			{
				{ type="item", amount=1, name="sct-lab-4",},
			},
		},
		normal = 
		{
			enabled = "false",
			energy_required = 5,
			ingredients =
			{
				{"sct-lab-3", 1},
				{"sct-lab4-construction", 2},
				{"sct-lab4-manipulators", 1},
			},
			results =
			{
				{ type="item", amount=1, name="sct-lab-4",},
			},
		},
	},
})

data.raw.recipe["lab"].order = "b[labs]-a[lab]"
data.raw.recipe["lab"].subgroup = "sct-labs"

-- insert proper lab as ingredient for tier 2
if (settings.startup["sct-tier1-lab"] == "sct-lab-1") then
	table.insert(data.raw.recipe["sct-lab-2"].expensive.ingredients, { type="item", name="sct-lab-1", amount=1})
	table.insert(data.raw.recipe["sct-lab-2"].normal.ingredients, { type="item", name="sct-lab-1", amount=1})
else
	table.insert(data.raw.recipe["sct-lab-2"].expensive.ingredients, { type="item", name="lab", amount=1})
	table.insert(data.raw.recipe["sct-lab-2"].normal.ingredients, { type="item", name="lab", amount=1})
end
