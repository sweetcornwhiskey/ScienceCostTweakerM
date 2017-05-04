require("configs.costs.rawmodels")

if not sciencecosttweaker then sciencecosttweaker = {} end
if not sciencecosttweaker.costs then sciencecosttweaker.costs = {} end

-- =================================================================================================================================================================== --
-- Cost Adjustments for the various tiers of research.
-- =================================================================================================================================================================== --
-- SCT_newTier(timeMult, stepCountMult, redMult, greenMult, blueMult, militaryMult, productionMult, hightechMult)
sciencecosttweaker.costs.tier1 = SCT_newTier(0.5, 0.5, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- x0.5
sciencecosttweaker.costs.tier2 = SCT_newTier(1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- No change
sciencecosttweaker.costs.tier3 = SCT_newTier(1.0, 2.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 2x overall more expensive
sciencecosttweaker.costs.military = SCT_newTier(1.0, 5.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 5x overall more expensive
sciencecosttweaker.costs.production = SCT_newTier(1.0, 5.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 5x overall more expensive
sciencecosttweaker.costs.hightech = SCT_newTier(1.0, 10.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 10x overall more expensive
sciencecosttweaker.costs.formula = SCT_formulaMod(1.0, "", "") -- No change

-- SCT_newBobModules(timeMult, stepCountMult, circuitMult, caseMult, speedMult, effectivityMult, productivityMult, pollutionCleanMult, pollutionCreateMult)
sciencecosttweaker.costs.bobmodules = SCT_newBobModules(1.0, 100.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 100x overall more expensive
-- SCT_newDarkMatter(timeMult, stepCountMult, tehemutMult, scoopMult, transducerMult, conduitMult)
sciencecosttweaker.costs.darkmatter = SCT_newDarkMatter(1.0, 2500.0, 1.0, 1.0, 1.0, 1.0) -- 2500x overall more expensive


-- Personal Tweaking (UberTweaks Mod) of Bob's Module research replaces Module Case and Module Circuit with Science Pack 3 and Alien Science Packs.
-- So add them into the table of ingredient cost multipliers.
sciencecosttweaker.costs.bobmodules.cost["science-pack-3"] = 1.0
sciencecosttweaker.costs.bobmodules.cost["high-tech-science-pack"] = 1.0