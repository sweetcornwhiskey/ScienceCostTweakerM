-- This modifies the standard config for Bobingabout's Mods.
-- So here we just load the normal config file, and then overwrite what we want to.
require("tweaks.bobsmods.0_initial")

-- Now make any changes that are required.
data.raw.recipe["sct-t4-bioprocessor"].ingredients =
	{
		{type="item", name="alien-artifact", amount=1},
		{type="item", name="processing-unit", amount=10},
		{type="item", name="copper-plate", amount=20},
		{type="item", name="gold-plate", amount=20}
	},
