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
		sctm.tech_pack_replace(tech, "science-pack-1", "sct-science-pack-0")
	end

--	if data.raw.technology["electric-lab"] then
--		data.raw.technology["electric-lab"].enabled = false
--	end
	
	if data.raw.lab["burner-lab"] then
		sctm.lab_input_add("burner-lab", "sct-science-pack-0")
		data.raw.item["burner-lab"].order = "a[labs]-a[lab0]"
		data.raw.item["burner-lab"].subgroup = "sct-labs"
		data.raw.recipe["burner-lab"].order = "a[labs]-a[lab0]"
		data.raw.recipe["burner-lab"].subgroup = "sct-labs"
		sctm.tech_pack_add("sct-research-t1", {"sct-science-pack-0", 1})
		data.raw.technology["sct-research-t1"].unit.time = 10
		sctm.tech_pack_add("sct-lab-t1", {"sct-science-pack-0", 1})
		data.raw.technology["sct-lab-t1"].unit.time = 20
		sctm.lab_input_add("lab", "sct-science-pack-0")
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

	sctm.recipe_ingredient_replace("sct-t0-crate", "stone", {type="item",name="stone-crushed",amount=0})
	sctm.recipe_ingredient_replace("sct-t0-solvent", "iron-ore", {type="item",name="crushed-omnite",amount=0})
	sctm.recipe_ingredient_replace("sct-t0-solvent", "iron-ore", {type="item",name="angels-ore1-crushed",amount=0})
	sctm.recipe_ingredient_replace("sct-t0-solvent", "wood", {type="item",name="omniwood",amount=0})
end