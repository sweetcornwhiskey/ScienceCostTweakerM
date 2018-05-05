data:extend({
	{
		type = "recipe",
		name = "sct-lab-1",
		subgroup = "sct-labs",
		order = "b[labs]-a[sct-lab1]",
		enabled = "true",
		energy_required = 5,
		expensive =
		{
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
		subgroup = "sct-labs",
		order = "b[labs]-a[sct-lab1]",
	},

	{
		type = "recipe",
		name = "sct-lab-2",
		enabled = "false",
		energy_required = 5,
		expensive =
		{
			ingredients =
			{
				{"lab", 1},
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
			ingredients =
			{
				{"lab", 1},
				{"sct-lab2-construction", 2},
				{"sct-lab2-automatization", 1},
			},
			results =
			{
				{ type="item", amount=1, name="sct-lab-2",},
			},
		},
		subgroup = "sct-labs",
		order = "b[labs]-b[lab2]",
	},

	{
		type = "recipe",
		name = "sct-lab-3",
		enabled = "false",
		energy_required = 5,
		expensive =
		{
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
		subgroup = "sct-labs",
		order = "b[labs]-c[lab3]",
	},

	{
		type = "recipe",
		name = "sct-lab-4",
		enabled = "false",
		energy_required = 5,
		expensive =
		{
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
		subgroup = "sct-labs",
		order = "b[labs]-d[lab4]",
	},
})

data.raw.recipe["lab"].order = "b[labs]-a[lab]"
data.raw.recipe["lab"].subgroup = "sct-labs"
