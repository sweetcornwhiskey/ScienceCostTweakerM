require ("recipes.sciencepacks-intermediates")
require ("recipes.sciencepacks")
require ("recipes.labs-intermediates")
require ("recipes.labs")

if not mods["pycoalprocessing"] then
    local sciencepack1 = table.deepcopy(data.raw.recipe["sct-automation-science-pack"])
    sciencepack1.name = "automation-science-pack"
    data.raw.recipe["automation-science-pack"] = sciencepack1

    local sciencepack2 = table.deepcopy(data.raw.recipe["sct-logistic-science-pack"])
    sciencepack2.name = "logistic-science-pack"
    data.raw.recipe["logistic-science-pack"] = sciencepack2

    local sciencepack3 = table.deepcopy(data.raw.recipe["sct-chemical-science-pack"])
    sciencepack3.name = "chemical-science-pack"
    data.raw.recipe["chemical-science-pack"] = sciencepack3
end

local sciencepackm = table.deepcopy(data.raw.recipe["sct-military-science-pack"])
sciencepackm.name = "military-science-pack"
data.raw.recipe["military-science-pack"] = sciencepackm

if not mods["pyfusionenergy"] then
    local sciencepackp = table.deepcopy(data.raw.recipe["sct-production-science-pack"])
    sciencepackp.name = "production-science-pack"
    data.raw.recipe["production-science-pack"] = sciencepackp
end

local sciencepackh = table.deepcopy(data.raw.recipe["sct-utility-science-pack"])
sciencepackh.name = "utility-science-pack"
data.raw.recipe["utility-science-pack"] = sciencepackh
