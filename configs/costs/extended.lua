require("configs.costs.rawmodels")

if not sciencecosttweaker then sciencecosttweaker = {} end
if not sciencecosttweaker.costs then sciencecosttweaker.costs = {} end

-- =================================================================================================================================================================== --
-- Cost Adjustments for the various tiers of research.
-- =================================================================================================================================================================== --
-- SCT_newTier(timeMult, stepCountMult, redMult, greenMult, blueMult, darkblueMult, goldMult, alienMult)
sciencecosttweaker.costs.tier1 = SCT_newTier(1.0, 1.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0) -- 2x overall more expensive
sciencecosttweaker.costs.tier2 = SCT_newTier(1.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0) -- 4x overall more expensive
sciencecosttweaker.costs.tier3 = SCT_newTier(1.0, 3.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0) -- 6x overall more expensive
sciencecosttweaker.costs.military = SCT_newTier(1.0, 5.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0) -- 10x overall more expensive
sciencecosttweaker.costs.production = SCT_newTier(1.0, 5.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0) -- 10x overall more expensive
sciencecosttweaker.costs.hightech = SCT_newTier(1.0, 10.0, 2.0, 2.0, 2.0, 2.0, 2.0, 2.0) -- 20x overall more expensive
sciencecosttweaker.costs.formula = SCT_formulaMod(1.0, "25*(", ")") -- 25x overall more expensive
