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
		-- if someone enables it, move it to sct labs group, and make it hightest tier lab
		data.raw.item["lab-2"].subgroup = "sct-labs"
		data.raw.item["lab-2"].order = "b[labs]-e[lab5]"
		data.raw.recipe["lab-2"].subgroup = "sct-labs"
		data.raw.recipe["lab-2"].order = "b[labs]-e[lab5]"
		bobmods.lib.recipe.replace_ingredient("lab-2", "lab", "sct-lab-4")
	end
	if data.raw.technology["advanced-research"] then
		data.raw.technology["advanced-research"].upgrade = false
		bobmods.lib.tech.remove_recipe_unlock("advanced-electronics-2", "sct-lab-4")
		bobmods.lib.tech.add_recipe_unlock("advanced-research", "sct-lab-4")
	end
	if data.raw.item["lab-alien"] then
		data.raw.item["lab-alien"].subgroup = "sct-labs"
		data.raw.item["lab-alien"].order = "b[labs]-f[lab6]"
		data.raw.recipe["lab-alien"].subgroup = "sct-labs"
		data.raw.recipe["lab-alien"].order = "b[labs]-f[lab6]"
		bobmods.lib.recipe.replace_ingredient("lab-alien", "lab", "sct-lab-3")
	end
	if data.raw.tool["logistic-science-pack"] then
		data.raw.tool["logistic-science-pack"].subgroup = "sct-sciencepack-logistic"
		data.raw.tool["logistic-science-pack"].order = "j[logistic-science-pack]"
	end
	if data.raw.tool["science-pack-gold"] then
		data.raw.tool["science-pack-gold"].subgroup = "sct-sciencepack-gold"
		data.raw.tool["science-pack-gold"].order = "k[gold-science-pack]"
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
		data.raw.item["lab-module"].order = "b[labs]-g[lab7]"
		data.raw.recipe["lab-module"].subgroup = "sct-labs"
		data.raw.recipe["lab-module"].order = "b[labs]-g[lab7]"
		bobmods.lib.recipe.replace_ingredient("lab-module", "lab", "sct-lab-2")
	end
end

if mods["boblogistics"] then
	if settings.startup["bobmods-logistics-inserteroverhaul"] and settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
		 bobmods.lib.recipe.replace_ingredient("sct-lab-3", "filter-inserter", "red-filter-inserter")
	end
end

if mods["bobassembly"] then
	if data.raw.technology["advanced-material-processing-2"] then
		 data.raw.technology["advanced-material-processing-2"].upgrade = false
	end
	if data.raw.technology["advanced-material-processing-3"] then
		 data.raw.technology["advanced-material-processing-3"].upgrade = false
	end
	if data.raw.technology["advanced-material-processing-4"] then
		 data.raw.technology["advanced-material-processing-4"].upgrade = false
	end
	if data.raw.technology["automation-4"] then
		 data.raw.technology["automation-4"].upgrade = false
	end
	if data.raw.technology["automation-5"] then
		 data.raw.technology["automation-5"].upgrade = false
	end
	if data.raw.technology["automation-6"] then
		 data.raw.technology["automation-6"].upgrade = false
	end
end