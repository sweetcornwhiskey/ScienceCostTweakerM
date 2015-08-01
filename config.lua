-- =================================================================================================================================================================== --
-- Options and Config
-- =================================================================================================================================================================== --
if not sciencecosttweaker then sciencecosttweaker = {} end
if not sciencecosttweaker.options then sciencecosttweaker.options = {} end

-- True = The new intermediate products and production chains for science packs will be used.
-- False = old science pack recipes are used.
sciencecosttweaker.options.useNewIntermediates = true

sciencecosttweaker.options.bobsmods = {}
-- Bob's Mods: If set to true, will use custom recipes for science pack intermediate products using resources from Bobingabout's mods.
-- Is ignored if bobmods Tech or bobmods Plates is not installed.
sciencecosttweaker.options.bobsmods.useNewOres = true

-- Bob's Mods: Will cause basic circuit boards to require basic electronic components.
-- This will force you to rely on burner inserters and tier 1 assemblers until you have completed enough research to produce basic electronic components and have made a manufacturing chain for it.
sciencecosttweaker.options.bobsmods.moreComplexBasicCircuits = false

-- If set to true, will disable the normal lab, and create the 4 different tiers of labs.
-- If false, normal lab is enabled.
sciencecosttweaker.options.useTieredLabs = true

-- Difficulty factor of research cost adjustments.
-- lolwhat, noadjustment, normal, extended
sciencecosttweaker.options.difficultyCost = "normal"

-- Difficulty factor of alien evolution rate adjustments.
-- biterinabarrel, allthetimeyouneed, normal, noadjustment, swarm
sciencecosttweaker.options.difficultyCost = "normal"
