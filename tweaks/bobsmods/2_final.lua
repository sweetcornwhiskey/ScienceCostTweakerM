-- Check that both bobsmod tech and bobsmod plates is installed
-- If not, then revert to using 'vanilla' config files.
bobIsAbout = true
if (data.raw["item"]["resin"] == nil or data.raw["item"]["glass"] == nil or data.raw["item"]["silicon-wafer"] == nil or data.raw["item"]["brass-alloy"] == nil) then
	require("tweaks.vanilla.2_final")
	bobIsAbout = false
end

if (bobIsAbout == true) then
	-- Use the new labs new tiered labs.
	require("tweaks.newIntermediates.newlabs")
	-- Use the new tweaked science packs (for vanilla packs 1 to alien)
	require("tweaks.newIntermediates.tweakedsciencepacks")

	-- Make resin craftable by hand, so that we can use it in science pack crafting.
	data.raw.recipe["bob-resin-wood"].category = "crafting"
	
	-- If BobsTech is installed, then adjust the new science packs as well.
	if (data.raw["item"]["lab-2"] ~= nil) then
		require("tweaks.bobsmods.tweakedscience")
	end
end
