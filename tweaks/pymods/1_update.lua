if mods["pyfusionenergy"] then
require("pycontainer")
	-- copy py recipe onto new one, and make it ingredient
	pycontainer = table.deepcopy(data.raw["recipe"]["production-science-pack"])
	pycontainer.name = "sct-prod-pycontainer"
	pycontainer.subgroup = "sct-sciencepack-prod"
	pycontainer.icon = "__ScienceCostTweakerM__/graphics/pymods/sct-prod-pycontainer.png"
	pycontainer.order = "h[prod]-f[pycontainer]"
	pycontainer.localised_name = "Fusion compound container"
	if (pycontainer.results) then
		pycontainer.results = 		
		{
			{ type = "item", name="sct-prod-pycontainer", amount=3 }
		}
	else
		pycontainer.result = "sct-prod-pycontainer"
	end
	
	data.raw["recipe"]["sct-prod-pycontainer"] = pycontainer
	
	if (data.raw.technology["diamond-mining"]) then
		table.insert(data.raw.technology["diamond-mining"].effects,{type = "unlock-recipe", recipe = "sct-prod-pycontainer"})
	end
	
	data.raw["recipe"]["production-science-pack"].expensive =
	{
		ingredients =
		{
			{"sct-prod-bioprocessor", 3},
			{"sct-prod-overclocker", 2},
			{"sct-prod-pycontainer", 2},
		},
		results =
		{
			{ type="item", amount=2, name="production-science-pack" },
		},
		energy_required = 15,
		enabled = false,
	}
	data.raw["recipe"]["production-science-pack"].normal =
	{
		ingredients =
		{
			{"sct-prod-bioprocessor", 1},
			{"sct-prod-overclocker", 1},
			{"sct-prod-pycontainer", 1},
		},
		results =
		{
			{ type="item", amount=2, name="production-science-pack" },
		},
		energy_required = 6,
		enabled = false,
	}
	data.raw["recipe"]["production-science-pack"].ingredients = nil
	data.raw["recipe"]["production-science-pack"].subgroup = "sct-sciencepack-prod"
	data.raw["recipe"]["production-science-pack"].order = "h[prod]-a[production-science-pack]"	
end