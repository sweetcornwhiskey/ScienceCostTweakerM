-- fixes
--[[
if mods["pyfusionenergy"] then
	if (data.raw.technology["advanced-material-processing-2"]) then
		table.insert(data.raw.technology["advanced-material-processing-2"].effects,{type = "unlock-recipe", recipe = "production-science-pack"})
	end
end
]]--
