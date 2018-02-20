-- add bob logistic pack if found - for now, might replace with qol later
if mods["bobtech"] then
	if data.raw.tool["logistic-science-pack"] or data.raw.recipe["logistic-science-pack"] then
--		table.insert(data.raw["lab"]["sct-lab-2"].inputs, "logistic-science-pack")
		table.insert(data.raw["lab"]["sct-lab-3"].inputs, "logistic-science-pack")
		table.insert(data.raw["lab"]["sct-lab-4"].inputs, "logistic-science-pack")	
	end
end

-- disable bob lab MK2, it's cheaper than tier 3 lab and allows usage of all science packs
if mods["bobtech"] then
--	if data.raw.lab["lab-2"] then
--		data.raw.lab["lab-2"] = nil
--	end
--	if data.raw.recipe["lab-2"] then
--		data.raw.recipe["lab-2"] = nil
--	end
end
