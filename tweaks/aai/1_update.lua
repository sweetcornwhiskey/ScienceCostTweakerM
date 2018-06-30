--
if mods["aai-industry"] then
	local aaitech0 = {
		"basic-automation",
		"basic-logistics",
		"electricity",
		"basic-fluid-handling",
		"steam-power",
		"electric-mining",
		"electric-lab",
	}
	
	for _i, tech in pairs(aaitech0) do
		sctm.tech_replace_pack(tech, "science-pack-1", "science-pack-0")
	end

--	if data.raw.technology["electric-lab"] then
--		data.raw.technology["electric-lab"].enabled = false
--	end
	
	if data.raw.lab["burner-lab"] then
		table.insert(data.raw.lab["burner-lab"].inputs, "sct-science-pack-0")
		data.raw.item["burner-lab"].order = "a[labs]-a[lab0]"
		data.raw.item["burner-lab"].subgroup = "sct-labs"
		data.raw.recipe["burner-lab"].order = "a[labs]-a[lab0]"
		data.raw.recipe["burner-lab"].subgroup = "sct-labs"
		table.insert(data.raw.technology["sct-research-t1"].unit.ingredients, {"sct-science-pack-0", 1})
		data.raw.technology["sct-research-t1"].unit.time = 10
		table.insert(data.raw.technology["sct-lab-t1"].unit.ingredients, {"sct-science-pack-0", 1})
		data.raw.technology["sct-lab-t1"].unit.time = 20
		table.insert(data.raw.lab["lab"].inputs, "sct-science-pack-0")
		data.raw.item["burner-lab"].icon_size = 32
		data.raw.item["burner-lab"].icons = 
		{
			{
				icon = "__aai-industry__/graphics/icons/burner-lab.png",
			},
			{
				icon = "__ScienceCostTweakerM__/graphics/overlays/flame.png",
			},
		}
		data.raw.lab["burner-lab"].icon_size = 32
		data.raw.lab["burner-lab"].icons =
		{
			{
				icon = "__aai-industry__/graphics/icons/burner-lab.png",
			},
			{
				icon = "__ScienceCostTweakerM__/graphics/overlays/flame.png",
			},
		}			
	end
	sctm.tech_dependency_add("sct-lab-t1", "electricity")
	sctm.tech_dependency_add("sct-lab-t1", "basic-logistics")
	
	if data.raw.technology["electric-lab"] then
		data.raw.technology["electric-lab"].enabled = false
	end

	sctm.recipe_replace_ingredient("sct-t0-crate", "stone", "stone-crushed")
	sctm.recipe_replace_ingredient("sct-t0-solvent", "iron-ore", "crushed-omnite")
	sctm.recipe_replace_ingredient("sct-t0-solvent", "iron-ore", "angels-ore1-crushed")
	sctm.recipe_replace_ingredient("sct-t0-solvent", "wood", "omniwood")
end