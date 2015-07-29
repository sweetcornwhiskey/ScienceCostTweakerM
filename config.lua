if not sciencecosttweaker then sciencecosttweaker = {} end
if not sciencecosttweaker.options then sciencecosttweaker.options = {} end

-- If set to true, will use custom recipes for resources from Bobingabout's mods.
-- Is ignored if bobmods Tech or bobmods Plates is not installed.
sciencecosttweaker.options.useBobsMods=false

-- If set to true, will also increase the cost of the number of alien science packs required per research step.
-- If false, will not increase the cost of alien science packs per research step (but will still increase the number of research steps, so still some increase in alien science pack cost)
sciencecosttweaker.options.increaseAlienScienceCost=false

-- If set to true, will disable the normal lab, and create the 4 different tiers of labs.
-- If false, normal lab is enabled.
sciencecosttweaker.options.useTieredLabs=true