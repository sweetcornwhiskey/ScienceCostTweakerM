for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
  
	if (force.technologies["chemical-science-pack"] ~= nil) then
		if (force.technologies["chemical-science-pack"].researched) then
			force.recipes["sct-t3-flash-fuel"].enabled = true
			force.recipes["sct-t3-laser-foci"].enabled = true
			force.recipes["sct-t3-laser-emitter"].enabled = true
			force.recipes["sct-t3-femto-lasers"].enabled = true
			force.recipes["sct-t3-atomic-sensors"].enabled = true
		end
	end
	if (force.technologies["military-science-pack"] ~= nil) then
		if (force.technologies["military-science-pack"].researched) then
			force.recipes["sct-mil-subplating"].enabled = true
			force.recipes["sct-mil-plating"].enabled = true
			force.recipes["sct-mil-circuit1"].enabled = true
			force.recipes["sct-mil-circuit2"].enabled = true
			force.recipes["sct-mil-circuit3"].enabled = true
		end
	end
	if (force.technologies["production-science-pack"] ~= nil) then
		if (force.technologies["production-science-pack"].researched) then
			force.recipes["sct-prod-biosilicate"].enabled = true
			force.recipes["sct-prod-baked-biopaste"].enabled = true
			force.recipes["sct-prod-bioprocessor"].enabled = true
			force.recipes["sct-prod-overclocker"].enabled = true
		end
	end
	if (force.technologies["utility-science-pack"] ~= nil) then
		if (force.technologies["utility-science-pack"].researched) then
			force.recipes["sct-htech-capbank"].enabled = true
			force.recipes["sct-htech-random"].enabled = true
			force.recipes["sct-htech-injector"].enabled = true
		end
	end
end
