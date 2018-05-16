-- remove angels bio token from lab
if mods["angelsbioprocessing"] then
	if data.raw.tool["token-bio"] or data.raw.recipe["token-bio"] then
		for i = 1, #data.raw["lab"]["lab"].inputs, 1 do
			if data.raw["lab"]["lab"].inputs[i] == "token-bio" then
				table.remove(data.raw["lab"]["lab"].inputs, i)
				break
			end
		end
		data.raw.tool["token-bio"].order = "d_a[bio]-e[token-bio]"
		data.raw.tool["token-bio"].subgroup = "sct-sciencepack-bio"
		if data.raw.recipe["token-bio"] then
			data.raw.recipe["token-bio"].order = "d_a[bio]-e[token-bio]"
			data.raw.recipe["token-bio"].subgroup = "sct-sciencepack-bio"
		end
		-- replace token-bio with bio science pack
		for i, tech in pairs(data.raw.technology) do
			if tech.unit and tech.unit.ingredients then
				for j, ingredient in pairs(tech.unit.ingredients) do
					if ingredient[1] == "token-bio" then
						ingredient[1] = "sct-sciencepack-bio"
						break
					end
				end
			end
		end
	end
end
	