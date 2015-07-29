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


-- Adjust evolution factor to compensate for the slower technology gain.
data.raw["map-settings"]["map-settings"]["enemy_evolution"].time_factor = 0.0000008; -- 10 times slower. vanilla default: 0.000008
data.raw["map-settings"]["map-settings"]["enemy_evolution"].pollution_factor = 0.00003; -- Unchanged. vanilla default: 0.00003
data.raw["map-settings"]["map-settings"]["enemy_evolution"].destroy_factor = 0.005; -- Unchanged. vanilla default: 0.005

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

	timeMultiplier = 1.0; -- How much the time of the research is multiplied by
	countMultiplier = 2.0; -- How much the count (number of research steps) of the research is multiplied by
	costMultiplier = 1.0; -- How much the number of science packs per research-step of the research is multiplied by
	if (tier == 2) then
		timeMultiplier = 1.0;
		countMultiplier = 5.0;
		costMultiplier = 1.0;
	end
	if (tier == 3) then
		timeMultiplier = 1.0;
		countMultiplier = 10.0;
		costMultiplier = 1.0;
	end
	if (tier == 4) then
		timeMultiplier = 1.0;
		countMultiplier = 10.0;
		costMultiplier = 1.0;
	end
	if (tier == 5) then
		timeMultiplier = 1.0;
		countMultiplier = 10.0;
		costMultiplier = 1.0;
	end
	if (tier == 10) then
		timeMultiplier = 1.0;
		countMultiplier = 25.0;
		costMultiplier = 1.0;
	end

	local unitCopy = table.deepcopy( tech.unit )

	-- Now adjust by the modifiers for this tier
	unitCopy.count = math.max(math.floor(unitCopy.count * countMultiplier), 1);
	unitCopy.time = math.max(unitCopy.time * timeMultiplier, 1);
	
	for Index, Value in ipairs( unitCopy.ingredients ) do
		-- We do not increase the number of alien science packs required
		if Value[1] ~= "alien-science-pack" then
			Value[2] = math.floor(Value[2] * costMultiplier);
		end
		-- Unless the option for it is set in the config
		if (sciencecosttweaker.options.increaseAlienScienceCost == true) then
			if Value[1] == "alien-science-pack" then
				Value[2] = math.floor(Value[2] * costMultiplier);
			end
		end
    end
	
	tech.unit = unitCopy
	
end