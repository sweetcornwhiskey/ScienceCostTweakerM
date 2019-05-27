-- fixes
--[[
	sctm.debug(serpent.block(data.raw.recipe["sct-t1-pybotle"]))
	sctm.debug(serpent.block(data.raw.recipe["automation-science-pack"]))
	sctm.debug(serpent.block(data.raw.recipe["sct-t2-pychip"]))
	sctm.debug(serpent.block(data.raw.recipe["logistic-science-pack"]))
	sctm.debug(serpent.block(data.raw.recipe["sct-t3-pybatery"]))
	sctm.debug(serpent.block(data.raw.recipe["chemical-science-pack"]))
	sctm.debug(serpent.block(data.raw.recipe["sct-prod-pycontainer"]))
	sctm.debug(serpent.block(data.raw.recipe["production-science-pack"]))
	sctm.debug(serpent.block(data.raw.technology["automation-science-pack"]))
	sctm.debug(serpent.block(data.raw.technology["logistic-science-pack"]))
	sctm.debug(serpent.block(data.raw.technology["chemical-science-pack"]))
	sctm.debug(serpent.block(data.raw.technology["production-science-pack"]))
]]--
if mods["pypetroleumhandling"] then
	sctm.recipe_ingredient_remove("chemical-science-pack", "rubber")
	sctm.recipe_ingredient_add("sct-t3-pybatery", { type="item", name="rubber", amount=10}, { type="item", name="rubber", amount=10})
	sctm.tech_dependency_add("chemical-science-pack", "rubber")
end	
	