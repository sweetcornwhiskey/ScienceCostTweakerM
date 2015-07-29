if not sciencecosttweaker then sciencecosttweaker = {} end
if not sciencecosttweaker.options then sciencecosttweaker.options = {} end

-- If set to true, will use custom recipes for science pack intermediate products using resources from Bobingabout's mods.
-- Is ignored if bobmods Tech or bobmods Plates is not installed.
sciencecosttweaker.options.useBobsMods=false

-- If set to true, will disable the normal lab, and create the 4 different tiers of labs.
-- If false, normal lab is enabled.
sciencecosttweaker.options.useTieredLabs=true

-- If set to true, the evolution factors will be adjusted by the factors defined here.
sciencecosttweaker.options.adjustEvolution = {}
sciencecosttweaker.options.adjustEvolution.enabled = true
sciencecosttweaker.options.adjustEvolution.timeMultiplier = 0.1 -- 10x slower evolution from time.
sciencecosttweaker.options.adjustEvolution.pollutionMultiplier = 0.33 -- 3x slower evolution from created pollution.
sciencecosttweaker.options.adjustEvolution.killNestsMultiplier = 1.0 -- No adjustment to evolution from killing nests.