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
		sctm.tech_unlock_add("sct-lab-t1", "sct-lab-t1")
	end
	
	if data.raw.lab["burner-lab"] then
		sctm.lab_input_add("burner-lab", "sct-science-pack-0")
		data.raw.recipe["burner-lab"].subgroup = "sct-labs"
	end

	if data.raw.technology["electric-lab"] then
--		sctm.tech_dependency_remove("modules", "electric-lab")
		sctm.tech_disable("electric-lab")
	end
end
require("fuel_aai")	
