if mods["bobtech"] then
	require("science_bobmods_logistic")
	require("science_bobmods_tech")
	if mods["bobenemies"] and settings.startup["bobmods-enemies-enablenewartifacts"] and settings.startup["bobmods-enemies-enablenewartifacts"].value and settings.startup["bobmods-enemies-enableartifacts"] and settings.startup["bobmods-enemies-enableartifacts"].value then
		require("science_bobmods_alien")
	end	
end

if mods["bobmodules"]then
	require("science_bobmods_modules")
end

if mods["boblogistics"] then
	if settings.startup["bobmods-logistics-inserteroverhaul"] and settings.startup["bobmods-logistics-inserteroverhaul"].value then
		sctm.tech_dependency_remove("sct-lab-t2", "fast-inserter")
		sctm.tech_dependency_add("sct-lab-t2", "electronics")
	end
end
