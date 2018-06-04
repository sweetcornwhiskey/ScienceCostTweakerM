-- remove science packs from respective technologies
local omnipackfound = false
for _i, _tech in pairs(data.raw.technology) do
--	log(_i .. "(" .. _i:len() .. ")" .. (_i:find("sct-research",1,true) == nil and "nonsct" or "sct"))
	if (_i:len() < 13 or _i:find("sct-research",1,true) == nil) then
--		log(_i .. ":" .. serpent.block(_tech))
		if _tech.effects then
			for _j = #_tech.effects, 1, -1 do
				local _eff = _tech.effects[_j]
				if _eff.type == "unlock-recipe" then
					local name = _eff.recipe
					-- log(_i .. ":" .. serpent.block(_eff))
					if (
						name == "science-pack-2" or
						name == "science-pack-3" or
						name == "military-science-pack" or
						name == "production-science-pack" or
						name == "high-tech-science-pack" or
						name == "sct-science-pack-bio" or
						name == "omni-pack"	or 
--						(name:find("alien-science-pack",1,true) ~= nil) or
						name == "alien-science-pack" or
						name == "science-pack-gold" or
						name == "logistic-science-pack"
					) then
						table.remove(_tech.effects, _j)
						log("Moved science pack '" .. name .. "', unlocked by '" .. _i .. "' to research tree.")
					elseif (
							name:len() > 12 and
							name:find("science-pack",1,true) ~= nil and 
							name:find("alien",1,true) == nil
					) then
						log("Found unknown science pack '" .. name .. "', unlocked by '" .. _i .. "'")
					end
					if name == "omni-pack" then
						omnipackfound = true
					end
				end
			end
		end
	end
end

if omnipackfound == false and mods["omnimatter_science"] then
	log("zelos still have not fixed omnipack research")
end