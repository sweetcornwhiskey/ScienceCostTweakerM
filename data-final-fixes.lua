require("config")
require("tweaks.newintermediates")
require("tweaks.tweakedsciencepacks")

useOption = 1;
if (sciencecosttweaker.options.useBobsMods == true) then
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

-- If enabled, then use the new labs
if (sciencecosttweaker.options.useTieredLabs == true) then
	require("tweaks.newlabs")
end

-- If enabled, then adjust the evolution factors
if (sciencecosttweaker.options.adjustEvolution.enabled == true) then
	-- Adjust evolution factor to compensate for the slower technology gain.
	data.raw["map-settings"]["map-settings"]["enemy_evolution"].time_factor = data.raw["map-settings"]["map-settings"]["enemy_evolution"].time_factor * sciencecosttweaker.options.adjustEvolution.timeMultiplier; -- vanilla default: 0.000008
	data.raw["map-settings"]["map-settings"]["enemy_evolution"].pollution_factor = data.raw["map-settings"]["map-settings"]["enemy_evolution"].pollution_factor * sciencecosttweaker.options.adjustEvolution.pollutionMultiplier; -- vanilla default: 0.00003
	data.raw["map-settings"]["map-settings"]["enemy_evolution"].destroy_factor = data.raw["map-settings"]["map-settings"]["enemy_evolution"].destroy_factor * sciencecosttweaker.options.adjustEvolution.killNestsMultiplier; -- vanilla default: 0.005
end

-- Iterate through all research, and update the costs as configured.
for index,tech in pairs(data.raw.technology) do 
	-- First, determine the tier of the research, by looking at what types of science packs is used in its research cost.
	-- Tier 1 = Any research that contains only red science packs
	-- Tier 2 = Any research that contains green science packs
	-- Tier 3 = Any research that contains blue science packs
	-- Tier 4 = Any research that contains (bobstech) dark-blue science packs
	-- Tier 5 = Any research that contains (bobstech) gold science packs
	-- Tier 10 = Any research that contains alien science packs

	tier = 1;
	for Index, Value in pairs( tech.unit.ingredients ) do
		if (tier < 2 and tech.unit.ingredients[Index][1] == "science-pack-2") then
			tier = 2;
		end
		if (tier < 3 and tech.unit.ingredients[Index][1] == "science-pack-3") then
			tier = 3;
		end
		if (tier < 4 and tech.unit.ingredients[Index][1] == "science-pack-4") then
			tier = 4;
		end
		if (tier < 5 and tech.unit.ingredients[Index][1] == "science-pack-gold") then
			tier = 5;
		end
		if (tier < 10 and tech.unit.ingredients[Index][1] == "alien-science-pack") then
			tier = 10;
		end
    end

	multiplier = {};
	multiplier.time = 1.0; -- How much the time of the research is multiplied by
	multiplier.stepCount = 1.0; -- How much the count (number of research steps) of the research is multiplied by
	multiplier.cost = {}; -- How much the number of science packs per research-step of the research is multiplied by
	multiplier.cost.Red = 2.0; -- Multiplier to Red Science Packs
	multiplier.cost.Green = 2.0; -- Multiplier to Green Science Packs
	multiplier.cost.Blue = 2.0; -- Multiplier to Blue Science Packs
	multiplier.cost.DarkBlue = 2.0; -- Multiplier to Dark Blue Science Packs (Bob's Tech Mod)
	multiplier.cost.Gold = 2.0; -- Multiplier to Gold Science Packs (Bob's Tech Mod)
	multiplier.cost.Alien = 1.0; -- Multiplier to Alien Science Packs
	if (tier == 2) then
		multiplier.time = 1.0;
		multiplier.stepCount = 2.0;
		multiplier.cost.Red = 2.0;
		multiplier.cost.Green = 2.0;
		multiplier.cost.Blue = 2.0;
		multiplier.cost.DarkBlue = 2.0;
		multiplier.cost.Gold = 2.0;
		multiplier.cost.Alien = 1.0;
	end
	if (tier == 3) then
		multiplier.time = 1.0;
		multiplier.stepCount = 3.0;
		multiplier.cost.Red = 2.0;
		multiplier.cost.Green = 2.0;
		multiplier.cost.Blue = 2.0;
		multiplier.cost.DarkBlue = 2.0;
		multiplier.cost.Gold = 2.0;
		multiplier.cost.Alien = 1.0;;
	end
	if (tier == 4) then
		multiplier.time = 1.0;
		multiplier.stepCount = 3.0;
		multiplier.cost.Red = 2.0;
		multiplier.cost.Green = 2.0;
		multiplier.cost.Blue = 2.0;
		multiplier.cost.Alien = 1.0;
	end
	if (tier == 5) then
		multiplier.time = 1.0;
		multiplier.stepCount = 3.0;
		multiplier.cost.Red = 2.0;
		multiplier.cost.Green = 2.0;
		multiplier.cost.Blue = 2.0;
		multiplier.cost.DarkBlue = 2.0;
		multiplier.cost.Gold = 2.0;
		multiplier.cost.Alien = 1.0;
	end
	if (tier == 10) then
		multiplier.time = 1.0;
		multiplier.stepCount = 3.0;
		multiplier.cost.Red = 3.0;
		multiplier.cost.Green = 3.0;
		multiplier.cost.Blue = 3.0;
		multiplier.cost.DarkBlue = 3.0;
		multiplier.cost.Gold = 3.0;
		multiplier.cost.Alien = 1.0;
	end

	local unitCopy = table.deepcopy( tech.unit )

	-- Now adjust by the modifiers for this tier
	unitCopy.count = math.max(math.floor(unitCopy.count * multiplier.stepCount), 1);
	unitCopy.time = math.max(unitCopy.time * multiplier.time, 1);
	
	for Index, Value in ipairs( unitCopy.ingredients ) do
		-- For each type of science pack, multiply its count per research step by the given multiplier
		if Value[1] == "science-pack-1"  then
			Value[2] = math.floor(Value[2] * multiplier.cost.Red)
		elseif Value[1] == "science-pack-2" then
			Value[2] = math.floor(Value[2] * multiplier.cost.Green)
		elseif Value[1] == "science-pack-3" then
			Value[2] = math.floor(Value[2] * multiplier.cost.Blue)
		elseif Value[1] == "science-pack-4" then
			Value[2] = math.floor(Value[2] * multiplier.cost.DarkBlue)
		elseif Value[1] == "science-pack-gold" then
			Value[2] = math.floor(Value[2] * multiplier.cost.DarkBlue)
		elseif Value[1] == "alien-science-pack" then
			Value[2] = math.floor(Value[2] * multiplier.cost.Alien)
		end
    end
	
	tech.unit = unitCopy
	
end