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

	if force.technologies["sct-research-t1"] then
--		log(serpent.block(force.technologies["sct-research-t1"]))
		if 
			force.technologies["sct-research-t1"] and
			force.technologies["sct-research-t1"].valid and 
			force.technologies["sct-research-t1"].enabled and (
				force.technologies["sct-research-t1"].researched == false and (
					force.technologies["sct-research-t1"].prerequisites == nil or 
					force.technologies["sct-research-t1"].prerequisites == false or
					table_size(force.technologies["sct-research-t1"].prerequisites) == 0 or (
						table_size(force.technologies["sct-research-t1"].prerequisites) == 1 and
						force.technologies["sct-research-t1"].prerequisites["sct-lab-t1"] and
						force.technologies["sct-lab-t1"].researched
					)
				)
			)
		then
			force.technologies["sct-research-t1"].researched = true
		end	  	
	end
	
	if force.technologies["sct-research-t1"] and force.technologies["sct-research-t1"].researched and force.recipes["sct-t1-pybotle"] then
		force.recipes["sct-t1-pybotle"].enabled = true
	end
	if force.technologies["sct-research-t2"] and force.technologies["sct-research-t2"].researched and force.recipes["sct-t2-pychip"] then
		force.recipes["sct-t2-pychip"].enabled = true
	end
	if force.technologies["sct-research-t3"] and force.technologies["sct-research-t3"].researched and force.recipes["sct-t3-pybatery"] then
		force.recipes["sct-t3-pybatery"].enabled = true
	end
end
