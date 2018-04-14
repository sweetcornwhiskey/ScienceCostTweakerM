for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
  
	if (force.technologies["advanced-research"] and force.technologies["advanced-research"].researched) then
		force.recipes["sct-lab-4"].enabled = true
	end
end
