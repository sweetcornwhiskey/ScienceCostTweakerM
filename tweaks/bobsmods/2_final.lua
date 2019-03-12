if mods["bobtech"] then
	sctm.tech_pack_add("sct-space-science-pack", {"advanced-logistic-science-pack",5})
	sctm.recipe_ingredient_remove("chemical-science-pack", "sodium-hydroxide")
	sctm.recipe_ingredient_remove("production-science-pack", "chemical-plant")
	sctm.recipe_ingredient_remove("production-science-pack", "assembling-machine-2")
	sctm.recipe_ingredient_remove("utility-science-pack", "silver-zinc-battery")
	sctm.recipe_ingredient_remove("utility-science-pack", "processing-unit")
	sctm.recipe_ingredient_remove("utility-science-pack", "titanium-bearing")
end

if mods["boblogistics"] then
	sctm.tech_pack_remove("logistics-3","production-science-pack")
	sctm.tech_dependency_remove("logistics-3","production-science-pack")
	if settings.startup["bobmods-logistics-inserteroverhaul"] and settings.startup["bobmods-logistics-inserteroverhaul"].value then
		if mods["omnimatter"] then
			sctm.recipe_ingredient_replace("sct-lab2-automatization", "fast-inserter", "inserter")
		else
			if data.raw.recipe["yellow-filter-inserter"] then
				sctm.recipe_ingredient_replace("sct-lab2-automatization", "fast-inserter", "yellow-filter-inserter")
				sctm.tech_dependency_remove("sct-lab-t2", "fast-inserter")
			else
				sctm.recipe_ingredient_replace("sct-lab2-automatization", "fast-inserter", "inserter")
			end
		end
--		sctm.tech_pack_add("stack-inserter-2", {"production-science-pack",1})
--		sctm.log(serpent.block(data.raw.recipe["sct-lab4-manipulators"]))
--		sctm.recipe_ingredient_replace("sct-lab4-manipulators", "stack-filter-inserter", "red-stack-filter-inserter")
		sctm.tech_dependency_add("sct-lab-t4", "stack-inserter-2")
	end
	if settings.startup["bobmods-logistics-beltoverhaul"] and settings.startup["bobmods-logistics-beltoverhaul"].value then
		 sctm.recipe_ingredient_replace("sct-lab1-mechanization", "transport-belt", "basic-transport-belt")
	end
end

if mods["bobplates"] then
	sctm.recipe_ingredient_remove("chemical-science-pack", "bronze-alloy")
	sctm.recipe_ingredient_remove("utility-science-pack", "lithium-ion-battery")
	sctm.recipe_ingredient_remove("utility-science-pack", "silicon-nitride")
end
	
if mods["bobmodules"] then
	if sctm.tech_dependency_remove("modular-armor","modules") then
		sctm.tech_dependency_add("modular-armor","advanced-electronics")
	end
	
	if sctm.tech_dependency_remove("modules","advanced-electronics") then
		sctm.tech_dependency_add("modules","sct-lab-modules")
	end
	sctm.tech_unlock_remove("modules", "lab-module")
	sctm.tech_unlock_remove("modules", "module-processor-board")
	sctm.tech_unlock_remove("modules", "effectivity-processor")
	sctm.tech_unlock_remove("modules", "speed-processor")
	sctm.tech_unlock_remove("modules", "productivity-processor")
	
	sctm.tech_dependency_remove("bodies","modules")
end