for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()

	if	force.technologies["sct-lab-t1"] then
--		log(serpent.block(force.technologies["sct-lab-t1"]))
		if
			force.technologies["sct-lab-t1"].valid and 
			force.technologies["sct-lab-t1"].enabled and (
				force.technologies["sct-lab-t1"].researched == false and (
					not force.technologies["sct-lab-t1"].prerequisites or 
					table_size(force.technologies["sct-lab-t1"].prerequisites) == 0
				)
			)
		then
			force.technologies["sct-lab-t1"].researched = true
		end
	end

	if force.technologies["sct-automation-science-pack"] then
--		log(serpent.block(force.technologies["sct-automation-science-pack"]))
		if 
			force.technologies["sct-automation-science-pack"] and
			force.technologies["sct-automation-science-pack"].valid and 
			force.technologies["sct-automation-science-pack"].enabled and (
				force.technologies["sct-automation-science-pack"].researched == false and (
					force.technologies["sct-automation-science-pack"].prerequisites == nil or 
					force.technologies["sct-automation-science-pack"].prerequisites == false or
					table_size(force.technologies["sct-automation-science-pack"].prerequisites) == 0 or (
						table_size(force.technologies["sct-automation-science-pack"].prerequisites) == 1 and
						force.technologies["sct-automation-science-pack"].prerequisites["sct-lab-t1"] and
						force.technologies["sct-lab-t1"].researched
					)
				)
			)
		then
			force.technologies["sct-automation-science-pack"].researched = true
		end	  	
	end
end
