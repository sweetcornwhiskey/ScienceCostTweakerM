if mods["omnimatter_science"] and mods["omnimatter_crystal"] then
--	sctm.debug(serpent.block(data.raw.tool["omni-pack"]))
--	sctm.debug(serpent.block(data.raw.recipe["omni-pack"]))
	if data.raw.tool["omni-pack"] and data.raw.recipe["omni-pack"] then
		-- remove omnipack from basic lab
		sctm.lab_input_remove("lab", "omni-pack")
		-- remove omnipack from aai burner lab		
		sctm.lab_input_remove("burner-lab", "omni-pack")
		-- add omnipack to sct labs
		sctm.lab_input_add("sct-lab-t2", "omni-pack")
		sctm.lab_input_add("sct-lab-t3", "omni-pack")
		sctm.lab_input_add("sct-lab-t4", "omni-pack")
		-- add omnipack to bob labs
		sctm.lab_input_add("lab-2", "omni-pack")
		sctm.lab_input_add("lab-alien", "omni-pack")
		-- add t3 lab dep on omnipack research (because it reuqires it)
		sctm.tech_dependency_add("sct-lab-t3", "omnipack-technology")
		-- omnipack icons
		data.raw.tool["omni-pack"].icons =
		{
			{
				icon_size = 64,
				icon = "__ScienceCostTweakerM__/graphics/omni/omni-pack-64.png",
			},
		}
		data.raw.tool["omni-pack"].subgroup = "sct-omni-science-pack"
		data.raw.recipe["omni-pack"].subgroup = "sct-omni-science-pack"

		-- add crystalonics deps
		sctm.tech_dependency_add("chemical-science-pack", "crystallonics-1")
		sctm.tech_dependency_add("production-science-pack", "crystallonics-2")
		sctm.tech_dependency_add("advanced-logistic-science-pack", "crystallonics-2")
	else
		-- disable omni pack research if not present
--		data.raw.technology["sct-research-omni"].enabled = false
	end
	sctm.tech_unlock_add("omnipack-technology","sct-omni-pack-minerals")
	sctm.tech_unlock_add("omnipack-technology","sct-omni-pack-tools")
	if (data.raw.technology["omnipack-technology"]) then
		data.raw.technology["omnipack-technology"].icons =
		{
			{
				icon_size = 128,
				icon = "__ScienceCostTweakerM__/graphics/omni/omni-pack-128.png",
			},
		}
	end
	if mods["boblogistics"] and settings.startup["bobmods-logistics-inserteroverhaul"].value == true then
		sctm.recipe_ingredient_replace("sct-omni-pack-tools","fast-inserter","long-handed-inserter")
	end
end
