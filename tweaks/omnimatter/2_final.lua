-- omniscience 
if mods["omnimatter_science"] then
	if data.raw.tool["omni-pack"] then
		-- remove omnipack from tier 1 lab
		for i = 1, #data.raw["lab"]["lab"].inputs, 1 do
			if data.raw["lab"]["lab"].inputs[i] == "omni-pack" then
				table.remove(data.raw["lab"]["lab"].inputs, i)
				break
			end
		end
		table.insert(data.raw["lab"]["sct-lab-2"].inputs, "omni-pack")
		table.insert(data.raw["lab"]["sct-lab-3"].inputs, "omni-pack")
		table.insert(data.raw["lab"]["sct-lab-4"].inputs, "omni-pack")	
	end
end
