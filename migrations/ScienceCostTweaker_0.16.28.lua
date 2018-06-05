for index, force in pairs(game.forces) do
--	force.reset_technologies()

--[[
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
		force.technologies["sct-research-prod"] and
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
		force.technologies["sct-research-ht"] and
		force.technologies["battery"] and force.technologies["battery"].researched and 
		force.technologies["advanced-material-processing"] and force.technologies["advanced-material-processing"].researched and 
		force.technologies["sct-research-t3"] and force.technologies["sct-research-t3"].researched and 
		force.technologies["sct-lab-t4"] and force.technologies["sct-lab-t4"].researched 
	then
		force.technologies["sct-research-ht"].researched = true
	end
	
	if force.technologies["sct-lab-modules"] and force.technologies["modules"] and force.technologies["modules"].researched then
		force.technologies["sct-lab-modules"].researched = true
	end

	if force.technologies["sct-lab-alien"] and force.technologies["alien-research"] and force.technologies["alien-research"].researched then
		force.technologies["sct-lab-alien"].researched = true
		force.technologies["sct-research-gold"].researched = true
		force.technologies["sct-research-alien"].researched = true
	end
]]--

	-- list needs to be ordered properly, so all technologies will unlock, failure in order will result in locked tech
	local techchecklist =
	{
		-- vanilla science
		"sct-lab-t2",
		"sct-research-t2",
		-- omni-pack inserted here
		"sct-research-omni",
		-- vanilla continue
		"sct-lab-t3",
		"sct-research-t3",
		"sct-research-mil",
		"sct-research-prod",
		"sct-lab-t4",
		"sct-research-t4",
		"sct-research-ht",
		-- angels
		"sct-research-bio",
		-- bobs
		"sct-lab-modules",
		"sct-research-logistic",
		"sct-lab-alien",
		"sct-research-gold",
		"sct-research-alien",
	}
	
	for _i, techtocheck in pairs(techchecklist) do
		if force.technologies[techtocheck] then
			log("tech:" .. techtocheck .. ":" .. (force.technologies[techtocheck].researched and 'true' or 'false') .. ":" .. serpent.block(force.technologies[techtocheck].prerequisites))
			local researched = true;
			for prereq, _obj in pairs(force.technologies[techtocheck].prerequisites) do
				log("pre:" .. prereq .. ":" .. (force.technologies[prereq].researched and 'true' or 'false'))
				researched = (researched and force.technologies[prereq].researched)
				log("newstate:" .. (researched and 'true' or 'false'))
			end
			force.technologies[techtocheck].researched = researched
			log("reslt:" .. techtocheck .. ":" .. (force.technologies[techtocheck].researched and 'true' or 'false'))
		end
	end

	force.reset_recipes()
end
