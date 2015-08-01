if not sciencecosttweaker then sciencecosttweaker = {} end
if not sciencecosttweaker.options then sciencecosttweaker.options = {} end

-- =================================================================================================================================================================== --
-- Evolution Rate Adjustments
-- =================================================================================================================================================================== --

-- If set to true, the evolution factors will be adjusted by the factors defined here.
sciencecosttweaker.options.adjustEvolution = {}
sciencecosttweaker.options.adjustEvolution.timeMultiplier = 0.0 -- No evolution over time.
sciencecosttweaker.options.adjustEvolution.pollutionMultiplier = 0.1 -- 10x slower evolution from created pollution.
sciencecosttweaker.options.adjustEvolution.killNestsMultiplier = 0.0 -- No evolution from killing nests.
