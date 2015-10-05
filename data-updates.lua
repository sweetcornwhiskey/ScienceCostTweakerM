require("config")

if (sciencecosttweaker.options.sciencePackConfig == "bobsmods") then
	-- Check that both bobsmod tech and bobsmod plates is installed
	if (data.raw["item"]["resin"] == nil or data.raw["item"]["glass"] == nil or data.raw["item"]["silicon-wafer"] == nil or data.raw["item"]["brass-alloy"] == nil) then
		sciencecosttweaker.options.sciencePackConfig = "vanilla"
	end
end

-- Select the science pack config file as requested. Initial data file.
	sciencepackConfig = "tweaks." .. sciencecosttweaker.options.sciencePackConfig .. ".1_update"
	require(sciencepackConfig)
