for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
  
	if (force.technologies["advanced-research"] ~= nil) then
		if (force.technologies["advanced-research"].researched) then
			force.recipes["sct-bm4-plating"].enabled = true
			force.recipes["sct-bm4-injector"].enabled = true
			force.recipes["sct-bm4-supercoils"].enabled = true
			force.recipes["sct-bm4-capbank"].enabled = true
			force.recipes["sct-bm4-part1"].enabled = true
			force.recipes["sct-bm4-part2"].enabled = true
			force.recipes["sct-bm4-part3"].enabled = true
			force.recipes["sct-bm4-part4"].enabled = true
			force.recipes["sct-bm4-part5"].enabled = true
		end
	end
end
