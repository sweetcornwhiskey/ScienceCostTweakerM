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
	local added = false
	if data.raw.lab[labname] and data.raw.tool[packname] then
		if not data.raw.lab[labname].inputs then
			data.raw.lab[labname].inputs = {}
		end
		local labinputs = data.raw.lab[labname].inputs
		local hasinput = false
		for _i, inputpack in pairs(labinputs) do
			if inputpack == packname then
				hasinput = true
				added = true
				break
			end
		end
		if not hasinput then
			table.insert(labinputs, packname)
			added = true
		end
	end	
	if not data.raw.lab[labname] then
		sctm.debug("attempting to modify nonexistent lab " .. labname)
	end
	if not data.raw.tool[packname] then
		sctm.debug("attempting to insert nonexistent science pack " .. packname)
	end
	return added
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
	if data.raw.technology[techname] then
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
				removed = removeprereq(tech.expensive.prerequisites, depname) or removed
				hasdiff = true
			end
		end
		if not hasdiff and tech.prerequisites then
			removed = removeprereq(tech.prerequisites, depname) or removed
		end
	end
	if not data.raw.technology[techname] then
		sctm.debug("attempting to update nonexistent technology " .. techname)
	end
	return removed
end

local function addprereq(prereqtable, depname)
	local hasdep = false
	local added = false
	for _i, dep in pairs(prereqtable) do
		if dep == depname then
			hasdep = true
			added = true
			break
		end
	end
	if not hasdep then
		table.insert(prereqtable, depname)
		added = true
	end	
end

function sctm.tech_dependency_add(techname, depname)
	local added = false
	sctm.debug("insert dep " .. depname .. " into " .. techname)
	if data.raw.technology[techname] and data.raw.technology[depname] then
		local tech = data.raw.technology[techname]
		local hasdiff = false
		if tech.normal then
			if not tech.normal.prerequisites then
				tech.normal.prerequisites = {}
			end
			added = addprereq(tech.normal.prerequisites, depname)
			hasdiff = true
		end
		if tech.expensive then
			if not tech.expensive.prerequisites then
				tech.expensive.prerequisites = {}
			end
			added = addprereq(tech.expensive.prerequisites, depname) or added
			hasdiff = true
		end
		if not hasdiff then
			if not tech.prerequisites then
				tech.prerequisites = {}
			end
			added = addprereq(tech.prerequisites, depname)
		end
	end
	--sctm.debug(techname .. ":" .. serpent.block(data.raw.technology[techname]))	
	if not data.raw.technology[techname] then
		sctm.debug("attempting to update nonexistent technology " .. techname)
	end
	if not data.raw.technology[depname] then
		sctm.debug("attempting to insert nonexistent technology " .. depname)
	end
	return added
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
				removed = rempack(tech.expensive.unit.ingredients, packname) or removed
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
	return removed
end

-- ingredients = { ["science-pack-1"] = 1 }
local function addpack(ingredientstable, newpack)
	local added = false
	local found = false
	for _i, pack in pairs(ingredientstable) do
		if pack and (pack[1] == newpack[1])then
			found = true
			break
		end
	end
	if not found then
		table.insert(ingredientstable, newpack)
		added = true
	end
	return addedd
end

function sctm.tech_pack_add(techname, packnormal, packexpensive)
	local added = false
	if not packnormal and not packexpensive then
		return false
	end
	local normal = packnormal and table.deepcopy(packnormal) or table.deepcopy(packexpensive)
	local expensive = packexpensive and table.deepcopy(packexpensive) or table.deepcopy(packnormal)
	sctm.debug("add pack " .. normal[1] .. " to " .. techname)
	if data.raw.technology[techname] and data.raw.tool[normal[1]] then
		local tech = data.raw.technology[techname]
		local hasdiff = false
		if tech.normal then
			if tech.normal.unit then
				if not tech.normal.unit.ingredients then
					tech.normal.ingredients = {}
				end
				added = addpack(tech.normal.unit.ingredients, normal)
			end
			hasdiff = true
		end
		if tech.expensive then
			if tech.expensive.unit then
				if not tech.expensive.unit.ingredients then
					tech.expensive.unit.ingredients = {}
				end
				added = addpack(tech.expensive.unit.ingredients, expensive) or added
			end
			hasdiff = true
		end
		if not hasdiff or not added then
			if tech.unit then
				if not tech.unit.ingredients then
					tech.unit.ingredients = {}
				end
				added = addpack(tech.unit.ingredients, normal) 
			end
		end
	end
	if not data.raw.technology[techname] then
		sctm.debug("attempting to update nonexistent technology " .. techname)
	end
	if not data.raw.tool[normal[1]] then
		sctm.debug("attempting to add nonexistent pack " .. normal[1])
	end
	return added
end

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
	sctm.debug("replace pack " .. oldpackname .. " by " .. newpackname .. " in " .. techname)
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
				replaced = replacepack(tech.expensive.unit.ingredients, oldpackname, newpackname) or replaced
			end
			hasdiff = true
		end
		if not hasdiff or not replaced then
			if tech.unit and tech.unit.ingredients then
				replaced = replacepack(tech.unit.ingredients, oldpackname, newpackname) 
			end
		end
	end
	if not data.raw.technology[techname] then
		sctm.debug("attempting to update nonexistent technology " .. techname)
	end
	if not data.raw.tool[oldpackname] then
		sctm.debug("attempting to remove nonexistent pack " .. oldpackname)
	end
	if not data.raw.tool[newpackname] then
		sctm.debug("attempting to insert nonexistent pack " .. newpackname)
	end
	return replaced
end

local function addunlock(effectstable, recipename)
	local hasunlock = false
	for _i, effect in pairs(effectstable) do
		if effect.type == "unlock-recipe" and effect.recipe == recipename then
			hasunlock = true
			break
		end
	end
	if not hasunlock then
		table.insert(effectstable, { type="unlock-recipe", recipe = recipename })
	end
end

function sctm.tech_unlock_add(techname, recipename)
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
		if effect.type == "unlock-recipe" and effect.recipe == recipename then
			table.remove(effectstable, _i)
			removed = true
			break
		end
	end
	return removed
end

function sctm.tech_unlock_remove(techname, recipename)
	local removed = false
	if data.raw.technology[techname] then
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
				removed = removeunlock(tech.expensive.effects, recipename) or removed
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
	return removed
end

-- recipe functions
local function removeingredient(ingredientstable, ingredientname)
	local removed = false
	for _i, ingredient in pairs(ingredientstable) do
		if ingredient[1] == ingredientname or (ingredient.name and ingredient.name == ingredientname) then
			table.remove(ingredientstable, _i)
			removed = true
			break
		end
	end
	return removed
end

function sctm.recipe_ingredient_remove(recipename, ingredientname)
	local removed = false
	if data.raw.recipe[recipename] then
		local recipe = data.raw.recipe[recipename]
		local hasdiff = false
		if recipe.normal then
			if recipe.normal.ingredients then
				removed = removeingredient(recipe.normal.ingredients, ingredientname)
			end
			hasdiff = true
		end
		if recipe.expensive then
			if recipe.expensive.ingredients then
				removed = removeingredient(recipe.expensive.ingredients, ingredientname) or removed
			end
			hasdiff = true
		end
		if not hasdiff then
			if recipe.ingredients then
				removed = removeingredient(recipe.ingredients, ingredientname)
			end
		end		
	end
	if not data.raw.recipe[recipename] then
		sctm.debug("attempting to update nonexistent recipe " .. recipename)
	end
	return removed
end

local function addingredient(ingredientstable, newingredient)
	local added = false
	for _i, ingredient in pairs(ingredientstable) do
		if ingredient[1] == newingredient.name then
			table.remove(ingredientstable, _i)
			table.insert(ingredientstable, newingredient)
			added = true
			break
		elseif (ingredient.name and ingredient.name == newingredient.name) then			
			ingredient.amount = newingredient.amount
			added = true
			break
		end
	end
	if not added then
		table.insert(ingredientstable, newingredient)
		added = true
	end
	return added
end

function sctm.recipe_ingredient_add(recipename, ingredientnormal, ingredientexpensive)
	local added = false
	local normal = ingredientnormal and table.deepcopy(ingredientnormal) or table.deepcopy(ingredientexpensive)
	local expensive = ingredientexpensive and table.deepcopy(ingredientexpensive) or table.deepcopy(ingredientnormal)
	sctm.debug(recipename .. " insert " .. normal.name .. ", " .. expensive.name)
	if data.raw.recipe[recipename] and (data.raw.item[normal.name] or data.raw.fluid[normal.name]) and (data.raw.item[expensive.name] or data.raw.fluid[expensive.name]) then
		local recipe = data.raw.recipe[recipename]
		local hasdiff = false
		if recipe.normal then
			if not recipe.normal.ingredients then
				recipe.normal.ingredients = {}
			end
			added = addingredient(recipe.normal.ingredients, normal)
			hasdiff = true
		end
		if recipe.expensive then
			if not recipe.expensive.ingredients then
				recipe.expensive.ingredients = {}
			end
			added = addingredient(recipe.expensive.ingredients, expensive) or added
			hasdiff = true
		end
		if not hasdiff then
			if not recipe.ingredients then
				recipe.ingredients = {}
			end
			added = addingredient(recipe.ingredients, normal)
		end		
	end
	if not data.raw.recipe[recipename] then
		sctm.debug("attempting to update nonexistent recipe " .. recipename)
	end
	if not data.raw.item[normal.name] and not data.raw.fluid[normal.name] then
		sctm.debug("attempting to insert nonexistent ingredient " .. normal.name)
	end
	if not data.raw.item[expensive.name] and not data.raw.fluid[expensive.name] then
		sctm.debug("attempting to insert nonexistent ingredient " .. expensive.name)
	end
	return added
end

local function replaceingredient(ingredientstable, oldingredient, newingredient)
	local added = false
	for _i, ingredient in pairs(ingredientstable) do
		if ingredient[1] == oldingredient then
			local insertingredient = newingredient
			if (newingredient.amount == 0) then
				newingredient.amount = ingredient[2]
			end
			table.remove(ingredientstable, _i)
			table.insert(ingredientstable, newingredient)
			added = true
			break
		elseif (ingredient.name and ingredient.name == oldingredient) then			
			if (newingredient.amount == 0) then
				newingredient.amount = ingredient.amount
			end
			table.remove(ingredientstable, _i)
			table.insert(ingredientstable, newingredient)
			added = true
			break
		end
	end
	return added
end

function sctm.recipe_ingredient_replace(recipename, oldingredientnormal, newingredientnormal, oldingredientexpensive, newingredientexpensive)
	local replaced = false
	local normal = newingredientnormal and table.deepcopy(newingredientnormal) or table.deepcopy(newingredientexpensive)
	local expensive = newingredientexpensive and table.deepcopy(newingredientexpensive) or table.deepcopy(newingredientnormal)
	local oldnormal = oldingredientnormal and table.deepcopy(oldingredientnormal) or table.deepcopy(oldingredientexpensive)
	local oldexpensive = oldingredientexpensive and table.deepcopy(oldingredientexpensive) or table.deepcopy(oldingredientnormal)
	if not normal.name then
		local newnorm = {}
		newnorm.name = normal
		newnorm.type = data.raw.fluid[newnorm.name] and "fluid" or "item"
		newnorm.amount = 0
		normal = newnorm
	end
	if not expensive.name then
		local newexp = {}
		newexp.name = expensive
		newexp.type = data.raw.fluid[newexp.name] and "fluid" or "item"
		newexp.amount = 0
		expensive = newexp
	end
	if data.raw.recipe[recipename] and (data.raw.item[normal.name] or data.raw.fluid[normal.name]) and (data.raw.item[expensive.name] or data.raw.fluid[expensive.name]) then
		local recipe = data.raw.recipe[recipename]
		local hasdiff = false
		if recipe.normal then
			if recipe.normal.ingredients then
				replaced = replaceingredient(recipe.normal.ingredients, oldnormal, normal)
			end
			hasdiff = true
		end
		if recipe.expensive then
			if recipe.expensive.ingredients then
				replaced = replaceingredient(recipe.expensive.ingredients, oldexpensive, expensive) or replaced
			end
			hasdiff = true
		end
		if not hasdiff then
			if recipe.ingredients then
				replaced = replaceingredient(recipe.ingredients, oldnormal, normal)
			end
		end		
	end
	if not data.raw.recipe[recipename] then
		sctm.debug("attempting to update nonexistent recipe " .. recipename)
	end
	if not data.raw.item[normal.name] and not data.raw.fluid[normal.name] then
		sctm.debug("attempting to insert nonexistent ingredient " .. normal.name)
	end
	if not data.raw.item[expensive.name] and not data.raw.fluid[expensive.name] then
		sctm.debug("attempting to insert nonexistent ingredient " .. expensive.name)
	end
	return replaced
end

local function replaceresult(resultstable, oldresult, newresult)
	local added = false
	for _i, result in pairs(resultstable) do
		if result[1] == oldresult then
			local insertresult = newresult
			if (newresult.amount == 0) then
				newresult.amount = result[2]
			end
			table.remove(resultstable, _i)
			table.insert(resultstable, newresult)
			added = true
			break
		elseif (result.name and result.name == oldresult) then			
			if (newresult.amount == 0) then
				newresult.amount = result.amount
			end
			table.remove(resultstable, _i)
			table.insert(resultstable, newresult)
			added = true
			break
		end
	end
	return added
end

function sctm.recipe_result_replace(recipename, oldresultnormal, newresultnormal, oldresultexpensive, newresultexpensive)
	local replaced = false
	local normal = newresultnormal and table.deepcopy(newresultnormal) or table.deepcopy(newresultexpensive)
	local expensive = newresultexpensive and table.deepcopy(newresultexpensive) or table.deepcopy(newresultnormal)
	local oldnormal = oldresultnormal and table.deepcopy(oldresultnormal) or table.deepcopy(oldresultexpensive)
	local oldexpensive = oldresultexpensive and table.deepcopy(oldresultexpensive) or table.deepcopy(oldresultnormal)
	if not normal.name then
		local newnorm = {}
		newnorm.name = normal
		newnorm.type = data.raw.fluid[newnorm.name] and "fluid" or "item"
		newnorm.amount = 0
		normal = newnorm
	end
	if not expensive.name then
		local newexp = {}
		newexp.name = expensive
		newexp.type = data.raw.fluid[newexp.name] and "fluid" or "item"
		newexp.amount = 0
		expensive = newexp
	end
	if data.raw.recipe[recipename] and (data.raw.item[normal.name] or data.raw.fluid[normal.name]) and (data.raw.item[expensive.name] or data.raw.fluid[expensive.name]) then
		local recipe = data.raw.recipe[recipename]
		local hasdiff = false
		if recipe.normal then
			if recipe.normal.results then
				replaced = replaceresult(recipe.normal.results, oldnormal, normal)
			end
			hasdiff = true
		end
		if recipe.expensive then
			if recipe.expensive.results then
				replaced = replaceresult(recipe.expensive.results, oldexpensive, expensive) or replaced
			end
			hasdiff = true
		end
		if not hasdiff then
			if recipe.results then
				replaced = replaceresult(recipe.results, oldnormal, normal)
			end
		end		
	end
	if not data.raw.recipe[recipename] then
		sctm.debug("attempting to update nonexistent recipe " .. recipename)
	end
	if not data.raw.item[normal.name] and not data.raw.fluid[normal.name] then
		sctm.debug("attempting to insert nonexistent result " .. normal.name)
	end
	if not data.raw.item[expensive.name] and not data.raw.fluid[expensive.name] then
		sctm.debug("attempting to insert nonexistent result " .. expensive.name)
	end
	return replaced
end
