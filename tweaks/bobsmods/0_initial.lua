require("science_bobmods_logistic")
require("science_bobmods_tech")
require("science_bobmods_alien")

require("science_bobmods_modules")

if mods["boblogistics"] then
	if settings.startup["bobmods-logistics-inserteroverhaul"] and settings.startup["bobmods-logistics-inserteroverhaul"].value then
		sctm.tech_dependency_remove("sct-lab-t2", "fast-inserter")
		sctm.tech_dependency_add("sct-lab-t2", "electronics")
	end
end
