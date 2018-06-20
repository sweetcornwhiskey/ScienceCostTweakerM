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

	if data.raw.item["stone-crushed"] and data.raw.recipe["sct-t0-crate"] then
		for _i, ingredient in pairs(data.raw.recipe["sct-t0-crate"].normal.ingredients) do
			if ingredient.name == "stone" then
				ingredient.name = "stone-crushed"
				break
			end
		end
		for _i, ingredient in pairs(data.raw.recipe["sct-t0-crate"].expensive.ingredients) do
			if ingredient.name == "stone" then
				ingredient.name = "stone-crushed"
				break
			end
		end
	end

	if data.raw.item["crushed-omnite"] and data.raw.recipe["sct-t0-solvent"] then
		for _i, ingredient in pairs(data.raw.recipe["sct-t0-solvent"].normal.ingredients) do
			if ingredient.name == "iron-ore" then
				ingredient.name = "crushed-omnite"
				break
			end
		end
		for _i, ingredient in pairs(data.raw.recipe["sct-t0-solvent"].expensive.ingredients) do
			if ingredient.name == "iron-ore" then
				ingredient.name = "crushed-omnite"
				break
			end
		end
	elseif data.raw.item["angels-ore1-crushed"] and data.raw.recipe["sct-t0-solvent"] then
		for _i, ingredient in pairs(data.raw.recipe["sct-t0-solvent"].normal.ingredients) do
			if ingredient.name == "iron-ore" then
				ingredient.name = "angels-ore1-crushed"
				break
			end
		end
		for _i, ingredient in pairs(data.raw.recipe["sct-t0-solvent"].expensive.ingredients) do
			if ingredient.name == "iron-ore" then
				ingredient.name = "angels-ore1-crushed"
				break
			end
		end
	end

	if data.raw.item["omniwood"] and data.raw.recipe["sct-t0-solvent"] then
		for _i, ingredient in pairs(data.raw.recipe["sct-t0-solvent"].normal.ingredients) do
			if ingredient.name == "wood" then
				ingredient.name = "omniwood"
				break
			end
		end
		for _i, ingredient in pairs(data.raw.recipe["sct-t0-solvent"].expensive.ingredients) do
			if ingredient.name == "wood" then
				ingredient.name = "omniwood"
				break
			end
		end
	end
end