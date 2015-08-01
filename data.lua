require("config")

if (sciencecosttweaker.options.useNewIntermediates == true) then
	require("tweaks.newintermediates")
	require("tweaks.tweakedsciencepacks")

	useOption = 1;
	if (sciencecosttweaker.options.bobsmods.useNewOres == true) then
		-- Check that both bobsmod tech and bobsmod plates is installed
		if (data.raw["lab"]["lab-2"] and data.raw["assembling-machine"]["electrolyser-3"]) then
			useOption = 2;
		end
	end

	-- Vanilla
	if useOption == 1 then
		require("tweaks.vanilla.vanilla")
	end

	-- Bob's Mods
	if useOption == 2 then
		require("tweaks.bobsmods.bobsmods")
	end
end

-- If enabled, then use the new labs
if (sciencecosttweaker.options.useTieredLabs == true) then
	require("tweaks.newlabs")
end

-- Select the cost file depending on which one is requested.
evoConfig = "configs.evolutions." + sciencecosttweaker.options.difficulty
require(evoConfig)

-- Adjust evolution factor according to the config option chosen.
data.raw["map-settings"]["map-settings"]["enemy_evolution"].time_factor = data.raw["map-settings"]["map-settings"]["enemy_evolution"].time_factor * sciencecosttweaker.options.adjustEvolution.timeMultiplier; -- vanilla default: 0.000008
data.raw["map-settings"]["map-settings"]["enemy_evolution"].pollution_factor = data.raw["map-settings"]["map-settings"]["enemy_evolution"].pollution_factor * sciencecosttweaker.options.adjustEvolution.pollutionMultiplier; -- vanilla default: 0.00003
data.raw["map-settings"]["map-settings"]["enemy_evolution"].destroy_factor = data.raw["map-settings"]["map-settings"]["enemy_evolution"].destroy_factor * sciencecosttweaker.options.adjustEvolution.killNestsMultiplier; -- vanilla default: 0.005
