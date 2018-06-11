for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()

	if force.technologies["gardens"] and force.technologies["gardens"].researched then
		if force.recipes["sct-sciencepack-bio"] then
			force.recipes["sct-sciencepack-bio"].enabled = true
		end
		if force.recipes["sct-science-pack-bio"] then
			force.recipes["sct-science-pack-bio"].enabled = true
		end
		force.recipes["sct-bio-ground-sample"].enabled = true
		force.recipes["sct-bio-sample-scaffold"].enabled = true
		force.recipes["sct-bio-sample-filling"].enabled = true
	end
end
