for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
  
	if (force.technologies["advanced-electronics"] ~= nil) then
		if (force.technologies["advanced-electronics"].researched) then
			force.recipes["sct-t3-flash-fuel"].enabled = true
			force.recipes["sct-t3-laser-foci"].enabled = true
			force.recipes["sct-t3-laser-emitter"].enabled = true
			force.recipes["sct-t3-femto-lasers"].enabled = true
			force.recipes["sct-t3-atomic-sensors"].enabled = true
		end
	end
	if (force.technologies["military-2"] ~= nil) then
		if (force.technologies["military-2"].researched) then
			force.recipes["sct-mil-subplating"].enabled = true
			force.recipes["sct-mil-plating"].enabled = true
			force.recipes["sct-mil-circuit1"].enabled = true
			force.recipes["sct-mil-circuit2"].enabled = true
			force.recipes["sct-mil-circuit3"].enabled = true
		end
	end
	if (force.technologies["advanced-material-processing-2"] ~= nil) then
		if (force.technologies["advanced-material-processing-2"].researched) then
			force.recipes["sct-prod-biosilicate"].enabled = true
			force.recipes["sct-prod-bioprocessor"].enabled = true
			force.recipes["sct-prod-overclocker"].enabled = true
		end
	end
	if (force.technologies["advanced-research"] ~= nil) then
		if (force.technologies["advanced-research"].researched) then
			--[[
			force.recipes["sct-bm4-plating"].enabled = true
			force.recipes["sct-bm4-injector"].enabled = true
			force.recipes["sct-bm4-supercoils"].enabled = true
			force.recipes["sct-bm4-capbank"].enabled = true
			force.recipes["sct-bm4-part1"].enabled = true
			force.recipes["sct-bm4-part2"].enabled = true
			force.recipes["sct-bm4-part3"].enabled = true
			force.recipes["sct-bm4-part4"].enabled = true
			force.recipes["sct-bm4-part5"].enabled = true
			]]--
		end
	end
end
