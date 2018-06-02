for index, force in pairs(game.forces) do
	force.reset_technologies()

	if 
		force.technologies["steel-processing"] and force.technologies["steel-processing"].researched and 
		force.technologies["logistics"] and force.technologies["logistics"].researched 
	then
		force.technologies["sct-lab-t2"].researched = true
	end
	if 
		force.technologies["automation-2"] and force.technologies["automation-2"].researched and 
		force.technologies["sct-lab-t2"] and force.technologies["sct-lab-t2"].researched 
	then
		force.technologies["sct-research-t2"].researched = true
	end

	if 
		force.technologies["oil-processing"] and force.technologies["oil-processing"].researched and 
		force.technologies["advanced-electronics"] and force.technologies["advanced-electronics"].researched and 
		force.technologies["solar-energy"] and force.technologies["solar-energy"].researched and 
		force.technologies["sct-lab-t2"] and force.technologies["sct-lab-t2"].researched 
	then
		force.technologies["sct-lab-t3"].researched = true
	end
	if 
		force.technologies["sct-research-t2"] and force.technologies["sct-research-t2"].researched and 
		force.technologies["sct-lab-t3"] and force.technologies["sct-lab-t3"].researched 
	then
		force.technologies["sct-research-t3"].researched = true
	end
		
	if force.technologies["military-2"] and force.technologies["military-2"].researched then
		for prereq,_obj in pairs(force.technologies["sct-research-mil"].prerequisites) do
			--log(serpent.block(force.technologies["sct-research-mil"].prerequisites) .. " .. " .. i)
			if prereq == "sct-research-t2" and force.technologies["sct-research-t2"] and force.technologies["sct-research-t2"].researched then
				force.technologies["sct-research-mil"].researched = true
				break
			end
			if prereq == "sct-research-t3" and force.technologies["sct-research-t3"] and force.technologies["sct-research-t3"].researched then
				force.technologies["sct-research-mil"].researched = true
				break
			end
		end
	end
	
	if 
		force.technologies["sct-research-t3"] and force.technologies["sct-research-t3"].researched and 
		force.technologies["electric-engine"] and force.technologies["electric-engine"].researched and 
		force.technologies["circuit-network"] and force.technologies["circuit-network"].researched 
	then
		force.technologies["sct-research-prod"].researched = true
	end
	
	if 
		force.technologies["advanced-electronics-2"] and force.technologies["advanced-electronics-2"].researched and 
		force.technologies["nuclear-power"] and force.technologies["nuclear-power"].researched and 
		force.technologies["sct-lab-t3"] and force.technologies["sct-lab-t3"].researched 
	then
		force.technologies["sct-lab-t4"].researched = true
	end
	if 
		force.technologies["battery"] and force.technologies["battery"].researched and 
		force.technologies["advanced-material-processing"] and force.technologies["advanced-material-processing"].researched and 
		force.technologies["sct-research-t3"] and force.technologies["sct-research-t3"].researched and 
		force.technologies["sct-lab-t4"] and force.technologies["sct-lab-t4"].researched 
	then
		force.technologies["sct-research-ht"].researched = true
	end

	force.reset_recipes()
end
