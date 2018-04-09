for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
  
	if (force.technologies["advanced-electronics"] and force.technologies["advanced-electronics"].researched) then
		force.recipes["sct-waste-processing-copper"].enabled = true
	end
	if (force.technologies["military-2"] and force.technologies["military-2"].researched) then
		force.recipes["sct-waste-processing-copper"].enabled = true
		force.recipes["sct-waste-processing-mixed"].enabled = true
	end
	if (force.technologies["advanced-electronics-2"] and force.technologies["advanced-electronics-2"].researched) then
		force.recipes["sct-waste-processing-copper"].enabled = true
	end
	if (force.technologies["advanced-material-processing-2"] and force.technologies["advanced-material-processing-2"].researched) then
		force.recipes["sct-waste-processing-copper"].enabled = true
	end
end
