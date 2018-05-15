--log(serpent.block(data.raw.recipe["sct-lab2-automatization"]))

if mods["boblogistics"] then
	if settings.startup["bobmods-logistics-inserteroverhaul"] and settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
		if mods["omnimatter"] then
			bobmods.lib.recipe.replace_ingredient("sct-lab2-automatization", "fast-inserter", "inserter")
		else
			if data.raw.recipe["yellow-filter-inserter"] then
				bobmods.lib.recipe.replace_ingredient("sct-lab2-automatization", "fast-inserter", "yellow-filter-inserter")
			else
				bobmods.lib.recipe.replace_ingredient("sct-lab2-automatization", "fast-inserter", "inserter")
			end
		end
	end
	if settings.startup["bobmods-logistics-beltoverhaul"] and settings.startup["bobmods-logistics-beltoverhaul"].value == true then
		 bobmods.lib.recipe.replace_ingredient("sct-lab1-mechanization", "transport-belt", "basic-transport-belt")
	end
end
--log(serpent.block(data.raw.recipe["sct-lab2-automatization"]))

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

if mods["bobplates"] then
	bobmods.lib.recipe.remove_ingredient("science-pack-3", "bronze-alloy")
	bobmods.lib.recipe.remove_ingredient("high-tech-science-pack", "lithium-ion-battery")
	bobmods.lib.recipe.remove_ingredient("high-tech-science-pack", "silicon-nitride")
end
	