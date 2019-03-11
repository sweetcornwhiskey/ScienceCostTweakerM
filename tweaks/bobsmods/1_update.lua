-- Check that bobsmod plates is installed
if mods["bobplates"] then
	-- Green Science Pack:
	-- =============================

	if data.raw.item["tin-plate"] then
		sctm.recipe_ingredient_replace("sct-t2-instruments", "iron-plate", "tin-plate")
	end

	if data.raw.item["lead-plate"] then
		sctm.recipe_ingredient_replace("sct-t2-micro-wafer", "iron-plate", "lead-plate")
	end

	if data.raw.item["tinned-copper-cable"] then
		sctm.recipe_ingredient_replace("sct-t2-reaction-nodes", "sct-t1-magnet-coils", "tinned-copper-cable")
	end
	
	-- Blue Science Pack:
	-- =============================

	if data.raw.fluid["nitrogen"] then
		sctm.recipe_ingredient_replace("sct-t3-femto-lasers", "water", "nitrogen")
		sctm.tech_dependency_add("sct-lab-t3", "nitrogen-processing")
	end
	
	if data.raw.item["glass"] and data.raw.item["gold-plate"] then
		data.raw.recipe["sct-t3-laser-foci"].normal.ingredients =
		{
			{type="item", name="copper-plate", amount=5},
			{type="item", name="glass", amount=8},
			{type="item", name="gold-plate", amount=2}
		}
		data.raw.recipe["sct-t3-laser-foci"].expensive.ingredients =
		{
			{type="item", name="copper-plate", amount=10},
			{type="item", name="glass", amount=15},
			{type="item", name="gold-plate", amount=5}
		}
	end
	
	if data.raw.item["glass"] and data.raw.item["aluminium-plate"] then
		data.raw.recipe["sct-t3-laser-emitter"].normal.ingredients =
		{
			{type="item", name="electronic-circuit", amount=6},
			{type="item", name="copper-plate", amount=8},
			{type="item", name="glass", amount=4},
			{type="item", name="aluminium-plate", amount=5}
		}
		data.raw.recipe["sct-t3-laser-emitter"].normal.results = 
		{
			{type="item", name="sct-t3-laser-emitter", amount=1},
			{type="item", name="sct-waste-copperonly", amount=1}
		}
		data.raw.recipe["sct-t3-laser-emitter"].expensive.ingredients =
		{
			{type="item", name="electronic-circuit", amount=10},
			{type="item", name="copper-plate", amount=15},
			{type="item", name="glass", amount=6},
			{type="item", name="aluminium-plate", amount=10}
		}
		data.raw.recipe["sct-t3-laser-emitter"].expensive.results = 
		{
			{type="item", name="sct-t3-laser-emitter", amount=1},
			{type="item", name="sct-waste-copperonly", amount=1}
		}
	end
	
	if data.raw.item["gold-plate"] and data.raw.item["aluminium-plate"] and data.raw.fluid["nitrogen"] then
		data.raw.recipe["sct-t3-atomic-sensors"].normal.ingredients =
		{
			{type="item", name="advanced-circuit", amount=1},
			{type="item", name="aluminium-plate", amount=5},
			{type="item", name="gold-plate", amount=2},
			{type="item", name="copper-plate", amount=12},
			{type="fluid", name="nitrogen", amount=15}
		}
		data.raw.recipe["sct-t3-atomic-sensors"].normal.results = 
		{
			{type="item", name="sct-t3-atomic-sensors", amount=1},
			{type="item", name="sct-waste-copperonly", amount=1}
		}
		data.raw.recipe["sct-t3-atomic-sensors"].expensive.ingredients =
		{
			{type="item", name="advanced-circuit", amount=1},
			{type="item", name="aluminium-plate", amount=10},
			{type="item", name="gold-plate", amount=5},
			{type="item", name="copper-plate", amount=20},
			{type="fluid", name="nitrogen", amount=30}
		}
		data.raw.recipe["sct-t3-atomic-sensors"].expensive.results = 
		{
			{type="item", name="sct-t3-atomic-sensors", amount=1},
			{type="item", name="sct-waste-copperonly", amount=1}
		}
	end
	
	-- Military Science Pack:
	-- =============================
	if data.raw.item["invar-alloy"] then
		sctm.recipe_ingredient_replace("sct-mil-subplating", "iron-plate", { type="item", name="invar-alloy", amount = 0})
		sctm.recipe_ingredient_replace("sct-mil-plating", "iron-plate", { type="item", name="invar-alloy", amount = 0})
	end
		
	if data.raw.item["brass-alloy"] then
		sctm.recipe_ingredient_replace("sct-mil-subplating", "copper-plate", { type="item", name="brass-alloy", amount = 0})
		sctm.recipe_ingredient_replace("sct-mil-plating", "copper-plate", { type="item", name="brass-alloy", amount = 0})
	end

	if data.raw.item["carbon"] then
		sctm.recipe_ingredient_add("sct-mil-circuit3" , { type="item", name="carbon", amount=4 }, { type="item", name="carbon", amount=10 })
		sctm.recipe_ingredient_add("sct-mil-circuit2", { type="item", name="carbon", amount=3 }, { type="item", name="carbon", amount=8 })
--		table.insert(data.raw.recipe["sct-mil-circuit1"].normal.ingredients, { type="item", name="carbon", amount=2 })
--		table.insert(data.raw.recipe["sct-mil-circuit1"].expensive.ingredients, { type="item", name="carbon", amount=5 })		
		sctm.recipe_ingredient_replace("sct-mil-circuit1", "coal", { type="item", name="carbon", amount=0 })
	end
	
	-- Production Science Pack:
	-- =============================
	if data.raw.item["silicon"] then
		sctm.recipe_ingredient_replace("sct-prod-biosilicate", "stone", {type="item", name="silicon", amount = 2})
	end
	
	if data.raw.item["tin-plate"] and data.raw.item["lead-plate"] and data.raw.item["silver-plate"] and data.raw.fluid["sulfur-dioxide"] then
		data.raw.recipe["sct-prod-overclocker"].normal.ingredients = 
		{
			{type="item", name="tin-plate", amount=10},
			{type="item", name="lead-plate", amount=10},
			{type="item", name="silver-plate", amount=10},
			{type="item", name="sct-prod-chipcase", amount=1},
			{type="fluid", name="sulfur-dioxide", amount=120},
		}
		data.raw.recipe["sct-prod-overclocker"].normal.results = 
		{
			{type="item", name="sct-prod-overclocker", amount=1},
			{type="item", name="sulfur", amount=4}
		}
		data.raw.recipe["sct-prod-overclocker"].expensive.ingredients = 
		{
			{type="item", name="tin-plate", amount=20},
			{type="item", name="lead-plate", amount=20},
			{type="item", name="silver-plate", amount=20},
			{type="item", name="sct-prod-chipcase", amount=1},
			{type="fluid", name="sulfur-dioxide", amount=200},
		}
		data.raw.recipe["sct-prod-overclocker"].expensive.results = 
		{
			{type="item", name="sct-prod-overclocker", amount=1},
			{type="item", name="sulfur", amount=4}
		}
	end

	-- High-Tech Science Pack:
	-- =============================
	
	if data.raw.item["lithium-ion-battery"] and data.raw.item["silicon-nitride"] and data.raw.item["steel-gear-wheel"] then
		sctm.recipe_ingredient_replace("sct-htech-capbank", "iron-plate", "steel-gear-wheel")
		sctm.recipe_ingredient_replace("sct-htech-capbank", "battery", "lithium-ion-battery")
		sctm.recipe_ingredient_add("sct-htech-capbank", { type="item", name="silicon-nitride", amount=10},{ type="item", name="silicon-nitride", amount=25})
	end
	
	if data.raw.item["titanium-plate"] and data.raw.item["powdered-tungsten"] and data.raw.item["ruby-5"] then
		data.raw.recipe["sct-htech-injector"].normal.ingredients =
		{
			{type="item", name="copper-cable", amount=20},
			{type="item", name="processing-unit", amount=5},
			{type="item", name="titanium-plate", amount=20},
			{type="item", name="powdered-tungsten", amount=20},
			{type="item", name="ruby-5", amount=1}
		}
		data.raw.recipe["sct-htech-injector"].expensive.ingredients =
		{
			{type="item", name="copper-cable", amount=30},
			{type="item", name="processing-unit", amount=10},
			{type="item", name="titanium-plate", amount=40},
			{type="item", name="powdered-tungsten", amount=40},
			{type="item", name="ruby-5", amount=1}
		}
		sctm.tech_dependency_add("sct-lab-t4", "gem-processing-2")
		sctm.tech_dependency_add("sct-lab-t4", "titanium-processing")
		sctm.tech_dependency_add("sct-lab-t4", "tungsten-processing")
	end

	if data.raw.item["tinned-copper-cable"] then
		sctm.recipe_ingredient_replace("sct-htech-injector", "copper-cable", "tinned-copper-cable")
	end

	if data.raw.item["tungsten-plate"] and data.raw.item["cobalt-steel-alloy"] then
		data.raw.recipe["sct-htech-thermalstore"].normal.ingredients =
		{
			{type="item", name="tungsten-plate", amount=20},
			{type="item", name="cobalt-steel-alloy", amount=20}
		}
		data.raw.recipe["sct-htech-thermalstore"].expensive.ingredients =
		{
			{type="item", name="tungsten-plate", amount=40},
			{type="item", name="cobalt-steel-alloy", amount=40}
		}
	end
	
	if data.raw.item["titanium-gear-wheel"] and data.raw.item["tungsten-gear-wheel"] then
		sctm.recipe_ingredient_replace("sct-htech-random", "iron-gear-wheel", "tungsten-gear-wheel")
		sctm.recipe_ingredient_add("sct-htech-random", { type="item", name="titanium-gear-wheel", amount=5}, { type="item", name="titanium-gear-wheel", amount=10})
		sctm.recipe_ingredient_add("sct-htech-random", { type="item", name="titanium-bearing", amount=10}, { type="item", name="titanium-bearing", amount=15})
	end
	
	-- lab intermediates
	if data.raw.item["steel-gear-wheel"] then
		sctm.recipe_ingredient_replace("sct-lab2-construction", "iron-gear-wheel", "steel-gear-wheel")
	end
	
	if data.raw.item["cobalt-steel-alloy"] then
		sctm.recipe_ingredient_replace("sct-lab3-construction", "steel-plate", "cobalt-steel-alloy")
		sctm.tech_dependency_add("sct-lab-t4", "cobalt-processing")
	end

	if data.raw.item["tungsten-plate"] then
		sctm.recipe_ingredient_replace("sct-lab4-construction", "steel-plate", "tungsten-plate")
	end
end

if mods["bobelectronics"] then
	sctm.tech_dependency_add("sct-lab-t2", "electronics")
	if settings.startup["sct-military"].value == "tier2" then
		sctm.recipe_ingredient_replace("sct-mil-circuit3", "advanced-circuit", "electronic-circuit")
	end
	if data.raw.item["basic-circuit-board"] then
		sctm.recipe_ingredient_replace("sct-t2-instruments", "electronic-circuit", "basic-circuit-board")
		sctm.recipe_ingredient_replace("sct-lab1-mechanization", "electronic-circuit", "basic-circuit-board")
		sctm.recipe_ingredient_replace("sct-mil-circuit1", "electronic-circuit", "basic-circuit-board")
		sctm.recipe_ingredient_replace("sct-lab2-automatization", "electronic-circuit", "basic-circuit-board")
	end
	if data.raw.item["insulated-cable"] then
		sctm.recipe_ingredient_replace("sct-htech-capbank", "copper-cable", "insulated-cable")
		sctm.recipe_ingredient_replace("sct-htech-injector", "copper-cable", "insulated-cable")
	end

	if data.raw["recipe-category"]["electronics"] then
		data.raw.recipe["sct-t1-ironcore"].category = "electronics"
		data.raw.recipe["sct-t1-magnet-coils"].category = "electronics"
		data.raw.recipe["sct-t2-microcircuits"].category = "electronics"
		data.raw.recipe["sct-t2-micro-wafer"].category = "electronics"
		data.raw.recipe["sct-t2-reaction-nodes"].category = "electronics"
		data.raw.recipe["sct-mil-circuit3"].category = "electronics"
		data.raw.recipe["sct-mil-circuit2"].category = "electronics"
		data.raw.recipe["sct-mil-circuit1"].category = "electronics"
		if data.raw.recipe["sct-logistic-memory-unit"] then
			data.raw.recipe["sct-logistic-memory-unit"].category = "electronics"
		end
	end
end

if mods["bobpower"] then
	if data.raw.item["solar-panel-large"] then
		sctm.recipe_ingredient_replace("sct-lab3-construction", "solar-panel", "solar-panel-large")
		if data.raw.technology["bob-solar-energy-2"] then
			sctm.tech_dependency_remove("sct-lab-t3", "solar-energy")
			sctm.tech_dependency_add("sct-lab-t3", "bob-solar-energy-2")
		end
	end
end

-- add bob logistic pack if found - for now, might replace with qol later
if mods["bobtech"] then
	-- hide bob lab mk2	
	if data.raw.lab["lab-2"] then
		--table.insert(data.raw.item["lab-2"].flags, "hidden")
		sctm.tech_unlock_remove("advanced-research", "lab-2")
		-- if someone enables it, move it to sct labs group, and make it hightest tier lab
		data.raw.item["lab-2"].subgroup = "sct-labs"
		data.raw.item["lab-2"].order = "b[labs]-e[lab5]"
		data.raw.item["lab-2"].icons =
		{
			{
				icon = "__ScienceCostTweakerM__/graphics/bobmods/lab2.png",
				icon_size = 32,
			},
			{
				icon = "__ScienceCostTweakerM__/graphics/overlays/beta.png",
				icon_size = 32,
			},
		}		
		data.raw.recipe["lab-2"].subgroup = "sct-labs"
		data.raw.recipe["lab-2"].order = "b[labs]-e[lab5]"
		sctm.recipe_ingredient_replace("lab-2", "lab", "sct-lab-t4")
		sctm.lab_input_remove("sct-lab-t4","space-science-pack")
		if settings.startup["sct-lab-scaling"].value == true then
			data.raw.lab["lab-2"].researching_speed = 2
		else
			data.raw.lab["lab-2"].researching_speed = 1
		end
	end
	if data.raw.item["lab-alien"] then
		data.raw.item["lab-alien"].subgroup = "sct-labs"
		data.raw.item["lab-alien"].order = "b[labs]-f[lab6]"
		data.raw.item["lab-alien"].icon_size = 32
		data.raw.item["lab-alien"].icons =
		{
			{
				icon = "__ScienceCostTweakerM__/graphics/bobmods/alien-lab.png",
			},
			{
				icon = "__ScienceCostTweakerM__/graphics/overlays/alien.png",
			},
		}
		data.raw.lab["lab-alien"].icon_size = 32
		data.raw.lab["lab-alien"].icons =
		{
			{
				icon = "__ScienceCostTweakerM__/graphics/bobmods/alien-lab.png",
			},
			{
				icon = "__ScienceCostTweakerM__/graphics/overlays/alien.png",
			},
		}
		data.raw.recipe["lab-alien"].subgroup = "sct-labs"
		data.raw.recipe["lab-alien"].order = "b[labs]-f[lab6]"
		sctm.recipe_ingredient_replace("lab-alien", "lab", "sct-lab-t3")
		sctm.tech_unlock_remove("alien-research", "lab-alien")
		sctm.tech_dependency_add("alien-research", "sct-research-alien")
		sctm.tech_dependency_remove("alien-research", "advanced-research")
		sctm.tech_pack_replace("alien-research", "automation-science-pack", "science-pack-gold")
		sctm.tech_pack_replace("alien-research", "logistic-science-pack", "alien-science-pack")
		sctm.tech_pack_remove("alien-research", "chemical-science-pack")
	end
	if data.raw.tool["advanced-logistic-science-pack"] and  data.raw.recipe["advanced-logistic-science-pack"] then
		-- remove logistic pack from tier 1 lab
		sctm.lab_input_remove("lab", "advanced-logistic-science-pack")
		-- sctm.lab_input_add("sct-lab-t3", "advanced-logistic-science-pack")
		sctm.lab_input_add("sct-lab-t4", "advanced-logistic-science-pack")

		data.raw.tool["advanced-logistic-science-pack"].subgroup = "sct-science-pack-logistic"
		data.raw.tool["advanced-logistic-science-pack"].order = "h_a[logistic]"
		if settings.startup["sct-hd-icons"] and settings.startup["sct-hd-icons"].value == true then
			data.raw.tool["advanced-logistic-science-pack"].icon_size = 64
			data.raw.tool["advanced-logistic-science-pack"].icon = "__ScienceCostTweakerM__/graphics/bobmods/logistic-science-pack-64.png"
		else
			data.raw.tool["advanced-logistic-science-pack"].icon_size = 32
			data.raw.tool["advanced-logistic-science-pack"].icon = "__ScienceCostTweakerM__/graphics/bobmods/logistic-science-pack.png"
		end
		local logisticrecipe = table.deepcopy(data.raw.recipe["sct-science-pack-logistic"])
		logisticrecipe.name = "advanced-logistic-science-pack"
		data.raw.recipe["advanced-logistic-science-pack"] = logisticrecipe
	end
	if data.raw.tool["science-pack-gold"] then
		data.raw.tool["science-pack-gold"].subgroup = "sct-science-pack-alien"
		data.raw.tool["science-pack-gold"].order = "0-gold-science-pack"
		if settings.startup["sct-hd-icons"] and settings.startup["sct-hd-icons"].value == true then
			data.raw.tool["science-pack-gold"].icon_size = 64
			data.raw.tool["science-pack-gold"].icon = "__ScienceCostTweakerM__/graphics/bobmods/gold-science-pack-64.png"
		else
			data.raw.tool["science-pack-gold"].icon_size = 32
			data.raw.tool["science-pack-gold"].icon = "__ScienceCostTweakerM__/graphics/bobmods/gold-science-pack.png"
		end
		data.raw.recipe["science-pack-gold"].subgroup = "sct-science-pack-alien"
		data.raw.recipe["science-pack-gold"].order = "0-gold-science-pack"
	end
	if data.raw.tool["alien-science-pack"] then
		data.raw.tool["alien-science-pack"].subgroup = "sct-science-pack-alien"
		if settings.startup["sct-hd-icons"] and settings.startup["sct-hd-icons"].value == true then
			data.raw.tool["alien-science-pack"].icon_size = 64
			data.raw.tool["alien-science-pack"].icon = "__ScienceCostTweakerM__/graphics/bobmods/alien-science-pack-64.png"
		else
			data.raw.tool["alien-science-pack"].icon_size = 32
			data.raw.tool["alien-science-pack"].icon = "__ScienceCostTweakerM__/graphics/bobmods/alien-science-pack.png"
		end
		data.raw.tool["alien-science-pack-blue"].subgroup = "sct-science-pack-alien"
		data.raw.tool["alien-science-pack-orange"].subgroup = "sct-science-pack-alien"
		data.raw.tool["alien-science-pack-purple"].subgroup = "sct-science-pack-alien"
		data.raw.tool["alien-science-pack-yellow"].subgroup = "sct-science-pack-alien"
		data.raw.tool["alien-science-pack-green"].subgroup = "sct-science-pack-alien"
		data.raw.tool["alien-science-pack-red"].subgroup = "sct-science-pack-alien"
	end

	if data.raw.item["brass-chest"] then
		sctm.recipe_ingredient_replace("sct-logistic-automated-storage", "steel-chest", "brass-chest")
		sctm.tech_dependency_add("sct-research-logistic", "zinc-processing")
	end
end

if mods["bobmodules"] then
	if data.raw.item["lab-module"] then
		data.raw.item["lab-module"].subgroup = "sct-labs"
		data.raw.item["lab-module"].order = "b[labs]-g[lab7]"
		data.raw.item["lab-module"].icon_size = 32
		data.raw.item["lab-module"].icons =
		{
			{
				icon = "__ScienceCostTweakerM__/graphics/bobmods/module-lab.png",
			},
			{
				icon = "__ScienceCostTweakerM__/graphics/overlays/module.png",
			},
		}
		data.raw.lab["lab-module"].icon_size = 32
		data.raw.lab["lab-module"].icons =
		{
			{
				icon = "__ScienceCostTweakerM__/graphics/bobmods/module-lab.png",
			},
			{
				icon = "__ScienceCostTweakerM__/graphics/overlays/module.png",
			},
		}
		data.raw.recipe["lab-module"].subgroup = "sct-labs"
		data.raw.recipe["lab-module"].order = "b[labs]-g[lab7]"
		sctm.recipe_ingredient_replace("lab-module", "lab", "sct-lab-t2")
--		sctm.tech_dependency_add("effect-transmission", "chemical-science-pack")
--		sctm.tech_dependency_add("effect-transmission-2", "production-science-pack")
--		sctm.tech_dependency_add("effect-transmission-3", "utility-science-pack")
	end
end
