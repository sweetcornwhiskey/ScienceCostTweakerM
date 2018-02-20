-- add biotokens to all labs except basic one
if mods["angelsbioprocessing"] then
	if data.raw.tool["token-bio"] or data.raw.recipe["token-bio"] then
--		table.insert(data.raw["lab"]["lab"].inputs, "token-bio")
--		table.insert(data.raw["lab"]["lab-2"].inputs, "token-bio")
		table.insert(data.raw["lab"]["sct-lab-1"].inputs, "token-bio")
		table.insert(data.raw["lab"]["sct-lab-2"].inputs, "token-bio")
		table.insert(data.raw["lab"]["sct-lab-3"].inputs, "token-bio")
		table.insert(data.raw["lab"]["sct-lab-4"].inputs, "token-bio")
	end
end
