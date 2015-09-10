require("config")

-- If enabled, then use the new labs
if (sciencecosttweaker.options.useTieredLabs == true) then
	require("tweaks.newlabs")
end

if (sciencecosttweaker.options.bobsmods.useNewOres == true) then
	if (data.raw["item"]["resin"] and data.raw["item"]["glass"] and data.raw["item"]["silicon-wafer"] and data.raw["item"]["brass-alloy"]) then
		require("tweaks.bobsmods.bobsmodsfinal")
	end
end

if (sciencecosttweaker.options.difficultyCost ~= "noadjustment") then

	-- Select the cost file depending on which one is requested.
	costConfig = "configs.costs." .. sciencecosttweaker.options.difficultyCost
	require(costConfig)

	-- Iterate through all research, and update the costs as configured.
	for index,tech in pairs(data.raw.technology) do 
		-- First, determine the tier of the research, by looking at what types of science packs is used in its research cost.
		-- Tier 1 = Any research that contains only red science packs
		-- Tier 2 = Any research that contains green science packs
		-- Tier 3 = Any research that contains blue science packs
		-- Tier 4 = Any research that contains (bobstech) dark-blue science packs
		-- Tier 5 = Any research that contains (bobstech) gold science packs
		-- Tier 6 = Any research that contains (bobsmodules) module circuit boards
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
			if (tier < 99 and (tech.unit.ingredients[Index][1] == "module-circuit-board" or tech.unit.ingredients[Index][1] == "speed-processor" or tech.unit.ingredients[Index][1] == "effectivity-processor" or tech.unit.ingredients[Index][1] == "productivity-processor" or tech.unit.ingredients[Index][1] == "pollution-clean-processor" or tech.unit.ingredients[Index][1] == "pollution-create-processor") )  then
				tier = 99
				multiplier = sciencecosttweaker.costs.bobmodules;
			end
			if (tier < 99 and (tech.unit.ingredients[Index][1] == "tenemut" or tech.unit.ingredients[Index][1] == "dark-matter-scoop" or tech.unit.ingredients[Index][1] == "dark-matter-transducer" or tech.unit.ingredients[Index][1] == "matter-conduit") )  then
				tier = 99
				multiplier = sciencecosttweaker.costs.darkmatter;
			end
		end

		local unitCopy = table.deepcopy( tech.unit )

		-- Now adjust by the modifiers for this tier
		unitCopy.count = math.max(math.floor(unitCopy.count * multiplier.stepCount), 1);
		unitCopy.time = math.max(unitCopy.time * multiplier.time, 1);
		
		for Index, Value in ipairs( unitCopy.ingredients ) do
			-- For each type of science pack, multiply its count per research step by the given multiplier
			local ingredientName = Value[1]
			if (multiplier.cost[ingredientName] ~= nil) then
				local ingredientCostCount = Value[2]
				local mult = 1
				
				mult = multiplier.cost[ingredientName]
				ingredientCostCount = math.floor(ingredientCostCount * mult)
				ingredientCostCount = math.max(ingredientCostCount, 0);
				
				Value[2] = ingredientCostCount
			end
		end
		
		tech.unit = unitCopy
		
	end
end