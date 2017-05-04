if bobmods == nil then
	return
end
if bobmods.lib == nil then
	return
end
if bobmods.lib.module == nil then
	return
end

local science_packs_and_intermediates = {
  "science-pack-1",
  "science-pack-2",
  "science-pack-3",
  "military-science-pack",
  "production-science-pack",
  "high-tech-science-pack"
}

local finallist = {}

-- Go through all the recipes defined in the science pack and intermidate list.
-- For any of them that exist, add them to the final list of things to limit.
for j, recipeName in pairs(science_packs_and_intermediates) do
	if data.raw.recipe[recipeName] then
		table.insert(finallist, recipeName)
	end
end
bobmods.lib.module.add_productivity_limitations(finallist)
