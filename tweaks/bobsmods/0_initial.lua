require("science_bobmods_logistic")
require("science_bobmods_tech")
require("science_bobmods_alien")
require("science_bobmods_burner")

require("science_bobmods_modules")

if mods["boblogistics"] then
	if settings.startup["bobmods-logistics-inserteroverhaul"] and settings.startup["bobmods-logistics-inserteroverhaul"].value then
		sctm.tech_dependency_remove("sct-lab-t2", "fast-inserter")
		sctm.tech_dependency_add("sct-lab-t2", "electronics")
	end
end

-- bobtech renames logistic science to transport science.
-- Undo this so we use the "Single use ATMOS" localization string
data.raw.tool["logistic-science-pack"].localised_name = nil
data.raw.technology["logistic-science-pack"].localised_name = nil

if data.raw.tool["advanced-logistic-science-pack"] then
  data.raw.tool["advanced-logistic-science-pack"].localised_name = nil
end

