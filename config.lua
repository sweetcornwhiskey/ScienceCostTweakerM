-- =================================================================================================================================================================== --
-- Options and Config
-- =================================================================================================================================================================== --
if not sciencecosttweaker then sciencecosttweaker = {} end
if not sciencecosttweaker.options then sciencecosttweaker.options = {} end

-- Science pack options used. Controls recipes, outputs, etc.
-- Points at the folders inside tweaks.
-- vanilla, bobsmods
sciencecosttweaker.options.sciencePackConfig = "bobsmods"

-- Difficulty factor of research cost adjustments.
-- lolwhat, noadjustment, normal, extended
-- Note: noadjustment is a special case, meaning the code for doing the cost adjustment isn't even run.
sciencecosttweaker.options.difficultyCost = "normal"

-- Difficulty factor of alien evolution rate adjustments.
-- biterinabarrel, allthetimeyouneed, normal, noadjustment, swarm
-- Note: noadjustment is a special case, meaning the code for doing the evolution adjustment isn't even run.
sciencecosttweaker.options.difficultyEvo = "normal"
