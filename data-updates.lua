require("config")
require("tweaks.productivity-limitations")

-- Select the science pack config file as requested. Initial data file.
	sciencepackConfig = "tweaks." .. sciencecosttweaker.options.sciencePackConfig .. ".1_update"
	require(sciencepackConfig)
