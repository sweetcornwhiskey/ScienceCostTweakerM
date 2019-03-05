for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
  
	if (force.technologies["chemical-science-pack"] and force.technologies["chemical-science-pack"].researched) then
		force.recipes["sct-waste-processing-copper"].enabled = true
	end
	if ((force.technologies["military-science-pack"] and force.technologies["military-science-pack"].researched) or 
		(force.technologies["utility-science-pack"] and force.technologies["utility-science-pack"].researched) or
		(force.technologies["production-science-pack"] and force.technologies["production-science-pack"].researched)) then
		force.recipes["sct-waste-processing-copper"].enabled = true
		force.recipes["sct-waste-processing-mixed"].enabled = true
	end
end
