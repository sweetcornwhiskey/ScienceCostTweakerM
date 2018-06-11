for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
  
	if (force.technologies["advanced-research"] and force.technologies["advanced-research"].researched) then
		if force.recipes["sct-lab-4"] then
			force.recipes["sct-lab-4"].enabled = true
		elseif force.recipes["sct-lab-t4"] then
			force.recipes["sct-lab-t4"].enabled = true
		end
	end
end
