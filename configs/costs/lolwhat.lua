require("configs.costs.rawmodels")

if not sciencecosttweaker then sciencecosttweaker = {} end
if not sciencecosttweaker.costs then sciencecosttweaker.costs = {} end

-- =================================================================================================================================================================== --
-- Cost Adjustments for the various tiers of research.
-- =================================================================================================================================================================== --
-- SCT_newTier(timeMult, stepCountMult, redMult, greenMult, blueMult, militaryMult, productionMult, hightechMult)
sciencecosttweaker.costs.tier1 = SCT_newTier(0.1, 0.1, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- Ten times cheaper
sciencecosttweaker.costs.tier2 = SCT_newTier(0.1, 0.1, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- Ten times cheaper
sciencecosttweaker.costs.tier3 = SCT_newTier(0.1, 0.1, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- Ten times cheaper
sciencecosttweaker.costs.military = SCT_newTier(0.1, 0.1, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- Ten times cheaper
sciencecosttweaker.costs.production = SCT_newTier(0.1, 0.1, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- Ten times cheaper
sciencecosttweaker.costs.hightech = SCT_newTier(0.1, 0.1, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- Ten times cheaper
sciencecosttweaker.costs.formula = SCT_formulaMod(0.1, "(", ")*0.1") -- Ten times cheaper

