--
if mods["aai-industry"] then
	local foundlab = false
	for _i, _eff in pairs(data.raw.technology["sct-lab-t1"].effects) do
		if _eff.type == "unlock-recipe" and _eff.recipe == "lab" then
			foundlab = true
			break
		end
	end
	if (foundlab == false) then
		table.insert(data.raw.technology["sct-lab-t1"].effects, { type = "unlock-recipe", recipe = "sct-lab-t1"})
	end
	
	if data.raw.lab["burner-lab"] then
		local packfound = false
		for _i, pack in pairs(data.raw.lab["burner-lab"].inputs) do
			if pack == "sct-science-pack-0" then
				packfound = true
			end
		end
		if packfound == false then
			table.insert(data.raw.lab["burner-lab"].inputs, "sct-science-pack-0")
		end
	end
end