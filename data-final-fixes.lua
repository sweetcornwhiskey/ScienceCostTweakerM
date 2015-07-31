require("config")

-- Select the cost file depending on which one is requested.
if (sciencecosttweaker.options.difficulty == "no adjustment") then
	require("costs.noadjustment")
elseif (sciencecosttweaker.options.difficulty == "lolwhat") then
	require("costs.lolwhat")
else
	require("costs.normal")
end

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

	tier = 1
	multiplier = sciencecosttweaker.costs.tier1;
	for Index, Value in pairs( tech.unit.ingredients ) do
		if (tier < 2 and tech.unit.ingredients[Index][1] == "science-pack-2") then
			tier = 2
			multiplier = sciencecosttweaker.costs.tier2;
		end
		if (tier < 3 and tech.unit.ingredients[Index][1] == "science-pack-3") then
			tier = 3
			multiplier = sciencecosttweaker.costs.tier3;
		end
		if (tier < 4 and tech.unit.ingredients[Index][1] == "science-pack-4") then
			tier = 4
			multiplier = sciencecosttweaker.costs.tier4;
		end
		if (tier < 5 and tech.unit.ingredients[Index][1] == "science-pack-gold") then
			tier = 5
			multiplier = sciencecosttweaker.costs.tier5;
		end
		if (tier < 10 and tech.unit.ingredients[Index][1] == "alien-science-pack") then
			tier = 10
			multiplier = sciencecosttweaker.costs.tier10;
		end
    end

	local unitCopy = table.deepcopy( tech.unit )

	-- Now adjust by the modifiers for this tier
	unitCopy.count = math.max(math.floor(unitCopy.count * multiplier.stepCount), 1);
	unitCopy.time = math.max(unitCopy.time * multiplier.time, 1);
	
	for Index, Value in ipairs( unitCopy.ingredients ) do
		-- For each type of science pack, multiply its count per research step by the given multiplier
		newCost = 0
		if Value[1] == "science-pack-1"  then
			newCost = math.floor(Value[2] * multiplier.cost.red)
		elseif Value[1] == "science-pack-2" then
			newCost = math.floor(Value[2] * multiplier.cost.green)
		elseif Value[1] == "science-pack-3" then
			newCost = math.floor(Value[2] * multiplier.cost.blue)
		elseif Value[1] == "science-pack-4" then
			newCost = math.floor(Value[2] * multiplier.cost.darkBlue)
		elseif Value[1] == "science-pack-gold" then
			newCost = math.floor(Value[2] * multiplier.cost.gold)
		elseif Value[1] == "alien-science-pack" then
			newCost = math.floor(Value[2] * multiplier.cost.alien)
		end
		newCost = math.max(newCost, 0);
		Value[2] = newCost
    end
	
	tech.unit = unitCopy
	
end