for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()

	if force.technologies["gardens"] and force.technologies["gardens"].researched then
		if force.recipes["sct-bio-science-pack"] then
			force.recipes["sct-bio-science-pack"].enabled = true
		end
		force.recipes["sct-bio-ground-sample"].enabled = true
		force.recipes["sct-bio-sample-scaffold"].enabled = true
		force.recipes["sct-bio-sample-filling"].enabled = true
	end
end
