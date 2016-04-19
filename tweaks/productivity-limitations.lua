local science_packs_and_intermediates = {
  "science-pack-1",
  "science-pack-2",
  "science-pack-3",
  "alien-science-pack",
  "science-pack-4",
  "science-pack-gold",
  "sct-t1-ironcore",
  "sct-t1-magnet-coils",
  "sct-t2-reaction-nodes",
  "sct-t2-instruments",
  "sct-t2-microcircuits",
  "sct-t2-micro-wafer",
  "sct-t2-wafer-stamp",
  "sct-t3-flash-fuel",
  "sct-t3-laser-foci",
  "sct-t3-laser-emitter",
  "sct-t3-femto-lasers",
  "sct-t3-atomic-sensors",
  "sct-t4-bioprocessor",
  "sct-t4-overclocker",
  "sct-bm4-plating",
  "sct-bm4-injector",
  "sct-bm4-supercoils",
  "sct-bm4-capbank"
}

local finallist = {}

-- Go through all the recipes defined in the science pack and intermidate list.
-- For any of them that exist, add them to the final list of things to limit.
for j, recipeName in pairs(science_packs_and_intermediates) do
	if data.raw.recipe[recipeName] then
		table.insert(finallist, recipeName)
	end
end
bobmods.lib.add_productivity_limitations(finallist)
