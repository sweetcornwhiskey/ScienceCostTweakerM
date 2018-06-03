if mods["omnimatter_science"] then
	if data.raw.tool["omni-pack"] then
		-- remove omnipack from all labs
		for _i, lab in pairs(data.raw["lab"]) do
			if lab.inputs then
				for _j, inputs in pairs(lab.inputs) do
					if inputs == "omni-pack" then
						table.remove(lab.inputs, _j)
						break
					end
				end
			end
		end
		table.insert(data.raw["lab"]["sct-lab-2"].inputs, "omni-pack")
		table.insert(data.raw["lab"]["sct-lab-3"].inputs, "omni-pack")
		table.insert(data.raw["lab"]["sct-lab-4"].inputs, "omni-pack")	
		if data.raw.tool["omni-pack"] then
			if settings.startup["sct-hd-icons"] and settings.startup["sct-hd-icons"].value == true then
				data.raw.tool["omni-pack"].icon_size = 64
				data.raw.tool["omni-pack"].icon = "__ScienceCostTweakerM__/graphics/omni/omni-pack-64.png"
			else
				data.raw.tool["omni-pack"].icon_size = 32
				data.raw.tool["omni-pack"].icon = "__ScienceCostTweakerM__/graphics/omni/omni-pack.png"
			end
		end
	end
end
