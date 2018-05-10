for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
  
	if (force.technologies["automation-2"] and force.technologies["automation-2"].researched) then
		force.recipes["sct-lab2-construction"].enabled = true
		force.recipes["sct-lab2-automatization"].enabled = true
	end
	
	if (force.technologies["advanced-electronics"] and force.technologies["advanced-electronics"].researched) then
		force.recipes["sct-lab3-construction"].enabled = true
		force.recipes["sct-lab3-optics"].enabled = true
	end

	if (force.technologies["advanced-electronics-2"] and force.technologies["advanced-electronics-2"].researched) then
		force.recipes["sct-lab4-construction"].enabled = true
		force.recipes["sct-lab4-manipulators"].enabled = true
	end
end
