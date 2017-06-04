require("configs.costs.rawmodels")

if not sct_cost then sct_cost = {} end
if not sct_cost.uberwaffe then sct_cost.uberwaffe = {} end
if not sct_cost.uberwaffe.costs then sct_cost.uberwaffe.costs = {} end

-- =================================================================================================================================================================== --
-- Cost Adjustments for the various tiers of research.
-- =================================================================================================================================================================== --
-- SCT_newTier(timeMult, stepCountMult, redMult, greenMult, blueMult, militaryMult, productionMult, hightechMult)
sct_cost.uberwaffe.costs.tier1 = SCT_newTier(0.5, 0.5, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- x0.5
sct_cost.uberwaffe.costs.tier2 = SCT_newTier(1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- No change
sct_cost.uberwaffe.costs.tier3 = SCT_newTier(1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- No change
sct_cost.uberwaffe.costs.military = SCT_newTier(1.0, 2.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 2x overall more expensive
sct_cost.uberwaffe.costs.production = SCT_newTier(1.0, 2.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 2x overall more expensive
sct_cost.uberwaffe.costs.hightech = SCT_newTier(1.0, 5.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 5x overall more expensive
sct_cost.uberwaffe.costs.formula = SCT_formulaMod(1.0, "", "") -- No change

-- SCT_newBobModules(timeMult, stepCountMult, circuitMult, caseMult, speedMult, effectivityMult, productivityMult, pollutionCleanMult, pollutionCreateMult)
sct_cost.uberwaffe.costs.bobmodules = SCT_newBobModules(1.0, 5.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0) -- 5x overall more expensive
-- SCT_newDarkMatter(timeMult, stepCountMult, tehemutMult, scoopMult, transducerMult, conduitMult)
sct_cost.uberwaffe.costs.darkmatter = SCT_newDarkMatter(1.0, 2500.0, 1.0, 1.0, 1.0, 1.0) -- 2500x overall more expensive


-- Personal Tweaking (UberTweaks Mod) of Bob's Module research replaces Module Case and Module Circuit with Science Pack 3 and Alien Science Packs.
-- So add them into the table of ingredient cost multipliers.
sct_cost.uberwaffe.costs.bobmodules.cost["science-pack-3"] = 1.0
sct_cost.uberwaffe.costs.bobmodules.cost["high-tech-science-pack"] = 1.0
sct_cost.uberwaffe.costs.bobmodules.cost["space-science-pack"] = 1.0