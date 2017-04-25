require("config")

-- Select the science pack config file as requested. Initial data file.
sciencepackConfig = "tweaks." .. sciencecosttweaker.options.sciencePackConfig .. ".0_initial"
require(sciencepackConfig)
