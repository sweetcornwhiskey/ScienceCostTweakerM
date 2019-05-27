if mods["pycoalprocessing"] then
	local pybotle = table.deepcopy(data.raw.recipe["automation-science-pack"])
	sctm.debug(serpent.block(data.raw.recipe["automation-science-pack"]))
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
	data.raw.item["sct-t1-pybotle"].icon = table.deepcopy(data.raw.tool["automation-science-pack"].icon)
	data.raw.item["sct-t1-pybotle"].icon_size = data.raw.tool["automation-science-pack"].icon_size
	sctm.recipe_result_replace("sct-t1-pybotle","automation-science-pack","sct-t1-pybotle")
	sctm.debug(serpent.block(data.raw.recipe["sct-t1-pybotle"]))
	sctm.debug(serpent.block(data.raw.item["sct-t1-pybotle"]))
	sctm.debug(serpent.block(data.raw.recipe["sct-automation-science-pack"]))
	local sp1 = table.deepcopy(data.raw.recipe["sct-automation-science-pack"])
	sp1.name = "automation-science-pack"
	if sp1.expensive then
		sp1.expensive.results[1].amount = 2
	end
	if sp1.normal then
		sp1.normal.results[1].amount = 2
	end
	data.raw.recipe["automation-science-pack"] = sp1
	sctm.recipe_ingredient_add("automation-science-pack", { type="item",name="sct-t1-pybotle",amount=2}, { type="item",name="sct-t1-pybotle",amount=2})
	sctm.tech_unlock_add("sct-automation-science-pack", "sct-t1-pybotle")
	sctm.debug(serpent.block(data.raw.recipe["automation-science-pack"]))
	sctm.debug(serpent.block(data.raw.technology["sct-automation-science-pack"]))

	local pychip = table.deepcopy(data.raw.recipe["logistic-science-pack"])
	pychip.name = "sct-t2-pychip"
	pychip.subgroup = "sct-sciencepack-2"
	pychip.order = "e[t2]-g[pychip]"
	data.raw.recipe["sct-t2-pychip"] = pychip
	data.raw.item["sct-t2-pychip"].icon = table.deepcopy(data.raw.tool["logistic-science-pack"].icon)
	data.raw.item["sct-t2-pychip"].icon_size = data.raw.tool["logistic-science-pack"].icon_size
	sctm.recipe_result_replace("sct-t2-pychip","logistic-science-pack","sct-t2-pychip")
	local sp2 = table.deepcopy(data.raw.recipe["sct-logistic-science-pack"])
	sp2.name = "logistic-science-pack"
	if sp2.expensive then
		sp2.expensive.results[1].amount = 2
	end
	if sp2.normal then
		sp2.normal.results[1].amount = 2
	end
	data.raw.recipe["logistic-science-pack"] = sp2
	sctm.recipe_ingredient_add("logistic-science-pack", { type="item",name="sct-t2-pychip",amount=2}, { type="item",name="sct-t2-pychip",amount=2})
	sctm.tech_unlock_add("sct-logistic-science-pack", "sct-t2-pychip")
	sctm.tech_dependency_add("logistic-science-pack", "coal-processing-1")

	-- copy py recipe onto new one, and make it ingredient
	local pybatery = table.deepcopy(data.raw.recipe["chemical-science-pack"])
	pybatery.name = "sct-t3-pybatery"
	pybatery.subgroup = "sct-sciencepack-3"
	pybatery.order = "f[t3]-h[pybatery]"
	data.raw.recipe["sct-t3-pybatery"] = pybatery
	data.raw.item["sct-t3-pybatery"].icon = table.deepcopy(data.raw.tool["chemical-science-pack"].icon)
	data.raw.item["sct-t3-pybatery"].icon_size = data.raw.tool["chemical-science-pack"].icon_size
	sctm.recipe_result_replace("sct-t3-pybatery","chemical-science-pack","sct-t3-pybatery")
	local sp3 = table.deepcopy(data.raw.recipe["sct-chemical-science-pack"])
	sp3.name = "chemical-science-pack"
	if sp3.expensive then
		sp3.expensive.results[1].amount = 2
	end
	if sp3.normal then
		sp3.normal.results[1].amount = 2
	end
	data.raw.recipe["chemical-science-pack"] = sp3
	sctm.recipe_ingredient_add("chemical-science-pack", { type="item", name="sct-t3-pybatery", amount=2}, { type="item", name="sct-t3-pybatery", amount=2})
	sctm.tech_unlock_add("sct-chemical-science-pack", "sct-t3-pybatery")
	sctm.tech_dependency_add("chemical-science-pack","fine-electronics")

	if mods["pyfusionenergy"] then
		-- copy py recipe onto new one, and make it ingredient
		local pycontainer = table.deepcopy(data.raw.recipe["production-science-pack"])
		pycontainer.name = "sct-prod-pycontainer"
		pycontainer.subgroup = "sct-sciencepack-prod"
		pycontainer.icon = "__ScienceCostTweakerM__/graphics/pymods/sct-prod-pycontainer.png"
		pycontainer.icon_size = 32
		pycontainer.order = "h[prod]-f[pycontainer]"
		
		data.raw.recipe["sct-prod-pycontainer"] = pycontainer
		sctm.recipe_result_replace("sct-prod-pycontainer","production-science-pack","sct-prod-pycontainer")
	
		local spp = table.deepcopy(data.raw.recipe["sct-production-science-pack"])
		spp.name = "production-science-pack"
		if spp.expensive then
			spp.expensive.results[1].amount = 4
		end
		if spp.normal then
			spp.normal.results[1].amount = 4
		end
		data.raw.recipe["production-science-pack"] = spp

		sctm.recipe_ingredient_add("production-science-pack", { type="item",name="sct-prod-pycontainer",amount=2}, { type="item",name="sct-prod-pycontainer",amount=2})
		sctm.tech_unlock_add("sct-production-science-pack", "sct-prod-pycontainer")
		sctm.tech_dependency_add("production-science-pack", "advanced-mining-facilities")
		sctm.tech_dependency_add("production-science-pack", "diamond-mining")
		sctm.tech_dependency_add("production-science-pack", "advanced-material-processing-2")
	end
end

if mods["pyhightech"] then
	sctm.tech_dependency_remove("sct-lab-t3","advanced-electronics")
	sctm.tech_dependency_add("sct-lab-t3","basic-electronics")
end
