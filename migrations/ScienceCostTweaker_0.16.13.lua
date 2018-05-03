for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
  
	if (force.technologies["automation-2"] and force.technologies["automation-2"].researched) then
		force.recipes["sct-lab-2"].enabled = true
		force.recipes["sct-t2-instruments"].enabled = true
		force.recipes["sct-t2-microcircuits"].enabled = true
		force.recipes["sct-t2-micro-wafer"].enabled = true
		force.recipes["sct-t2-wafer-stamp"].enabled = true
		force.recipes["sct-t2-reaction-nodes"].enabled = true
	end
end
