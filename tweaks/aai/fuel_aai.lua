if mods["aai-industry"] then
	if data.raw.technology["fuel-processing"] then	
		function fixfuel(fueltable, targettech)
			for _i, fueltofix in pairs (fueltable) do
				if data.raw.recipe[fueltofix] and data.raw.technology[targettech] then
					sctm.tech_unlock_add(targettech, fueltofix)
					if data.raw.technology["fuel-processing"] and data.raw.technology["fuel-processing"].effects then
						sctm.tech_unlock_remove("fuel-processing", fueltofix)
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
			sctm.tech_dependency_add("fuel-processing", "sct-aai-basic-fuel-processing")
		end
	end
end
