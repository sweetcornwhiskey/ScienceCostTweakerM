-- =================================================================================================================================================================== --
-- Models used for defining research cost multipliers.
-- =================================================================================================================================================================== --

-- Research using Science packs (including Bobingabout's Mods science packs)
function SCT_newTier(timeMult, stepCountMult, redMult, greenMult, blueMult, militaryMult, productionMult, hightechMult)
	local costAdjuster = {
		time = timeMult, -- How much the time of the research is multiplied by
		stepCount = stepCountMult, -- How much the count (number of research steps) of the research is multiplied by
		-- How much the number of science packs per research-step of the research is multiplied by
		cost = {}
	}
	
	costAdjuster.cost["science-pack-1"] = redMult -- Multiplier to Red Science Packs
	costAdjuster.cost["science-pack-2"] = greenMult -- Multiplier to Green Science Packs
	costAdjuster.cost["science-pack-3"] = blueMult -- Multiplier to Blue Science Packs
	costAdjuster.cost["military-science-pack"] = militaryMult -- Multiplier to Military Science Packs
	costAdjuster.cost["production-science-pack"] = productionMult -- Multiplier to Production Science Packs
	costAdjuster.cost["high-tech-science-pack"] = hightechMult -- Multiplier to High Tech Science Packs
	
	return costAdjuster;
end

-- Research using Science packs (including Bobingabout's Mods science packs)
function SCT_formulaMod(timeMult, prefix, postfix)
	local costAdjuster = {
		time = timeMult, -- How much the time of the research is multiplied by
		prefix = prefix, -- String to stick in front of the formula
		postfix = postfix -- String to stick behind the formula
	}

	return costAdjuster;
end

-- Research using Bobingabout's Mods Module components
function SCT_newBobModules(timeMult, stepCountMult, circuitMult, caseMult, speedMult, effectivityMult, productivityMult, pollutionCleanMult, pollutionCreateMult)
	local costAdjuster = {
		time = timeMult, -- How much the time of the research is multiplied by
		stepCount = stepCountMult, -- How much the count (number of research steps) of the research is multiplied by
		-- How much the number of science packs per research-step of the research is multiplied by
		cost = {}
	}
		
	costAdjuster.cost["module-circuit-board"] = circuitMult -- Multiplier to Module Circuit Boards
	costAdjuster.cost["module-case"] = caseMult -- Multiplier to Module Cases
	costAdjuster.cost["speed-processor"] = speedMult -- Multiplier to Speed Processors
	costAdjuster.cost["effectivity-processor"] = effectivityMult -- Multiplier to Effectivity Processors
	costAdjuster.cost["productivity-processor"] = productivityMult -- Multiplier to Productivity Processors
	costAdjuster.cost["pollution-clean-processor"] = pollutionCleanMult -- Multiplier to Pollution Cleaning Processors
	costAdjuster.cost["pollution-create-processor"] = pollutionCreateMult -- Multiplier to Pollution Cleaning Processors
	
	return costAdjuster;
end

-- Research using Dark Matter Replicators research components
function SCT_newDarkMatter(timeMult, stepCountMult, tehemutMult, scoopMult, transducerMult, conduitMult)
	local costAdjuster = {
		time = timeMult, -- How much the time of the research is multiplied by
		stepCount = stepCountMult, -- How much the count (number of research steps) of the research is multiplied by
		-- How much the number of science packs per research-step of the research is multiplied by
		cost = {}
	}
		
	costAdjuster.cost["tenemut"] = tehemutMult -- Multiplier to Tehemut Ore
	costAdjuster.cost["dark-matter-scoop"] = scoopMult -- Multiplier to Dark Matter Scoops
	costAdjuster.cost["dark-matter-transducer"] = transducerMult -- Multiplier to Dark Matter Transducers
	costAdjuster.cost["matter-conduit"] = conduitMult -- Multiplier to Matter Conduits 
	
	return costAdjuster;
end
