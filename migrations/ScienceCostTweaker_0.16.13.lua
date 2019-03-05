for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
  
	if (force.technologies["logistic-science-pack"] and force.technologies["logistic-science-pack"].researched) then
		if force.recipes["sct-lab-2"] then
			force.recipes["sct-lab-2"].enabled = true
		elseif force.recipes["sct-lab-t2"] then
			force.recipes["sct-lab-t2"].enabled = true
		end

		force.recipes["sct-t2-instruments"].enabled = true
		force.recipes["sct-t2-microcircuits"].enabled = true
		force.recipes["sct-t2-micro-wafer"].enabled = true
		force.recipes["sct-t2-wafer-stamp"].enabled = true
		force.recipes["sct-t2-reaction-nodes"].enabled = true
	end
end
