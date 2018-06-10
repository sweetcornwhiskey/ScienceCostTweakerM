if data.raw.technology["fuel-processing"] then	
	function fixfuel(fueltable, targettech)
		for _i, fueltofix in pairs (fueltable) do
			if data.raw.recipe[fueltofix] and data.raw.technology[targettech] then
				table.insert(data.raw.technology[targettech].effects, { type="unlock-recipe", recipe=fueltofix })
			end
			if data.raw.technology["fuel-processing"] and data.raw.technology["fuel-processing"].effects then
				for _j, eff in pairs(data.raw.technology["fuel-processing"].effects) do
					if eff.type == "unlock-recipe" and eff.recipe == fueltofix then
						table.remove(data.raw.technology["fuel-processing"].effects, _j)
						break
					end
				end
			end		
		end	
	end

	local aaibasicfuel =
	{
		"fuel-processor",
		"vehicle-fuel-from-coal",
		"vehicle-fuel-from-raw-wood",
	}
	fixfuel(aaibasicfuel, "sct-aai-basic-fuel-processing")
	
	local aaiadvancedfuel =
	{
		"vehicle-fuel-from-solid-fuel",
		"vehicle-fuel-from-pellet-coke",
--		"vehicle-fuel-from-solid-coke",
		"vehicle-fuel-from-rocket-booster",
	}
	fixfuel(aaiadvancedfuel, "sct-aai-advanced-fuel-processing")
	
	local aairocketfuel =
	{
		"vehicle-fuel-from-rocket-fuel",
		"vehicle-fuel-from-enriched-fuel",
	}
	fixfuel(aairocketfuel, "sct-aai-rocket-fuel-processing")
	
	local aainuclearfuel =
	{
		"vehicle-fuel-from-nuclear-fuel",
	}
	fixfuel(aainuclearfuel, "sct-aai-nuclear-fuel-processing")
	
	if data.raw.technology["sct-aai-basic-fuel-processing"] then
		table.insert(data.raw.technology["fuel-processing"].prerequisites, "sct-aai-basic-fuel-processing")
	end
end
--	log(serpent.block(data.raw.technology["fuel-processing"]))
	