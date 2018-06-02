-- omniscience 
--[[
if mods["omnimatter_science"] then
	if data.raw.tool["omni-pack"] and data.raw.technology["omnitractor-2"] then
		-- remove omnipack from omni-tractor, it has own research now
		for _i, eff in pairs(data.raw.technology["omnitractor-2"].effects) do
			if eff.type == "recipe-unlock" then
				if eff.recipe == "omni-pack" then
					table.remove(data.raw.technology["omnitractor-2"].effects, _j)
					break;
				end
			end
		end
	end
end
]]--