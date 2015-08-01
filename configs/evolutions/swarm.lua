if not sciencecosttweaker then sciencecosttweaker = {} end
if not sciencecosttweaker.options then sciencecosttweaker.options = {} end

-- =================================================================================================================================================================== --
-- Evolution Rate Adjustments
-- =================================================================================================================================================================== --

-- If set to true, the evolution factors will be adjusted by the factors defined here.
sciencecosttweaker.options.adjustEvolution = {}
sciencecosttweaker.options.adjustEvolution.timeMultiplier = 5.0 -- 5x faster evolution over time. The swarm is coming.
sciencecosttweaker.options.adjustEvolution.pollutionMultiplier = 1.0 -- No adjustment to evolution from created pollution.
sciencecosttweaker.options.adjustEvolution.killNestsMultiplier = 1.0 -- No adjustment to evolution from killing nests.
