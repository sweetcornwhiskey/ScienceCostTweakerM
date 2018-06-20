-- Check that bobsmod plates is installed
if mods["bobplates"] then
	-- Green Science Pack:
	-- =============================

	if data.raw.item["tin-plate"] then
		bobmods.lib.recipe.replace_ingredient("sct-t2-instruments", "iron-plate", "tin-plate")
	end

	if data.raw.item["lead-plate"] then
		bobmods.lib.recipe.replace_ingredient("sct-t2-micro-wafer", "iron-plate", "lead-plate")
	end

	
	-- Blue Science Pack:
	-- =============================

	if data.raw.fluid["nitrogen"] then
		bobmods.lib.recipe.replace_ingredient("sct-t3-femto-lasers", "water", "nitrogen")
	end
	
	if data.raw.item["glass"] and data.raw.item["gold-plate"] then
		data.raw.recipe["sct-t3-laser-foci"].normal.ingredients =
		{
			{type="item", name="copper-plate", amount=5},
			{type="item", name="glass", amount=8},
			{type="item", name="gold-plate", amount=5}
		}
		data.raw.recipe["sct-t3-laser-foci"].expensive.ingredients =
		{
			{type="item", name="copper-plate", amount=13},
			{type="item", name="glass", amount=20},
			{type="item", name="gold-plate", amount=13}
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
			{type="item", name="sct-waste-copperonly", amount=3}
		}
		data.raw.recipe["sct-t3-laser-emitter"].expensive.ingredients =
		{
			{type="item", name="electronic-circuit", amount=15},
			{type="item", name="copper-plate", amount=20},
			{type="item", name="glass", amount=10},
			{type="item", name="aluminium-plate", amount=13}
		}
		data.raw.recipe["sct-t3-laser-emitter"].expensive.results = 
		{
			{type="item", name="sct-t3-laser-emitter", amount=1},
			{type="item", name="sct-waste-copperonly", amount=3}
		}
	end
	
	if data.raw.item["gold-plate"] and data.raw.item["aluminium-plate"] and data.raw.fluid["nitrogen"] then
		data.raw.recipe["sct-t3-atomic-sensors"].normal.ingredients =
		{
			{type="item", name="advanced-circuit", amount=1},
			{type="item", name="aluminium-plate", amount=5},
			{type="item", name="gold-plate", amount=5},
			{type="item", name="copper-plate", amount=12},
			{type="fluid", name="nitrogen", amount=15}
		}
		data.raw.recipe["sct-t3-atomic-sensors"].normal.results = 
		{
			{type="item", name="sct-t3-atomic-sensors", amount=1},
			{type="item", name="sct-waste-copperonly", amount=5}
		}
		data.raw.recipe["sct-t3-atomic-sensors"].expensive.ingredients =
		{
			{type="item", name="advanced-circuit", amount=2},
			{type="item", name="aluminium-plate", amount=13},
			{type="item", name="gold-plate", amount=13},
			{type="item", name="copper-plate", amount=30},
			{type="fluid", name="nitrogen", amount=40}
		}
		data.raw.recipe["sct-t3-atomic-sensors"].expensive.results = 
		{
			{type="item", name="sct-t3-atomic-sensors", amount=1},
			{type="item", name="sct-waste-copperonly", amount=5}
		}
	end
	
	-- Military Science Pack:
	-- =============================
	if data.raw.item["invar-alloy"] then
		bobmods.lib.recipe.replace_ingredient("sct-mil-subplating", "iron-plate", "invar-alloy")
		bobmods.lib.recipe.replace_ingredient("sct-mil-plating", "iron-plate", "invar-alloy")
	end
		
	if data.raw.item["brass-alloy"] then
		bobmods.lib.recipe.replace_ingredient("sct-mil-subplating", "copper-plate", "brass-alloy")
		bobmods.lib.recipe.replace_ingredient("sct-mil-plating", "copper-plate", "brass-alloy")
	end

	if data.raw.item["carbon"] then
		table.insert(data.raw.recipe["sct-mil-circuit3"].normal.ingredients, { type="item", name="carbon", amount=4 })
		table.insert(data.raw.recipe["sct-mil-circuit3"].expensive.ingredients, { type="item", name="carbon", amount=10 })
		table.insert(data.raw.recipe["sct-mil-circuit2"].normal.ingredients, { type="item", name="carbon", amount=3 })
		table.insert(data.raw.recipe["sct-mil-circuit2"].expensive.ingredients, { type="item", name="carbon", amount=8 })
--		table.insert(data.raw.recipe["sct-mil-circuit1"].normal.ingredients, { type="item", name="carbon", amount=2 })
--		table.insert(data.raw.recipe["sct-mil-circuit1"].expensive.ingredients, { type="item", name="carbon", amount=5 })		
		bobmods.lib.recipe.replace_ingredient("sct-mil-circuit1", "coal", "carbon")
	end
	
	-- Production Science Pack:
	-- =============================
	if data.raw.item["silicon"] then
		bobmods.lib.recipe.replace_ingredient("sct-prod-biosilicate", "stone", "silicon")
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
			{type="item", name="tin-plate", amount=25},
			{type="item", name="lead-plate", amount=25},
			{type="item", name="silver-plate", amount=25},
			{type="item", name="sct-prod-chipcase", amount=2},
			{type="fluid", name="sulfur-dioxide", amount=300},
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
		bobmods.lib.recipe.replace_ingredient("sct-htech-capbank", "iron-plate", "steel-gear-wheel")
		bobmods.lib.recipe.replace_ingredient("sct-htech-capbank", "battery", "lithium-ion-battery")
		table.insert(data.raw.recipe["sct-htech-capbank"].normal.ingredients, { type="item", name="silicon-nitride", amount=10})
		table.insert(data.raw.recipe["sct-htech-capbank"].expensive.ingredients, { type="item", name="silicon-nitride", amount=25})
	end
	
	if data.raw.item["copper-tungsten-alloy"] and data.raw.item["tungsten-carbide"] and data.raw.item["ruby-5"] then
		data.raw.recipe["sct-htech-injector"].normal.ingredients =
		{
			{type="item", name="copper-cable", amount=20},
			{type="item", name="processing-unit", amount=10},
			{type="item", name="copper-tungsten-alloy", amount=20},
			{type="item", name="tungsten-carbide", amount=20},
			{type="item", name="ruby-5", amount=1}
		}
		data.raw.recipe["sct-htech-injector"].expensive.ingredients =
		{
			{type="item", name="copper-cable", amount=50},
			{type="item", name="processing-unit", amount=25},
			{type="item", name="copper-tungsten-alloy", amount=50},
			{type="item", name="tungsten-carbide", amount=50},
			{type="item", name="ruby-5", amount=3}
		}
	end
	if data.raw.item["electrum-alloy"] and data.raw.item["cobalt-steel-alloy"] then
		data.raw.recipe["sct-htech-thermalstore"].normal.ingredients =
		{
			{type="item", name="electrum-alloy", amount=20},
			{type="item", name="cobalt-steel-alloy", amount=20}
		}
		data.raw.recipe["sct-htech-thermalstore"].expensive.ingredients =
		{
			{type="item", name="electrum-alloy", amount=50},
			{type="item", name="cobalt-steel-alloy", amount=50}
		}
	else
		if data.raw.item["copper-tungsten-alloy"] and data.raw.item["cobalt-steel-alloy"] then
			data.raw.recipe["sct-htech-thermalstore"].normal.ingredients =
			{
				{type="item", name="copper-tungsten-alloy", amount=20},
				{type="item", name="cobalt-steel-alloy", amount=20}
			}
			data.raw.recipe["sct-htech-thermalstore"].expensive.ingredients =
			{
				{type="item", name="copper-tungsten-alloy", amount=50},
				{type="item", name="cobalt-steel-alloy", amount=50}
			}
		end
	end
	
	if data.raw.item["titanium-gear-wheel"] and data.raw.item["nitinol-gear-wheel"] then
		bobmods.lib.recipe.replace_ingredient("sct-htech-random", "iron-gear-wheel", "titanium-gear-wheel")
		table.insert(data.raw.recipe["sct-htech-random"].normal.ingredients, { type="item", name="nitinol-gear-wheel", amount=20})
		table.insert(data.raw.recipe["sct-htech-random"].expensive.ingredients, { type="item", name="nitinol-gear-wheel", amount=50})
	end
	
	-- lab intermediates
	if data.raw.item["steel-gear-wheel"] then
		bobmods.lib.recipe.replace_ingredient("sct-lab2-construction", "iron-gear-wheel", "steel-gear-wheel")
	end
	
	if data.raw.item["cobalt-steel-alloy"] then
		bobmods.lib.recipe.replace_ingredient("sct-lab3-construction", "steel-plate", "cobalt-steel-alloy")
	end

	if data.raw.item["tungsten-plate"] then
		bobmods.lib.recipe.replace_ingredient("sct-lab4-construction", "steel-plate", "tungsten-plate")
	end
end

if mods["bobelectronics"] then
	bobmods.lib.tech.add_prerequisite("sct-lab-t2", "electronics")
	if settings.startup["sct-military"].value == "tier2" then
		bobmods.lib.recipe.replace_ingredient("sct-mil-circuit3", "advanced-circuit", "electronic-circuit")
	end
	if data.raw.item["basic-circuit-board"] then
		bobmods.lib.recipe.replace_ingredient("sct-t2-instruments", "electronic-circuit", "basic-circuit-board")
		bobmods.lib.recipe.replace_ingredient("sct-lab1-mechanization", "electronic-circuit", "basic-circuit-board")
		bobmods.lib.recipe.replace_ingredient("sct-mil-circuit1", "electronic-circuit", "basic-circuit-board")
		bobmods.lib.recipe.replace_ingredient("sct-lab2-automatization", "electronic-circuit", "basic-circuit-board")
	end
	if data.raw.item["insulated-cable"] then
		bobmods.lib.recipe.replace_ingredient("sct-htech-capbank", "copper-cable", "insulated-cable")
		bobmods.lib.recipe.replace_ingredient("sct-htech-injector", "copper-cable", "insulated-cable")
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
		data.raw.recipe["sct-logistic-memory-unit"].category = "electronics"
	end
end

if mods["bobpower"] then
	if data.raw.item["solar-panel-large"] then
		bobmods.lib.recipe.replace_ingredient("sct-lab3-construction", "solar-panel", "solar-panel-large")
	end
end

-- add bob logistic pack if found - for now, might replace with qol later
if mods["bobtech"] then
	-- hide bob lab mk2	
	if data.raw.lab["lab-2"] then
		table.insert(data.raw.item["lab-2"].flags, "hidden")
		bobmods.lib.tech.remove_recipe_unlock("advanced-research", "lab-2")
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
		bobmods.lib.recipe.replace_ingredient("lab-2", "lab", "sct-lab-t4")
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
		bobmods.lib.recipe.replace_ingredient("lab-alien", "lab", "sct-lab-t3")
		bobmods.lib.tech.remove_recipe_unlock("alien-research", "lab-alien")
		bobmods.lib.tech.add_prerequisite("alien-research", "sct-research-alien")
		bobmods.lib.tech.remove_prerequisite("alien-research", "advanced-research")
		bobmods.lib.tech.replace_science_pack("alien-research", "science-pack-1", "science-pack-gold")
		bobmods.lib.tech.replace_science_pack("alien-research", "science-pack-2", "alien-science-pack")
		bobmods.lib.tech.remove_science_pack("alien-research", "science-pack-3")
	end
	if data.raw.tool["logistic-science-pack"] and  data.raw.recipe["logistic-science-pack"] then
		-- remove logistic pack from tier 1 lab
		for i = 1, #data.raw["lab"]["lab"].inputs, 1 do
			if data.raw["lab"]["lab"].inputs[i] == "logistic-science-pack" then
				table.remove(data.raw["lab"]["lab"].inputs, i)
				break
			end
		end
--		table.insert(data.raw["lab"]["sct-lab-t2"].inputs, "logistic-science-pack")
		table.insert(data.raw["lab"]["sct-lab-t3"].inputs, "logistic-science-pack")
		table.insert(data.raw["lab"]["sct-lab-t4"].inputs, "logistic-science-pack")	
		data.raw.tool["logistic-science-pack"].subgroup = "sct-science-pack-logistic"
		data.raw.tool["logistic-science-pack"].order = "h_a[logistic]"
		if settings.startup["sct-hd-icons"] and settings.startup["sct-hd-icons"].value == true then
			data.raw.tool["logistic-science-pack"].icon_size = 64
			data.raw.tool["logistic-science-pack"].icon = "__ScienceCostTweakerM__/graphics/bobmods/logistic-science-pack-64.png"
		else
			data.raw.tool["logistic-science-pack"].icon_size = 32
			data.raw.tool["logistic-science-pack"].icon = "__ScienceCostTweakerM__/graphics/bobmods/logistic-science-pack.png"
		end
		data.raw.recipe["logistic-science-pack"].subgroup = "sct-science-pack-logistic"
		data.raw.recipe["logistic-science-pack"].order = "h_a[logistic]"
		data.raw.recipe["logistic-science-pack"].ingredients = nil
		data.raw.recipe["logistic-science-pack"].results = nil
		data.raw.recipe["logistic-science-pack"].expensive = 
		{
			enabled = false,
			energy_required = 20,
			ingredients = 
			{
				{ type="item", name="sct-logistic-cargo-unit", amount=3 },
				{ type="item", name="sct-logistic-memory-unit", amount=2 },
			},
			results =
			{
				{ type="item", name="logistic-science-pack", amount=2 },
			},
		}
		data.raw.recipe["logistic-science-pack"].normal = 
		{
			enabled = false,
			energy_required = 8,
			ingredients = 
			{
				{ type="item", name="sct-logistic-cargo-unit", amount=1 },
				{ type="item", name="sct-logistic-memory-unit", amount=1 },
			},
			results =
			{
				{ type="item", name="logistic-science-pack", amount=2 },
			},
		}
		-- unlocks
		--[[
		bobmods.lib.tech.add_recipe_unlock("logistics-3", "sct-logistic-cargo-unit")
		bobmods.lib.tech.add_recipe_unlock("logistics-3", "sct-logistic-unimover")
		bobmods.lib.tech.add_recipe_unlock("logistics-3", "sct-logistic-automated-storage")
		bobmods.lib.tech.add_recipe_unlock("logistics-3", "sct-logistic-memory-unit")
		]]--
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
		bobmods.lib.recipe.replace_ingredient("sct-logistic-automated-storage", "steel-chest", "brass-chest")
		table.insert(data.raw.technology["sct-research-logistic"].prerequisites, "zinc-processing")
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
		bobmods.lib.recipe.replace_ingredient("lab-module", "lab", "sct-lab-t2")
		bobmods.lib.tech.add_prerequisite("effect-transmission","sct-research-t3")
		--bobmods.lib.tech.replace_science_pack("effect-transmission","science-pack-1", "speed-processor")
		--bobmods.lib.tech.replace_science_pack("effect-transmission","science-pack-2", "effectivity-processor")
		--bobmods.lib.tech.replace_science_pack("effect-transmission","science-pack-3", "productivity-processor")
		bobmods.lib.tech.add_prerequisite("effect-transmission-2", "sct-research-prod")
		--bobmods.lib.tech.replace_science_pack("effect-transmission-2","science-pack-1", "speed-processor")
		--bobmods.lib.tech.replace_science_pack("effect-transmission-2","science-pack-2", "effectivity-processor")
		--bobmods.lib.tech.replace_science_pack("effect-transmission-2","science-pack-3", "productivity-processor")
		--bobmods.lib.tech.replace_science_pack("effect-transmission-2","production-science-pack", "module-circuit-board")
		bobmods.lib.tech.add_prerequisite("effect-transmission-3", "sct-research-ht")
		--bobmods.lib.tech.replace_science_pack("effect-transmission-3","science-pack-1", "speed-processor")
		--bobmods.lib.tech.replace_science_pack("effect-transmission-3","science-pack-2", "effectivity-processor")
		--bobmods.lib.tech.replace_science_pack("effect-transmission-3","science-pack-3", "productivity-processor")
		--bobmods.lib.tech.replace_science_pack("effect-transmission-3","high-tech-science-pack", "module-case")
		--bobmods.lib.tech.add_science_pack("effect-transmission-3", "module-circuit-board", 1)
	end
end
