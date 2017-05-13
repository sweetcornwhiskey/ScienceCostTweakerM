require("configs.costs.rawmodels")

if not sct_cost then sct_cost = {} end
if not sct_cost.dmonly then sct_cost.dmonly = {} end
if not sct_cost.dmonly.costs then sct_cost.dmonly.costs = {} end

-- =================================================================================================================================================================== --
-- Cost Adjustments for the various tiers of research.
-- =================================================================================================================================================================== --
-- SCT_newDarkMatter(timeMult, stepCountMult, tehemutMult, scoopMult, transducerMult, conduitMult)
sct_cost.dmonly.costs.darkmatter = SCT_newDarkMatter(1.0, 1000.0, 1.0, 1.0, 1.0, 1.0) -- 1000x overall more expensive
