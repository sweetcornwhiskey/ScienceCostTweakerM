for index, force in pairs(game.forces) do
	force.reset_recipes()
	force.reset_technologies()
  
	if (force.technologies['battery'].researched) then
		force.recipes["sct-lab-3"].enabled = true
		
		force.recipes["sct-t3-flash-fuel"].enabled = true
		force.recipes["sct-t3-laser-foci"].enabled = true
		force.recipes["sct-t3-laser-emitter"].enabled = true
		force.recipes["sct-t3-femto-lasers"].enabled = true
		force.recipes["sct-t3-atomic-sensors"].enabled = true
	end
	if (force.technologies['alien-technology'].researched) then
		force.recipes["sct-lab-4"].enabled = true
		
		force.recipes["sct-t4-bioprocessor"].enabled = true
		force.recipes["sct-t4-overclocker"].enabled = true
	end
end
