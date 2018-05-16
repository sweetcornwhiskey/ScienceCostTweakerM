for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()

	if force.technologies["gardens"] and force.technologies["gardens"].researched then
		force.recipes["sct-sciencepack-bio"].enabled = true
		force.recipes["sct-bio-ground-sample"].enabled = true
		force.recipes["sct-bio-sample-scaffold"].enabled = true
		force.recipes["sct-bio-sample-filling"].enabled = true
	end
end
