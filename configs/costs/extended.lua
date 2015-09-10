require("configs.costs.rawmodels")

if not sciencecosttweaker then sciencecosttweaker = {} end
if not sciencecosttweaker.costs then sciencecosttweaker.costs = {} end

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
-- SCT_newBobModules(timeMult, stepCountMult, circuitMult, caseMult, speedMult, effectivityMult, productivityMult, pollutionCleanMult, pollutionCreateMult)
sciencecosttweaker.costs.bobmodules = SCT_newBobModules(1.0, 25.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 25x overall more expensive
-- SCT_newDarkMatter(timeMult, stepCountMult, tehemutMult, scoopMult, transducerMult, conduitMult)
sciencecosttweaker.costs.darkmatter = SCT_newDarkMatter(1.0, 100.0, 1.0, 1.0, 1.0, 1.0) -- 100x overall more expensive