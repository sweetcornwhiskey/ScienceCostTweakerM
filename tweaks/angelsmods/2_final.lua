-- remove angels bio token from lab
if mods["angelsbioprocessing"] then
	if data.raw.tool["token-bio"] or data.raw.recipe["token-bio"] then
		for _i, lab in pairs(data.raw["lab"]) do
			if lab.inputs then
				for _j, input in pairs(lab.inputs) do
					if input == "token-bio" then
						table.remove(lab.inputs, _j)
					end
				end
			end
		end
		data.raw.tool["token-bio"].order = "d_a[bio]-e[token-bio]"
		data.raw.tool["token-bio"].subgroup = "sct-science-pack-bio"
		if data.raw.recipe["token-bio"] then
			data.raw.recipe["token-bio"].order = "d_a[bio]-e[token-bio]"
			data.raw.recipe["token-bio"].subgroup = "sct-science-pack-bio"
		end
		-- replace token-bio with bio science pack
		for i, tech in pairs(data.raw.technology) do
			if tech.unit and tech.unit.ingredients then
				for j, ingredient in pairs(tech.unit.ingredients) do
					if ingredient[1] == "token-bio" then
						ingredient[1] = "sct-science-pack-bio"
						break
					end
				end
			end
		end
	end
end
	