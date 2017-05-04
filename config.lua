-- =================================================================================================================================================================== --
-- Options and Config
-- =================================================================================================================================================================== --
if not sciencecosttweaker then sciencecosttweaker = {} end
if not sciencecosttweaker.options then sciencecosttweaker.options = {} end

-- Science pack options used. Controls recipes, outputs, etc.
-- Points at the folders inside tweaks.
-- Options: vanilla, noadjustment
-- vanilla: Uses new science intermediate products. Uses new tiered labs.
-- noadjustment: Does nothing. No really. Do not look at the files.
sciencecosttweaker.options.sciencePackConfig = "vanilla"
