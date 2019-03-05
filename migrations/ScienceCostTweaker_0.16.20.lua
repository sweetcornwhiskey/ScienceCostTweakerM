for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
  
	if (force.technologies["sct-lab-t2"] and force.technologies["sct-lab-t2"].researched) then
		force.recipes["sct-lab2-construction"].enabled = true
		force.recipes["sct-lab2-automatization"].enabled = true
	end
	
	if (force.technologies["sct-lab-t3"] and force.technologies["sct-lab-t3"].researched) then
		force.recipes["sct-lab3-construction"].enabled = true
		force.recipes["sct-lab3-optics"].enabled = true
	end

	if (force.technologies["sct-lab-t4"] and force.technologies["sct-lab-t4"].researched) then
		force.recipes["sct-lab4-construction"].enabled = true
		force.recipes["sct-lab4-manipulators"].enabled = true
	end
end
