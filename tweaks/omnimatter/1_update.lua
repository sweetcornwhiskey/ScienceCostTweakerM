if mods["omnimatter_science"] and (mods["omnimatter_crystal"]  or mods["omnimatter-crystal"]) then
	sctm.debug(serpent.block(data.raw.tool["omni-pack"]))
	sctm.debug(serpent.block(data.raw.recipe["omni-pack"]))
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
		sctm.tech_dependency_add("sct-lab-t3", "sct-research-omni")
		-- omnipack icons
		if settings.startup["sct-hd-icons"] and settings.startup["sct-hd-icons"].value == true then
			data.raw.tool["omni-pack"].icons =
			{
				{
					icon_size = 64,
					icon = "__ScienceCostTweakerM__/graphics/omni/omni-pack-64.png",
				},
			}
		else
			data.raw.tool["omni-pack"].icons =
			{
				{
					icon_size = 32,
					icon = "__ScienceCostTweakerM__/graphics/omni/omni-pack.png",
				},
			}
		end
		-- fix missing omnipack in bobs alien lab
		-- add crystalonics deps
		sctm.tech_dependency_add("sct-research-t3", "crystallonics-1")
		sctm.tech_dependency_add("sct-research-prod", "crystallonics-2")
		sctm.tech_dependency_add("sct-research-logistic", "crystallonics-2")
	else
		-- disable omni pack research if not present
		data.raw.technology["sct-research-omni"].enabled = false
	end
end
