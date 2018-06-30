if mods["boblogistics"] then
	if settings.startup["bobmods-logistics-inserteroverhaul"] and settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
		if mods["omnimatter"] then
			bobmods.lib.recipe.replace_ingredient("sct-lab2-automatization", "fast-inserter", "inserter")
		else
			if data.raw.recipe["yellow-filter-inserter"] then
				bobmods.lib.recipe.replace_ingredient("sct-lab2-automatization", "fast-inserter", "yellow-filter-inserter")
			else
				bobmods.lib.recipe.replace_ingredient("sct-lab2-automatization", "fast-inserter", "inserter")
			end
		end
	end
	if settings.startup["bobmods-logistics-beltoverhaul"] and settings.startup["bobmods-logistics-beltoverhaul"].value == true then
		 bobmods.lib.recipe.replace_ingredient("sct-lab1-mechanization", "transport-belt", "basic-transport-belt")
	end
end

if mods["bobplates"] then
	bobmods.lib.recipe.remove_ingredient("science-pack-3", "bronze-alloy")
	bobmods.lib.recipe.remove_ingredient("high-tech-science-pack", "lithium-ion-battery")
	bobmods.lib.recipe.remove_ingredient("high-tech-science-pack", "silicon-nitride")
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