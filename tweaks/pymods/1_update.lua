if mods["pycoalprocessing"] then
	require("pyscience")

	local pybotle = table.deepcopy(data.raw.recipe["science-pack-1"])
	pybotle.name = "sct-t1-pybotle"
	pybotle.subgroup = "sct-sciencepack-1"
	pybotle.order = "d[t1]-d[pybotle]"
	pybotle.enabled = false
	if pybotle.expensive then
		pybotle.expensive.enabled = false
	end
	if pybotle.normal then
		pybotle.expensive.normal = false
	end
	data.raw.recipe["sct-t1-pybotle"] = pybotle
	data.raw.item["sct-t1-pybotle"].icon = table.deepcopy(data.raw.recipe["sct-t1-pybotle"].icon)
	data.raw.item["sct-t1-pybotle"].icon_size = data.raw.recipe["sct-t1-pybotle"].icon_size
	sctm.recipe_result_replace("sct-t1-pybotle","science-pack-1","sct-t1-pybotle")
	local sp1 = table.deepcopy(data.raw.recipe["sct-science-pack-t1"])
	sp1.name = "science-pack-1"
	sp1.expensive.results[1].amount = 2
	sp1.normal.results[1].amount = 2
	data.raw.recipe["science-pack-1"] = sp1
	sctm.recipe_ingredient_add("science-pack-1", { type="item",name="sct-t1-pybotle",amount=2}, { type="item",name="sct-t1-pybotle",amount=5})
	sctm.tech_unlock_add("sct-research-t1", "sct-t1-pybotle")

	local pychip = table.deepcopy(data.raw.recipe["science-pack-2"])
	pychip.name = "sct-t2-pychip"
	pychip.subgroup = "sct-sciencepack-2"
	pychip.order = "e[t2]-g[pychip]"
	data.raw.recipe["sct-t2-pychip"] = pychip
	data.raw.item["sct-t2-pychip"].icon = table.deepcopy(data.raw.recipe["sct-t2-pychip"].icon)
	data.raw.item["sct-t2-pychip"].icon_size = data.raw.recipe["sct-t2-pychip"].icon_size
	sctm.recipe_result_replace("sct-t2-pychip","science-pack-2","sct-t2-pychip")
	local sp2 = table.deepcopy(data.raw.recipe["sct-science-pack-t2"])
	sp2.name = "science-pack-2"
	sp2.expensive.results[1].amount = 2
	sp2.normal.results[1].amount = 2
	data.raw.recipe["science-pack-2"] = sp2
	sctm.recipe_ingredient_add("science-pack-2", { type="item",name="sct-t2-pychip",amount=2}, { type="item",name="sct-t2-pychip",amount=5})
	sctm.tech_unlock_add("sct-research-t2", "sct-t2-pychip")

	-- copy py recipe onto new one, and make it ingredient
	local pybatery = table.deepcopy(data.raw.recipe["science-pack-3"])
	pybatery.name = "sct-t3-pybatery"
	pybatery.subgroup = "sct-sciencepack-3"
	pybatery.order = "f[t3]-h[pybatery]"
	data.raw.recipe["sct-t3-pybatery"] = pybatery
	data.raw.item["sct-t3-pybatery"].icon = table.deepcopy(data.raw.recipe["sct-t3-pybatery"].icon)
	data.raw.item["sct-t3-pybatery"].icon_size = data.raw.recipe["sct-t3-pybatery"].icon_size
	sctm.recipe_result_replace("sct-t3-pybatery","science-pack-3","sct-t3-pybatery")
	local sp3 = table.deepcopy(data.raw.recipe["sct-science-pack-t3"])
	sp3.name = "science-pack-3"
	sp3.expensive.results[1].amount = 2
	sp3.normal.results[1].amount = 2
	data.raw.recipe["science-pack-3"] = sp3
	sctm.recipe_ingredient_add("science-pack-3", { type="item",name="sct-t3-pybatery",amount=2}, { type="item",name="sct-t3-pybatery",amount=5})
	sctm.tech_unlock_add("sct-research-t3", "sct-t3-pybatery")

	if mods["pyfusionenergy"] then
		require("pycontainer")
		-- copy py recipe onto new one, and make it ingredient
		local pycontainer = table.deepcopy(data.raw.recipe["production-science-pack"])
		pycontainer.name = "sct-prod-pycontainer"
		pycontainer.subgroup = "sct-sciencepack-prod"
		pycontainer.icon = "__ScienceCostTweakerM__/graphics/pymods/sct-prod-pycontainer.png"
		pycontainer.order = "h[prod]-f[pycontainer]"
		
		data.raw.recipe["sct-prod-pycontainer"] = pycontainer
		sctm.recipe_result_replace("sct-prod-pycontainer","production-science-pack","sct-prod-pycontainer")
	
		local spp = table.deepcopy(data.raw.recipe["sct-science-pack-prod"])
		spp.name = "production-science-pack"
		spp.expensive.results[1].amount = 4
		spp.normal.results[1].amount = 4
		data.raw.recipe["production-science-pack"] = spp
		sctm.recipe_ingredient_add("production-science-pack", { type="item",name="sct-prod-pycontainer",amount=2}, { type="item",name="sct-prod-pycontainer",amount=5})

		sctm.tech_unlock_add("sct-research-prod", "sct-prod-pycontainer")
		if not sctm.tech_dependency_add("sct-research-prod", "diamond-mining") then
			sctm.tech_dependency_add("sct-research-prod", "advanced-material-processing-2")
		end
	end
end

if mods["pyhightech"] then
	sctm.tech_dependency_remove("sct-lab-t3","advanced-electronics")
	sctm.tech_dependency_add("sct-lab-t3","basic-electronics")
end
