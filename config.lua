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

-- If set to true, will disable the normal lab, and create the 4 different tiers of labs.
-- If false, normal lab is enabled.
sciencecosttweaker.options.useTieredLabs = true

-- Difficulty factor of research cost adjustments.
-- lolwhat, noadjustment, normal, extended
-- Note: noadjustment is a special case, meaning the code for doing the cost adjustment isn't even run.
sciencecosttweaker.options.difficultyCost = "normal"

-- Difficulty factor of alien evolution rate adjustments.
-- biterinabarrel, allthetimeyouneed, normal, noadjustment, swarm
-- Note: noadjustment is a special case, meaning the code for doing the evolution adjustment isn't even run.
sciencecosttweaker.options.difficultyEvo = "normal"
