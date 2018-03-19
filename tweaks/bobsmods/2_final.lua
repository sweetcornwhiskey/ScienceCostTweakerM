-- add bob logistic pack if found - for now, might replace with qol later
if mods["bobtech"] then
require("tweaks.bobsmods.sciencegroup")
	if data.raw.tool["logistic-science-pack"] or data.raw.recipe["logistic-science-pack"] then
--		table.insert(data.raw["lab"]["sct-lab-2"].inputs, "logistic-science-pack")
		table.insert(data.raw["lab"]["sct-lab-3"].inputs, "logistic-science-pack")
		table.insert(data.raw["lab"]["sct-lab-4"].inputs, "logistic-science-pack")	
	end
-- hide bob lab mk2	
	if data.raw.lab["lab-2"] then
		table.insert(data.raw.item["lab-2"].flags, "hidden")	
		bobmods.lib.tech.remove_recipe_unlock("advanced-research", "lab-2")
	end
	if data.raw.item["lab-alien"] then
		data.raw.item["lab-alien"].subgroup = "sct-labs"
		data.raw.item["lab-alien"].order = "e[lab5]"
	end
	if data.raw.tool["logistic-science-pack"] then
		data.raw.tool["logistic-science-pack"].subgroup = "sct-sciencepack-logistic"
		data.raw.tool["logistic-science-pack"].order = "a[logistic-science-pack]"
	end
	if data.raw.tool["science-pack-gold"] then
		data.raw.tool["science-pack-gold"].subgroup = "sct-sciencepack-gold"
		data.raw.tool["science-pack-gold"].order = "a[gold-science-pack]"
	end
	if data.raw.tool["alien-science-pack"] then
		data.raw.tool["alien-science-pack"].subgroup = "sct-sciencepack-alien"
		data.raw.tool["alien-science-pack-blue"].subgroup = "sct-sciencepack-alien"
		data.raw.tool["alien-science-pack-orange"].subgroup = "sct-sciencepack-alien"
		data.raw.tool["alien-science-pack-purple"].subgroup = "sct-sciencepack-alien"
		data.raw.tool["alien-science-pack-yellow"].subgroup = "sct-sciencepack-alien"
		data.raw.tool["alien-science-pack-green"].subgroup = "sct-sciencepack-alien"
		data.raw.tool["alien-science-pack-red"].subgroup = "sct-sciencepack-alien"
	end
end

if mods["bobmodules"] then
	if data.raw.item["lab-module"] then
		data.raw.item["lab-module"].subgroup = "sct-labs"
		data.raw.item["lab-module"].order = "f[lab6]"
	end
end

if mods["boblogistics"] then
	if settings.startup["bobmods-logistics-inserteroverhaul"].value and settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
		 bobmods.lib.recipe.replace_ingredient("sct-lab-3", "filter-inserter", "red-filter-inserter")
	end
end

