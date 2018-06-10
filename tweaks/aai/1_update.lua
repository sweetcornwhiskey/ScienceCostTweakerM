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
		local techobj = data.raw.technology[tech]
		if (techobj and techobj.unit and techobj.unit.ingredients) then
			for _j, ingredient in pairs(techobj.unit.ingredients) do
				if ingredient[1] == "science-pack-1" then
					ingredient[1] = "sct-science-pack-0"
				end
			end
		end
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
--		log(serpent.block(data.raw.item["burner-lab"]))
		if data.raw.item["burner-lab"].icon_size == 32 then
			data.raw.item["burner-lab"].icons = 
			{
				{
					icon = "__aai-industry__/graphics/icons/burner-lab.png",
				},
				{
					icon = "__ScienceCostTweakerM__/graphics/overlays/flame.png",
				},
			}
		end
		if data.raw.lab["burner-lab"].icon_size == 32 then
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
--		log(serpent.block(data.raw.item["burner-lab"]))
	end
	if data.raw.technology["electricity"]then
		table.insert(data.raw.technology["sct-lab-t1"].prerequisites, "electricity")
	end
	if data.raw.technology["basic-logistics"] then
		table.insert(data.raw.technology["sct-lab-t1"].prerequisites, "basic-logistics")
	end
	if data.raw.technology["electric-lab"] then
		data.raw.technology["electric-lab"].enabled = false
--		table.insert(data.raw.technology["sct-research-t1"].prerequisites, "electric-lab")
--		table.insert(data.raw.technology["sct-lab-t1"].unit.ingredients, {"sct-science-pack-0", 1})
	end

-- too early, gets overriden	
--	require("fuel_aai")
end