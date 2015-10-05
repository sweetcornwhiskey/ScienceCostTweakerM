-- Gives 30 alien science packs per alien artifact, instead of the default 10.


-- This modifies the standard config for Bobingabout's Mods.
-- So here we just load the normal config file, and then overwrite what we want to.
require("tweaks.vanilla.0_initial")

-- Now make any changes that are required.
-- ========================================================================================================================

-- Give more science packs per alien artifact.
data.raw.recipe["sct-t4-bioprocessor"].results = 
	{
		{type="item", name="sct-t4-bioprocessor", amount=30},
	}
