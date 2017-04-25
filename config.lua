-- =================================================================================================================================================================== --
-- Options and Config
-- =================================================================================================================================================================== --
if not sciencecosttweaker then sciencecosttweaker = {} end
if not sciencecosttweaker.options then sciencecosttweaker.options = {} end

-- Science pack options used. Controls recipes, outputs, etc.
-- Points at the folders inside tweaks.
-- Options: vanilla, cheaperAlienV, bobsmods, noadjustment
-- vanilla: Uses new science intermediate products. Uses new tiered labs.
-- cheaperAlienV: Same as vanilla, but gives x30 alien science packs per alien artifact, up from the usual 10.
-- bobsmods: Uses new science intermediate products, with the recipes updated to use products from Bob's mods. Uses new tiered labs. Special case: Will default to 'vanilla' if Bob's mods is not installed.
-- noadjustment: Does nothing. No really. Do not look at the files.
sciencecosttweaker.options.sciencePackConfig = "noadjustment"

-- Difficulty factor of research cost adjustments.
-- lolwhat, noadjustment, normal, extended
-- Note: noadjustment is a special case, meaning the code for doing the cost adjustment isn't even run.
sciencecosttweaker.options.difficultyCost = "normal"
