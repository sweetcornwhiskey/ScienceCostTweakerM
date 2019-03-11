for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()

    -- bobs ... missing migration
	if force.technologies["bob-logistics-0"] and force.technologies["logistics"] and force.technologies["logistics"].enabled and force.technologies["logistics"].researched then
		force.technologies["bob-logistics-0"].researched = true
	end

    -- fast stack inserters are prerequsite for lab2
    if force.technologies["fast-inserter"] and force.technologies["sct-lab-t2"] and force.technologies["sct-lab-t2"].enabled and force.technologies["sct-lab-t2"].researched then
        force.technologies["fast-inserter"].researched = true
	end
end
