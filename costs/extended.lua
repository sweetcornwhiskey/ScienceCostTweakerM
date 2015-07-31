if not sciencecosttweaker then sciencecosttweaker = {} end
if not sciencecosttweaker.costs then sciencecosttweaker.costs = {} end

function SCT_newTier(timeMult, stepCountMult, redMult, greenMult, blueMult, darkblueMult, goldMult, alienMult)
	return
	{
		time = timeMult, -- How much the time of the research is multiplied by
		stepCount = stepCountMult, -- How much the count (number of research steps) of the research is multiplied by
		-- How much the number of science packs per research-step of the research is multiplied by
		cost = {
			red = redMult, -- Multiplier to Red Science Packs
			green = greenMult, -- Multiplier to Green Science Packs
			blue = blueMult, -- Multiplier to Blue Science Packs
			darkBlue = darkblueMult, -- Multiplier to Dark Blue Science Packs (Bob's Tech Mod)
			gold = goldMult, -- Multiplier to Gold Science Packs (Bob's Tech Mod)
			alien = alienMult -- Multiplier to Alien Science Packs
		}
	}
end


-- =================================================================================================================================================================== --
-- Cost Adjustments for the various tiers of research.
-- =================================================================================================================================================================== --
-- SCT_newTier(timeMult, stepCountMult, redMult, greenMult, blueMult, darkblueMult, goldMult, alienMult)
sciencecosttweaker.costs.tier1 = SCT_newTier(1.0, 2.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 2x overall more expensive
sciencecosttweaker.costs.tier2 = SCT_newTier(1.0, 6.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 6x overall more expensive
sciencecosttweaker.costs.tier3 = SCT_newTier(1.0, 25.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 25x overall more expensive
sciencecosttweaker.costs.tier4 = SCT_newTier(1.0, 25.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 25x overall more expensive
sciencecosttweaker.costs.tier5 = SCT_newTier(1.0, 25.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 25x overall more expensive
sciencecosttweaker.costs.tier10 = SCT_newTier(1.0, 100.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 100x overall more expensive
