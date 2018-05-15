if mods["bobtech"] then
	force.reset_recipes()
	force.reset_technologies()
	if (force.technologies["logistics-3"] and force.technologies["logistics-3"].researched) then
		force.recipes["sct-logistic-cargo-unit"].enabled = true
		force.recipes["sct-logistic-unimover"].enabled = true
		force.recipes["sct-logistic-automated-storage"].enabled = true
		force.recipes["sct-logistic-memory-unit"].enabled = true
	end
end

-- forgotten pyunlock from 0.16.20
if mods["pyfusionenergy"] then
	force.reset_recipes()
	force.reset_technologies()
	if (force.technologies["diamond-mining"] and force.technologies["diamond-mining"].researched) then
		force.recipes["sct-prod-pycontainer"].enabled = true
	end
end