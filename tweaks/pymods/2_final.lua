-- add biotokens to all labs except basic one
if mods["pycoalprocessing"] then
	if(data.raw.technology["fine-electronics"]) then
		table.insert(data.raw.technology["fine-electronics"].effects,{type = "unlock-recipe", recipe = "sct-t3-flash-fuel"})
		table.insert(data.raw.technology["fine-electronics"].effects,{type = "unlock-recipe", recipe = "sct-t3-laser-foci"})
		table.insert(data.raw.technology["fine-electronics"].effects,{type = "unlock-recipe", recipe = "sct-t3-laser-emitter"})
		table.insert(data.raw.technology["fine-electronics"].effects,{type = "unlock-recipe", recipe = "sct-t3-femto-lasers"})
		table.insert(data.raw.technology["fine-electronics"].effects,{type = "unlock-recipe", recipe = "sct-t3-atomic-sensors"})
		table.insert(data.raw.technology["fine-electronics"].effects,{type = "unlock-recipe", recipe = "sct-waste-processing-copper"})
		table.insert(data.raw.technology["fine-electronics"].effects,{type = "unlock-recipe", recipe = "sct-lab3-construction"})
		table.insert(data.raw.technology["fine-electronics"].effects,{type = "unlock-recipe", recipe = "sct-lab3-optics"})
		table.insert(data.raw.technology["fine-electronics"].effects,{type = "unlock-recipe", recipe = "sct-lab-3"})
	end
end

if mods["pyfusionenergy"] then
	if (data.raw.technology["advanced-material-processing-2"]) then
		table.insert(data.raw.technology["advanced-material-processing-2"].effects,{type = "unlock-recipe", recipe = "production-science-pack"})
	end
end
