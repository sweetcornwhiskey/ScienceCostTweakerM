-- sctm helper functions
if not sctm then sctm = {} end
-- uncomment this to enable debug output
sctm.enabledebug = true

function sctm.debug(logtext)
	if (sctm.enabledebug) then
		log("SCTD: " .. logtext)
	end
end

function sctm.log(logtext)
	log("SCT: " .. logtext)
end

-- lab functions
function sctm.lab_input_remove(labname, packname)
	local removed = false
	if data.raw.lab[labname] and data.raw.lab[labname].inputs then
		local labinputs = data.raw.lab[labname].inputs
		for _i, inputpack in pairs(labinputs) do
			if inputpack == packname then
				table.remove(labinputs, _i)
				removed = true
				break
			end
		end
	end
	if not data.raw.lab[labname] then
		sctm.debug("attempting to modify nonexistent lab " .. labname)
	end
	return removed
end

function sctm.lab_input_add(labname, packname)
	if data.raw.lab[labname] and data.raw.tool[packname] then
		if not data.raw.lab[labname].inputs then
			data.raw.lab[labname].inputs = {}
		end
		local labinputs = data.raw.lab[labname].inputs
		local hasinput = false
		for _i, inputpack in pairs(labinputs) do
			if inputpack == packname then
				hasinput = true
				break
			end
		end
		if not hasinput then
			table.insert(labinputs, packname)
		end
	end	
	if not data.raw.lab[labname] then
		sctm.debug("attempting to modify nonexistent lab " .. labname)
	end
	if not data.raw.tool[packname] then
		sctm.debug("attempting to insert nonexistent science pack " .. packname)
	end
end

-- technology functions
local function removeprereq(prereqtable, depname)
	local removed = false
	for _i, dep in pairs(prereqtable) do
		if dep == depname then
			table.remove(prereqtable, _i)
			removed = true
			break
		end
	end
	return removed
end

function sctm.tech_dependency_remove(techname, depname)
	local removed = false
	if data.raw.technology[techname] and data.raw.technology[depname] then
		local tech = data.raw.technology[techname]
		local hasdiff = false
		if tech.normal then
			if tech.normal.prerequisites then
				removed = removeprereq(tech.normal.prerequisites, depname)
				hasdiff = true
			end
		end
		if tech.expensive then
			if tech.expensive.prerequisites then
				removed = removeprereq(tech.expensive.prerequisites, depname)
				hasdiff = true
			end
		end
		if not hasdiff and tech.prerequisites then
			removed = removed or removeprereq(tech.prerequisites, depname)
		end
	end
	if not data.raw.technology[techname] then
		sctm.debug("attempting to update nonexistent technology " .. techname)
	end
	return removed
end

local function addprereq(prereqtable, depname)
	local hasdep = false
	for _i, dep in pairs(prereqtable) do
		if dep == depname then
			hasdep = true
			break
		end
	end
	if not hasdep then
		table.insert(prereqtable, depname)
	end	
end

function sctm.tech_dependency_add(techname, depname)
	sctm.debug("insert dep " .. depname .. " into " .. techname)
	if data.raw.technology[techname] and data.raw.technology[depname] then
		local tech = data.raw.technology[techname]
		local hasdiff = false
		if tech.normal then
			if not tech.normal.prerequisites then
				tech.normal.prerequisites = {}
			end
			addprereq(tech.normal.prerequisites, depname)
			hasdiff = true
		end
		if tech.expensive then
			if not tech.expensive.prerequisites then
				tech.expensive.prerequisites = {}
			end
			addprereq(tech.expensive.prerequisites, depname)
			hasdiff = true
		end
		if not hasdiff then
			if not tech.prerequisites then
				tech.prerequisites = {}
			end
			addprereq(tech.prerequisites, depname)
		end
	end
	--sctm.debug(techname .. ":" .. serpent.block(data.raw.technology[techname]))	
	if not data.raw.technology[techname] then
		sctm.debug("attempting to update nonexistent technology " .. techname)
	end
	if not data.raw.technology[depname] then
		sctm.debug("attempting to insert nonexistent technology " .. depname)
	end
end

-- ingredients = { ["science-pack-1"] = 1 }
local function rempack(ingredientstable, packname)
	local removed = false
	for _i, pack in pairs(ingredientstable) do
		if pack and (pack[1] == packname or (pack.name and pack.name == packname))then
			table.remove(ingredientstable)
			removed = true
			break
		end
	end
	return removed
end

function sctm.tech_pack_remove(techname, packname)
	sctm.debug("remove pack " .. packname .. " from " .. techname)
	local removed = false
	if data.raw.technology[techname] then
		local tech = data.raw.technology[techname]
		local hasdiff = false
		if tech.normal then
			if tech.normal.unit and tech.normal.unit.ingredients then
				removed = rempack(tech.normal.unit.ingredients, packname)
			end
			hasdiff = true
		end
		if tech.expensive then
			if tech.expensive.unit and tech.expensive.unit.ingredients then
				removed = removed or rempack(tech.expensive.unit.ingredients, packname)
			end
			hasdiff = true
		end
		if not hasdiff then
			if tech.unit and tech.unit.ingredients then
				removed = rempack(tech.unit.ingredients, packname) 
			end
		end
	end
	if not data.raw.technology[techname] then
		sctm.debug("attempting to update nonexistent technology " .. techname)
	end
	if not data.raw.tool[packname] then
		sctm.debug("attempting to remove nonexistent pack " .. packname)
	end
	return removed
end

-- ingredients = { ["science-pack-1"] = 1 }
local function replacepack(ingredientstable, oldpackname, newpackname)
	local replaced = false
	for _i, pack in pairs(ingredientstable) do
		if pack and pack[1] == oldpackname then
			pack[1] = newpackname
			replaced = true
			break
		end
		if pack and pack.name and pack.name == oldpackname then
			pack.name = newpackname
			replaced = true
			break
		end
	end
	return replaced
end

function sctm.tech_pack_replace(techname, oldpackname, newpackname)
	sctm.debug("replace pack " .. oldpackname .. "by" .. newpackname .. " in " .. techname)
	local replaced = false
	if data.raw.technology[techname] and data.raw.tool[newpackname] then
		local tech = data.raw.technology[techname]
		local hasdiff = false
		if tech.normal then
			if tech.normal.unit and tech.normal.unit.ingredients then
				replaced = replacepack(tech.normal.unit.ingredients, oldpackname, newpackname)
			end
			hasdiff = true
		end
		if tech.expensive then
			if tech.expensive.unit and tech.expensive.unit.ingredients then
				replaced = removed or replacepack(tech.expensive.unit.ingredients, oldpackname, newpackname)
			end
			hasdiff = true
		end
		if not hasdiff then
			if tech.unit and tech.unit.ingredients then
				replaced = replacepack(tech.unit.ingredients, oldpackname, newpackname) 
			end
		end
	end
	if not data.raw.technology[techname] then
		sctm.debug("attempting to update nonexistent technology " .. techname)
	end
	if not data.raw.tool[oldpackname] then
		sctm.debug("attempting to remove nonexistent pack " .. packname)
	end
	if not data.raw.tool[newpackname] then
		sctm.debug("attempting to insert nonexistent pack " .. packname)
	end
	return replaced
end

-- recipe functions
local function addunlock(effectstable, recipename)
	local hasunlock = false
	for _i, effect in pairs(effectstable) do
		if efftect.type == "recipe-unlock" and effect.recipe == recipename then
			hasunlock = true
			break
		end
	end
	if not hasunlock then
		table.insert(effectstable, { type="recipe-unlock", recipe = recipename })
	end
end

function sctm.recipe_unlock_add(recipename, techname)
	if data.raw.recipe[recipename] and data.raw.technology[techname] then
		local tech = data.raw.technology[techname]
		local hasdiff = false
		if tech.normal then
			if not tech.normal.effects then
				tech.normal.effects = {}
			end
			addunlock(tech.normal.effects, recipename)
			hasdiff = true
		end
		if tech.expensive then
			if not tech.expensive.effects then
				tech.expensive.effects = {}
			end
			addunlock(tech.expensive.effects, recipename)
			hasdiff = true
		end
		if not hasdiff then
			if not tech.effects then
				tech.effects = {}
			end
			addunlock(tech.effects, recipename)
		end		
	end
	if not data.raw.technology[techname] then
		sctm.debug("attempting to update nonexistent technology " .. techname)
	end
	if not data.raw.recipe[recipename] then
		sctm.debug("attempting to insert nonexistent recipe " .. recipename)
	end
end

local function removeunlock(effectstable, recipename)
	local removed = false
	for _i, effect in pairs(effectstable) do
		if effect.type == "recipe-unlock" and effect.recipe == recipename then
			table.remove(effectstable, _i)
			removed = true
			break
		end
	end
	return removed
end

function sctm.recipe_unlock_remove(recipename, techname)
	local removed = false
	if data.raw.recipe[recipename] and data.raw.technology[techname] then
		local tech = data.raw.technology[techname]
		local hasdiff = false
		if tech.normal then
			if tech.normal.effects then
				removed = removeunlock(tech.normal.effects, recipename)
			end
			hasdiff = true
		end
		if tech.expensive then
			if tech.expensive.effects then
				removed = removed or removeunlock(tech.expensive.effects, recipename)
			end
			hasdiff = true
		end
		if not hasdiff then
			if tech.effects then
				removed = removeunlock(tech.effects, recipename)
			end
		end		
	end
	if not data.raw.technology[techname] then
		sctm.debug("attempting to update nonexistent technology " .. techname)
	end
	if not data.raw.recipe[recipename] then
		sctm.debug("attempting to remove nonexistent recipe " .. recipename)
	end
	return removed
end
