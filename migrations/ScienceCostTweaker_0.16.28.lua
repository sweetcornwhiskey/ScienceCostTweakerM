for index, force in pairs(game.forces) do
	-- list needs to be ordered properly, so all technologies will unlock, failure in order will result in locked tech
	local techchecklist =
	{
		-- vanilla science
		"sct-lab-t2",
		"logistic-science-pack",
		-- omni-pack inserted here
		"sct-research-omni",
		-- vanilla continue
		"sct-lab-t3",
		"chemical-science-pack",
		"military-science-pack",
		"production-science-pack",
		"sct-lab-t4",
		"utility-science-pack",
		"space-science-pack",
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
--			log("tech:" .. techtocheck .. ":" .. (force.technologies[techtocheck].researched and 'true' or 'false') .. ":" .. serpent.block(force.technologies[techtocheck].prerequisites))
			local researched = true;
			for prereq, _obj in pairs(force.technologies[techtocheck].prerequisites) do
--				log("pre:" .. prereq .. ":" .. (force.technologies[prereq].researched and 'true' or 'false'))
				researched = (researched and force.technologies[prereq].researched)
--				log("newstate:" .. (researched and 'true' or 'false'))
			end
			force.technologies[techtocheck].researched = researched
--			log("reslt:" .. techtocheck .. ":" .. (force.technologies[techtocheck].researched and 'true' or 'false'))
		end
	end

	force.reset_recipes()
end
