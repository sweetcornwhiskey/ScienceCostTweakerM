if not sciencecosttweaker then sciencecosttweaker = {} end
if not sciencecosttweaker.options then sciencecosttweaker.options = {} end

-- =================================================================================================================================================================== --
-- Evolution Rate Adjustments
-- =================================================================================================================================================================== --

-- If set to true, the evolution factors will be adjusted by the factors defined here.
sciencecosttweaker.options.adjustEvolution = {}
sciencecosttweaker.options.adjustEvolution.timeMultiplier = 0.25 -- 4x slower evolution from time.
sciencecosttweaker.options.adjustEvolution.pollutionMultiplier = 0.33 -- 3x slower evolution from created pollution.
sciencecosttweaker.options.adjustEvolution.killNestsMultiplier = 1.0 -- No adjustment to evolution from killing nests.
