--require ("technologies.labs")
--require ("technologies.sciencepacks")
scttechmap = 
{
-- vanilla
	["science-pack-1"] = "sct-research-t1",
	["science-pack-2"] = "sct-research-t2",
	["science-pack-3"] = "sct-research-t3",
	["military-science-pack"] = "sct-research-mil",
	["production-science-pack"] = "sct-research-prod",
	["high-tech-science-pack"] = "sct-research-ht",
	["space-science-pack"] = "sct-research-space",
-- omni	
	["omni-pack"] = "sct-research-omni",
-- angels	
	["sct-science-pack-bio"] = "sct-research-bio",
-- bobs	
	["logistic-science-pack"] = "sct-research-logistic",
	["science-pack-gold"] = "sct-research-gold",
	["effectivity-processor"] = "modules",
	["module-case"] = "modules",
	["module-circuit-board"] = "modules",
	["pollution-clean-processor"] = "modules",
	["pollution-create-processor"] = "modules",
	["productivity-processor"] = "modules",
	["speed-processor"] = "modules",
	["alien-science-pack"] = "sct-research-alien",
	["alien-science-pack-blue"] = "alien-reseach",
	["alien-science-pack-green"] = "alien-reseach",
	["alien-science-pack-orange"] = "alien-reseach",
	["alien-science-pack-purple"] = "alien-reseach",
	["alien-science-pack-red"] = "alien-reseach",
	["alien-science-pack-yellow"] = "alien-reseach",
-- aai
	["sct-science-pack-0"] = "sct-research-t0",
}

local function checkpacks(tech, checkpacklist, deptech, packmap)
	local techmap = packmap
	local packlist = checkpacklist
	local checktech = data.raw.technology[tech]
	if checktech then
		if checktech.unit and checktech.unit.ingredients and #checktech.unit.ingredients > 0 then
			local deepcheck = 0
			for tpack, _known in pairs(packlist) do
				if _known == 0 then
					deepcheck = deepcheck + 1
					for _i, pack in pairs(checktech.unit.ingredients) do			
						if (pack[1] == tpack) or (techmap[pack[1]] and techmap[tpack] and (techmap[pack[1]] == techmap[tpack])) then
--						if (pack[1] == tpack) then
							packlist[tpack] = 1
							deepcheck = deepcheck - 1
							break
						end
					end
				end
-- todo someday, recursive check, instead of direct dependencies, takes too long even in vanilla, need better algo				
--[[
				if deepcheck > 0 and checktech.prerequisites and #checktech.prerequisites > 0 then
					for _i, prereq in pairs(checktech.prerequisites) do
						local newpacklist = checkpacks(prereq, packlist, tech, techmap)
						packlist = newpacklist
					end
				end
]]--				
			end
		else
			sctm.debug("unable to determine science packs for technology " .. tech)
		end
	else
		sctm.debug("unknown technology " .. tech .. " in dependencies for " .. deptech);
	end
	return packlist
end

function connect_sciencepack(sciencepackmap)
	local techmap = sciencepackmap

	if (techmap == nil) then
		techmap = scttechmap
	end
	
	for tech, _obj in pairs(data.raw.technology) do
		if _obj.unit then	
			if _obj.unit.ingredients and #_obj.unit.ingredients > 0 then
				local packlist = {} 
				for _packid, _packobj in pairs(_obj.unit.ingredients) do
					local packname = _packobj[1];
					packlist[packname] = 0
				end
				if _obj.prerequisites and #_obj.prerequisites > 0 then
					for _i, reqtech in pairs(_obj.prerequisites) do
						local newpacklist = checkpacks(reqtech, packlist, tech, techmap)
						packlist = newpacklist
					end
				end
				for packname, known in pairs(packlist) do
					local deptech = techmap[packname]
					if (deptech == nil) then
						log("unhandled SP " .. packname .. " in tech " .. tech)
					end
					if deptech ~= nil and data.raw.technology[deptech] == nil then
--							log("tech " .. deptech .. " for " .. packname .. " unavailable")
					end
					if known == 0 and deptech and data.raw.technology[deptech] then					
						local prereqfound = false
						if _obj.prerequisites and #_obj.prerequisites > 0 then
							for _j, prereq in pairs(_obj.prerequisites) do
								if prereq == deptech then
									prereqfound = true
									break
								end
							end
						end
						if prereqfound == false then
							sctm.tech_dependency_add(tech, deptech)
						end
					end
				end
			else
				sctm.debug("unable to determine science packs for " .. tech);
			end
		else
			sctm.debug(tech .. " has not defined requirements")
		end
	end
end

if settings.startup["sct-connect-science"] and settings.startup["sct-connect-science"].value == true then
	sctm.log("science connect started")
	connect_sciencepack(nil)
	sctm.log("science connect finished - processed " .. tostring(#data.raw.technology) .. " technologies")
end

-- remove known science pack unlocks from other technologies
local omnipackfound = false
for _i, _tech in pairs(data.raw.technology) do
	if (_i:len() < 13 or _i:find("sct-research",1,true) == nil) then
		if _tech.effects then
			for _j = #_tech.effects, 1, -1 do
				local _eff = _tech.effects[_j]
				if _eff.type == "unlock-recipe" then
					local name = _eff.recipe
					if (
						name == "science-pack-2" or
						name == "science-pack-3" or
						name == "military-science-pack" or
						name == "production-science-pack" or
						name == "high-tech-science-pack" or
						name == "sct-science-pack-bio" or
						name == "omni-pack" or 
--						(name:find("alien-science-pack",1,true) ~= nil) or
						name == "alien-science-pack" or
						name == "science-pack-gold" or
						name == "logistic-science-pack"
					) then
						table.remove(_tech.effects, _j)
						sctm.debug("Moved science pack '" .. name .. "', unlocked by '" .. _i .. "' to research tree.")
					elseif (
						name:len() > 12 and
						name:find("science-pack",1,true) ~= nil and 
						name:find("alien",1,true) == nil
					) then
						sctm.debug("Found unknown science pack '" .. name .. "', unlocked by '" .. _i .. "'")
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
	sctm.debug("zelos still have not fixed omnipack research")
end
