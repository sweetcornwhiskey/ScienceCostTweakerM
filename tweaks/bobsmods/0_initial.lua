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
