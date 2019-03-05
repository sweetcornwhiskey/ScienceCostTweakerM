for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
  
	if ((force.technologies["utility-science-pack"] and force.technologies["utility-science-pack"].researched) or
		(force.technologies["production-science-pack"] and force.technologies["production-science-pack"].researched)) then
		if force.recipes["sct-lab-4"] then
			force.recipes["sct-lab-4"].enabled = true
		elseif force.recipes["sct-lab-t4"] then
			force.recipes["sct-lab-t4"].enabled = true
		end
	end
end
