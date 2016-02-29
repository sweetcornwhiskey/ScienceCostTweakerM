-- Check that both bobsmod tech and bobsmod plates is installed
-- If not, then revert to using 'vanilla' config files.
bobIsAbout = true
if (data.raw["item"]["resin"] == nil or data.raw["item"]["glass"] == nil or data.raw["item"]["silicon-wafer"] == nil or data.raw["item"]["brass-alloy"] == nil) then
	require("tweaks.vanilla.2_final")
	bobIsAbout = false
end

if (bobIsAbout == true) then
	-- Use the new labs new tiered labs.
	require("tweaks.newlabs")
	require("tweaks.tweakedsciencepacks")

	-- Make resin craftable by hand, so that we can use it in science pack crafting.
	data.raw.recipe["bob-resin-wood"].category = "crafting"
	
	-- Change the recipe for Science-Pack-4 (Dark Blue).
	data.raw.recipe["science-pack-4"].ingredients =
    {
		{"processing-unit", 1},
		{"express-transport-belt", 1},
		{"silicon-nitride", 1},
		{"lithium-ion-battery", 1}
    }
	
	-- Make Lab Mk2 consume more power than Quantum lab.
	data.raw["lab"]["lab-2"].energy_usage = "2MW"
end
