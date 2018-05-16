if mods["angelsbioprocessing"] then
		if settings.startup["sct-bio"].value == "tier1" then
		        table.insert(data.raw["lab"]["sct-lab-1"].inputs, "sct-sciencepack-bio")
		end
		table.insert(data.raw["lab"]["sct-lab-2"].inputs, "sct-sciencepack-bio")
		table.insert(data.raw["lab"]["sct-lab-3"].inputs, "sct-sciencepack-bio")
		table.insert(data.raw["lab"]["sct-lab-4"].inputs, "sct-sciencepack-bio")
		
		if data.raw.technology["gardens"] then
			table.insert(data.raw.technology["gardens"].effects,{type = "unlock-recipe", recipe = "sct-sciencepack-bio"})
			table.insert(data.raw.technology["gardens"].effects,{type = "unlock-recipe", recipe = "sct-bio-ground-sample"})
			table.insert(data.raw.technology["gardens"].effects,{type = "unlock-recipe", recipe = "sct-bio-sample-scaffold"})
			table.insert(data.raw.technology["gardens"].effects,{type = "unlock-recipe", recipe = "sct-bio-sample-filling"})
		end
end
