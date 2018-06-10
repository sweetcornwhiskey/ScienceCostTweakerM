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
--			log(tech)
--			log(serpent.block(packlist))
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
--			log(serpent.block(packlist))
			end
		else
--			log("unable to determine science packs for technology " .. tech)
		end
	else
		log("unknown technology " .. tech .. " in dependencies for " .. deptech);
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
--			log("checking " .. tech .. ":" .. serpent.block(_obj))
			if _obj.unit.ingredients and #_obj.unit.ingredients > 0 then
				local packlist = {} 
				for _packid, _packobj in pairs(_obj.unit.ingredients) do
--						log("pack:" .. _packid .. ":" .. serpent.block(_packobj))
					local packname = _packobj[1];
					packlist[packname] = 0
--					table.insert(packlist, { = 0})
				end
--					log(serpent.block(packlist))
				if _obj.prerequisites and #_obj.prerequisites > 0 then
					for _i, reqtech in pairs(_obj.prerequisites) do
						local newpacklist = checkpacks(reqtech, packlist, tech, techmap)
						packlist = newpacklist
					end
				end
--				log(tech)
--				log(serpent.block(packlist))
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
							if (_obj.prerequisites == false or _obj.prerequisites == nil) then
								_obj.prerequisites = {}
							end
							table.insert(_obj.prerequisites, deptech)
--							log("adding dependency on " .. deptech .. " to " .. tech .. " from " ..packname )
						end
					end
				end
			else
--					log("unable to determine science packs for " .. tech);
			end
		else
--			log(tech .. " has not defined requirements")
		end
	end
end

if settings.startup["sct-connect-science"] and settings.startup["sct-connect-science"].value == true then
	log("science connect started")
	connect_sciencepack(nil)
	log("science connect finished - processed " .. tostring(#data.raw.technology) .. " technologies")
end
