require("config")
-- Cost requires
require("configs.costs.lolwhat")
require("configs.costs.uberwaffe")
require("configs.costs.normal")
require("configs.costs.extended")
-- Recipes
require("prototypes.2_recipe")
require("prototypes.2_technology")
-- Recipes requires
require("tweaks.bobsmods.2_final")
require("tweaks.angelsmods.2_final")
require("tweaks.pymods.2_final")
require("tweaks.omnimatter.2_final")

if (settings.startup["sct-difficulty-cost"].value ~= "noadjustment") then

	-- Select the cost file depending on which one is requested.
	if not sciencecosttweaker then sciencecosttweaker = {} end
	sciencecosttweaker = sct_cost[settings.startup["sct-difficulty-cost"].value]

	-- Iterate through all research, and update the costs as configured.
	for index,tech in pairs(data.raw.technology) do 
		-- First, determine the tier of the research, by looking at what types of science packs is used in its research cost.

		tier = 1
		multiplier = sciencecosttweaker.costs.tier1;
		for Index, Value in pairs( tech.unit.ingredients ) do
			if (tier < 2 and tech.unit.ingredients[Index][1] == "science-pack-2") then
				tier = 2
				multiplier = sciencecosttweaker.costs.tier2;
			end
			if (tier < 3 and tech.unit.ingredients[Index][1] == "military-science-pack") then
				tier = 3
				multiplier = sciencecosttweaker.costs.military;
			end
			if (tier < 4 and tech.unit.ingredients[Index][1] == "production-science-pack") then
				tier = 4
				multiplier = sciencecosttweaker.costs.production;
			end
			if (tier < 5 and tech.unit.ingredients[Index][1] == "science-pack-3") then
				tier = 5
				multiplier = sciencecosttweaker.costs.tier3;
			end
			if (tier < 6 and tech.unit.ingredients[Index][1] == "high-tech-science-pack") then
				tier = 6
				multiplier = sciencecosttweaker.costs.hightech;
			end
			if (tier < 99 and tech.unit.ingredients[Index][1] == "module-case") then
				tier = 99
				multiplier = sciencecosttweaker.costs.bobmodules;
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

if settings.startup["sct-military"].value == "tier2" then
        table.insert(data.raw["lab"]["sct-lab-2"].inputs, "military-science-pack")
end

if settings.startup["sct-lab-scaling"].value == true then
	data.raw["lab"]["sct-lab-2"].researching_speed = 1.1
	data.raw["lab"]["sct-lab-3"].researching_speed = 1.3
	data.raw["lab"]["sct-lab-4"].researching_speed = 1.5
end

-- make sure unlock technologies are not hidden, making unsearcheable items in tech tree
data.raw.technology["advanced-electronics"].upgrade = false
data.raw.technology["advanced-electronics-2"].upgrade = false
data.raw.technology["advanced-material-processing"].upgrade = false
data.raw.technology["automation"].upgrade = false
data.raw.technology["automation-2"].upgrade = false
data.raw.technology["automation-3"].upgrade = false
data.raw.technology["military"].upgrade = false
data.raw.technology["military-2"].upgrade = false
data.raw.technology["military-3"].upgrade = false
data.raw.technology["military-4"].upgrade = false
data.raw.technology["logistics"].upgrade = false
data.raw.technology["logistics-2"].upgrade = false
data.raw.technology["logistics-3"].upgrade = false
