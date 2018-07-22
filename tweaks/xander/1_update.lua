if mods["xander-mod"] then
    if data.raw.technology["centrifuge"] then
        sctm.tech_dependency_remove("sct-lab-t4", "nuclear-power")
        sctm.tech_dependency_add("sct-lab-t4", "centrifuge")
    end
    -- weird dependence pushing centrifuge after HT even if it's mostly T3 or T3 or production, cetrifuge is required for t4 lab, which produces HT
    sctm.tech_dependency_remove("centrifuge", "machines_3")

    sctm.tech_dependency_remove("sct-research-t2", "automation-2")
    sctm.recipe_ingredient_replace("sct-lab1-mechanization", "electronic-circuit", "coil-1")
    sctm.recipe_ingredient_replace("sct-lab1-mechanization", "transport-belt", "slow-transport-belt")
    sctm.recipe_ingredient_add("science-pack-1", { type="item", name="coil-1", amount=1}, { type="item", name="coil-1", amount=2})
    if data.raw.tool["science-pack-0"] then
		data.raw.tool["science-pack-0"].icon_size = 32
		data.raw.tool["science-pack-0"].icons = 
		{
			{
				icon = "__ScienceCostTweakerM__/graphics/aai/sct-science-pack-0.png",
			},
        }
    end
    if data.raw.recipe["science-pack-0"] then
		data.raw.recipe["science-pack-0"].icon_size = 32
		data.raw.recipe["science-pack-0"].icons = 
		{
			{
				icon = "__ScienceCostTweakerM__/graphics/aai/sct-science-pack-0.png",
			},
        }
    end

	if data.raw.lab["lab-1"] then
        sctm.tech_dependency_add("sct-lab-t1", "electricity")
		data.raw.item["lab-1"].order = "a[labs]-a[lab0]"
		data.raw.item["lab-1"].subgroup = "sct-labs"
		data.raw.recipe["lab-1"].order = "a[labs]-a[lab0]"
		data.raw.recipe["lab-1"].subgroup = "sct-labs"
		sctm.tech_pack_add("sct-research-t1", {"sct-science-pack-0", 1})
		data.raw.technology["sct-research-t1"].unit.time = 10
		sctm.tech_pack_add("sct-lab-t1", {"sct-science-pack-0", 1})
		data.raw.technology["sct-lab-t1"].unit.time = 20
		sctm.lab_input_add("lab", "science-pack-0")
		data.raw.item["lab-1"].icon_size = 32
		data.raw.item["lab-1"].icons = 
		{
			{
				icon = "__xander-mod__/graphics/item/production/production-machine/lab-1.png",
			},
			{
				icon = "__ScienceCostTweakerM__/graphics/overlays/flame.png",
			},
		}
		data.raw.lab["lab-1"].icon_size = 32
		data.raw.lab["lab-1"].icons =
		{
			{
				icon = "__xander-mod__/graphics/item/production/production-machine/lab-1.png",
			},
			{
				icon = "__ScienceCostTweakerM__/graphics/overlays/flame.png",
			},
        }
        sctm.lab_input_remove("lab-1", "science-pack-2")
    end
    if data.raw.technology["lab_2"] then
        data.raw.technology["lab_2"].enabled = false
    end

    sctm.lab_input_add("sct-lab-t2", "science-pack-0")
    sctm.tech_dependency_add("sct-lab-t2", "inserter-b")
    sctm.recipe_ingredient_replace("sct-lab2-automatization", "fast-inserter", "inserter")
end
