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