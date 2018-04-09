-- add biotokens to all labs except basic one
if mods["pycoalprocessing"] then
	if(data.raw.technology["fine-electronics"]) then
		table.insert(data.raw.technology["fine-electronics"].effects,{type = "unlock-recipe", recipe = "sct-t3-femto-lasers"})
		table.insert(data.raw.technology["fine-electronics"].effects,{type = "unlock-recipe", recipe = "sct-t3-atomic-sensors"})
	end
end
