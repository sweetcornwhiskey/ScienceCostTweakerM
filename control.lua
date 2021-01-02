local sct = {}

sct.unlockstart = function(playerforce)
--	log(serpent.block(playerforce.technologies["sct-lab-t1"]))
	if
		playerforce.technologies["sct-lab-t1"] and
		playerforce.technologies["sct-lab-t1"].valid and 
		playerforce.technologies["sct-lab-t1"].enabled and (
			playerforce.technologies["sct-lab-t1"].researched == false and (
				not playerforce.technologies["sct-lab-t1"].prerequisites or 
				table_size(playerforce.technologies["sct-lab-t1"].prerequisites) == 0
			)
		)
	then
		playerforce.technologies["sct-lab-t1"].researched = true
	end

--	log(serpent.block(playerforce.technologies["sct-automation-science-pack"]))
	if 
		playerforce.technologies["sct-automation-science-pack"] and
		playerforce.technologies["sct-automation-science-pack"].valid and 
		playerforce.technologies["sct-automation-science-pack"].enabled and (
			playerforce.technologies["sct-automation-science-pack"].researched == false and (
				playerforce.technologies["sct-automation-science-pack"].prerequisites == nil or 
				playerforce.technologies["sct-automation-science-pack"].prerequisites == false or
				table_size(playerforce.technologies["sct-automation-science-pack"].prerequisites) == 0 or (
					table_size(playerforce.technologies["sct-automation-science-pack"].prerequisites) == 1 and
					playerforce.technologies["sct-automation-science-pack"].prerequisites["sct-lab-t1"] and
					playerforce.technologies["sct-lab-t1"].researched
				)
			)
		)
	then
		playerforce.technologies["sct-automation-science-pack"].researched = true
	end	
end

script.on_event(defines.events.on_player_joined_game, function(e)
	sct.unlockstart(game.players[e.player_index].force)
end)

script.on_event(defines.events.on_player_created, function(e)
	sct.unlockstart(game.players[e.player_index].force)
end)
