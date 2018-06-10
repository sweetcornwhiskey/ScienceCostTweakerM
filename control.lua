local sct = {}

sct.unlockstart = function(playerforce)
	if
		playerforce.technologies["sct-lab-t1"].valid and 
		playerforce.technologies["sct-lab-t1"].enabled and (
			playerforce.technologies["sct-lab-t1"].researched == false and (
				playerforce.technologies["sct-lab-t1"].prerequisites == nil or 
				playerforce.technologies["sct-lab-t1"].prerequisites == false or 
				table_size(playerforce.technologies["sct-lab-t1"].prerequisites) == 0
			)
		)
	then
		playerforce.technologies["sct-lab-t1"].researched = true
	end

	if 
		playerforce.technologies["sct-research-t1"].valid and 
		playerforce.technologies["sct-research-t1"].enabled and (
			playerforce.technologies["sct-research-t1"].researched == false and (
				playerforce.technologies["sct-research-t1"].prerequisites == nil or 
				playerforce.technologies["sct-research-t1"].prerequisites == false or
				table_size(playerforce.technologies["sct-research-t1"].prerequisites) == 0 or (
					table_size(playerforce.technologies["sct-research-t1"].prerequisites) == 1 and
					playerforce.technologies["sct-research-t1"].prerequisites["sct-lab-t1"] and
					playerforce.technologies["sct-lab-t1"].researched
				)
			)
		)
	then
		playerforce.technologies["sct-research-t1"].researched = true
	end	
end

script.on_event(defines.events.on_player_joined_game, function(e)
	sct.unlockstart(game.players[e.player_index].force)
end)