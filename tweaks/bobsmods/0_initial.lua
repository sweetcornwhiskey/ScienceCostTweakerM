if mods["bobtech"] then
	require("science_bobmods_logistic")
	if mods["bobenemies"] and settings.startup["bobmods-enemies-enableartifacts"] and settings.startup["bobmods-enemies-enableartifacts"].value then
		require("science_bobmods_alien")
	end	
end
