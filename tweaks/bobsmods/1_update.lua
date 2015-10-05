-- Check that both bobsmod tech and bobsmod plates is installed
-- If not, then revert to using 'vanilla' config files.
bobIsAbout = true
if (data.raw["item"]["resin"] == nil or data.raw["item"]["glass"] == nil or data.raw["item"]["silicon-wafer"] == nil or data.raw["item"]["brass-alloy"] == nil) then
	require("tweaks.vanilla.1_update")
	bobIsAbout = false
end

if (bobIsAbout == true) then
	-- Nothing to see here
end