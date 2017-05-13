require("config")
-- Cost requires
require("configs.costs.lolwhat")
require("configs.costs.uberwaffe")
require("configs.costs.normal")
require("configs.costs.extended")

-- Select the science pack config file as requested. Final data file.
	sciencepackConfig = "tweaks." .. sciencecosttweaker.options.sciencePackConfig .. ".2_final"
	require(sciencepackConfig)

if (settings.startup["sct-difficulty-cost"].value ~= "noadjustment") then

	-- Select the cost file depending on which one is requested.
	if not sciencecosttweaker then sciencecosttweaker = {} end
	sciencecosttweaker = sct_cost[settings.startup["sct-difficulty-cost"].value]

	-- Iterate through all research, and update the costs as configured.
	for index,tech in pairs(data.raw.technology) do 
		-- First, determine the tier of the research, by looking at what types of science packs is used in its research cost.
		-- Tier 1 = Any research that contains only red science packs
		-- Tier 2 = Any research that contains green science packs
		-- Tier 3 = Any research that contains blue science packs
		-- Tier 4 = Any research that contains (bobstech) dark-blue science packs
		-- Tier 5 = Any research that contains (bobstech) gold science packs
		-- Tier 10 = Any research that contains alien science packs
		-- Tier 99 = Special Case research. Does not use the science packs. Things like Bob's Modules research or Dark Matter Replication.

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
			if (tier < 4 and tech.unit.ingredients[Index][1] == "military-science-pack") then
				tier = 4
				multiplier = sciencecosttweaker.costs.military;
			end
			if (tier < 5 and tech.unit.ingredients[Index][1] == "production-science-pack") then
				tier = 5
				multiplier = sciencecosttweaker.costs.production;
			end
			if (tier < 6 and tech.unit.ingredients[Index][1] == "high-tech-science-pack") then
				tier = 6
				multiplier = sciencecosttweaker.costs.hightech;
			end
			if (tech.unit.count_formula ~= nil) then
				tier = 999999
				multiplier = sciencecosttweaker.costs.formula;
			end
		end

		-- If a multiplier is defined for this tier, then apply it.
		if (multiplier ~= nil) then
			local unitCopy = table.deepcopy( tech.unit )

			unitCopy.time = math.max(unitCopy.time * multiplier.time, 1);
				
			-- Now, since infinite research follows a slightly different layout, we have to account for that here.
			-- Only adjust the count if it has a count field
			if (unitCopy.count ~= nil) then
				-- Now adjust by the modifiers for this tier
				unitCopy.count = math.max(math.floor(unitCopy.count * multiplier.stepCount), 1);
			
				for Index, Value in ipairs( unitCopy.ingredients ) do
					-- For each type of science pack, multiply its count per research step by the given multiplier
					local ingredientName = Value[1]
					if (multiplier.cost[ingredientName] ~= nil) then
						local ingredientCostCount = Value[2]
						local mult = 1
						
						mult = multiplier.cost[ingredientName]
						ingredientCostCount = math.floor(ingredientCostCount * mult)
						ingredientCostCount = math.max(ingredientCostCount, 1);
						
						Value[2] = ingredientCostCount
					end
				end
			end
			
			-- If the tech uses a count formulae instead, then adjust the formula by wrapping it in our added strings
			if (unitCopy.count_formula ~= nil) then
				unitCopy.count_formula = multiplier.prefix .. unitCopy.count_formula .. multiplier.postfix
			end
			
			tech.unit = unitCopy
		end
		
	end
end