for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
-- bobs specific recipe enable
	if (force.recipes["sct-logistic-cargo-unit"] and force.technologies["logistics-3"] and force.technologies["logistics-3"].researched) then
		force.recipes["sct-logistic-cargo-unit"].enabled = true
		force.recipes["sct-logistic-unimover"].enabled = true
		force.recipes["sct-logistic-automated-storage"].enabled = true
		force.recipes["sct-logistic-memory-unit"].enabled = true
	end

-- py specific recipe enable
	if (force.recipes["sct-prod-pycontainer"] and force.technologies["diamond-mining"] and force.technologies["diamond-mining"].researched) then
		force.recipes["sct-prod-pycontainer"].enabled = true
	end
end
