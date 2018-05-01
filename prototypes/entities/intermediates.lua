data:extend({

	-- Junk Byproducts
	-- =============================
	{
		type = "item",
		name = "sct-waste-copperonly",
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-waste-copperonly.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-byproducts",
		order = "c[bp]-a[copperwaste]",
		stack_size = 50
	},
	{
		type = "item",
		name = "sct-waste-ironcopper",
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-waste-ironcopper.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-byproducts",
		order = "c[bp]-b[mixedewaste]",
		stack_size = 50
	},
	
	-- Tier 1 Intermediary products.
	-- =============================
	{
		type = "item",
		name = "sct-t1-ironcore",
		icon = "__ScienceCostTweakerM__/graphics/icons/iron-core.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-1",
		order = "d[t1]-b[ironcore]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t1-magnet-coils",
		icon = "__ScienceCostTweakerM__/graphics/icons/magnet-coils.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-1",
		order = "d[t1]-c[magnet-coils]",
		stack_size = 200
	},

	-- Tier 2 Intermediary products.
	-- =============================
	{
		type = "item",
		name = "sct-t2-instruments",
		icon = "__ScienceCostTweakerM__/graphics/icons/instruments.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-2",
		order = "e[t2]-b[instruments]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t2-microcircuits",
		icon = "__ScienceCostTweakerM__/graphics/icons/microcircuits.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-2",
		order = "e[t2]-c[microcircuits]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t2-micro-wafer",
		icon = "__ScienceCostTweakerM__/graphics/icons/micro-wafer.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-2",
		order = "e[t2]-d[micro-wafer]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t2-wafer-stamp",
		icon = "__ScienceCostTweakerM__/graphics/icons/wafer-stamp.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-2",
		order = "e[t2]-e[wafer-stamp]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t2-reaction-nodes",
		icon = "__ScienceCostTweakerM__/graphics/icons/reaction-nodes.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-2",
		order = "e[t2]-f[reaction-nodes]",
		stack_size = 200
	},


	-- Tier 3 Intermediary products.
	-- =============================
	{
		type = "item",
		name = "sct-t3-femto-lasers",
		icon = "__ScienceCostTweakerM__/graphics/icons/femto-lasers.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-3",
		order = "f[t3]-b[femtolasers]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t3-flash-fuel",
		icon = "__ScienceCostTweakerM__/graphics/icons/flash-fuel.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-3",
		order = "f[t3]-c[flashfuel]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t3-laser-foci",
		icon = "__ScienceCostTweakerM__/graphics/icons/laser-foci.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-3",
		order = "f[t3]-d[laserfoci]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t3-laser-emitter",
		icon = "__ScienceCostTweakerM__/graphics/icons/laser-emitter.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-3",
		order = "f[t3]-e[laseremitter]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-t3-atomic-sensors",
		icon = "__ScienceCostTweakerM__/graphics/icons/atomic-sensors.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-3",
		order = "f[t3]-f[atomicsensors]",
		stack_size = 200
	},

	-- Military Intermediary products.
	-- =============================
	{
		type = "item",
		name = "sct-mil-plating",
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-mil-plating.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-mil",
		order = "g[mil]-b[plating]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-mil-subplating",
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-mil-subplating.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-mil",
		order = "g[mil]-c[subplating]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-mil-circuit3",
		icon = "__ScienceCostTweakerM__/graphics/icons/military_analysis_3.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-mil",
		order = "g[mil]-d[circuit3]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-mil-circuit2",
		icon = "__ScienceCostTweakerM__/graphics/icons/military_analysis_2.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-mil",
		order = "g[mil]-e[circuit2]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-mil-circuit1",
		icon = "__ScienceCostTweakerM__/graphics/icons/military_analysis_1.png",
		icon_size = 32,
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-mil",
		order = "g[mil]-f[circuit1]",
		stack_size = 200
	},

	-- Production Intermediary products.
	-- =============================
	{
		type = "item",
		name = "sct-prod-bioprocessor",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/bioprocessor.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-prod",
		order = "h[prod]-b[bioprocessor]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-prod-baked-biopaste",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-prod-baked-biopaste.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-prod",
		order = "h[prod]-c[biopaste]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-prod-biosilicate",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-prod-biosilicate.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-prod",
		order = "h[prod]-d[biosilicate]",
		stack_size = 200
	},

	{
		type = "item",
		name = "sct-prod-overclocker",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/overclocker.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-prod",
		order = "h[prod]-e[overclocker]",
		stack_size = 200
	},

	-- High-Tech Intermediary products.
	-- =============================
	
	-- Energy Bank
	{
		type = "item",
		name = "sct-htech-capbank",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-capbank.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "i[ht]-b[capbank]",
		stack_size = 200
	},
	
	-- Particle Injector
	{
		type = "item",
		name = "sct-htech-injector",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-injector.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "i[ht]-c[injector]",
		stack_size = 200
	},

	-- Mechanical Random Number Analyzer
	{
		type = "item",
		name = "sct-htech-random",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-random.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "i[ht]-d[random]",
		stack_size = 200
	},

	-- Heated Thermal Store
	{
		type = "item",
		name = "sct-htech-thermalstore-heated",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-thermalstore-heated.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "i[ht]-e[thermalstore-heated]",
		stack_size = 200
	},

	-- Thermal Store
	{
		type = "item",
		name = "sct-htech-thermalstore",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-htech-thermalstore.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "i[ht]-f[thermalstore]",
		stack_size = 200
	},

	--[[ all bellow was never used - might use it in future
	-- Quantum Plating
	{
		type = "item",
		name = "sct-bm4-plating",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part2a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-plating]",
		stack_size = 200
	},

	-- Charged Coils
	{
		type = "item",
		name = "sct-bm4-part3b",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part1c.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-part3b]",
		stack_size = 200
	},

	-- Chemical Temper
	{
		type = "item",
		name = "sct-bm4-part3c",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part2a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-part3c]",
		stack_size = 200
	},

	-- Virtual Particle Emitter
	{
		type = "item",
		name = "sct-bm4-part3d",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part2b.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-part3d]",
		stack_size = 200
	},

	-- Capacitor Stack
	{
		type = "item",
		name = "sct-bm4-part4a",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part2a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-part4a]",
		stack_size = 200
	},

	-- Thermal Shield
	{
		type = "item",
		name = "sct-bm4-part4b",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part2a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-part4b]",
		stack_size = 200
	},

	-- Nanofusion Core
	{
		type = "item",
		name = "sct-bm4-part4c",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part2a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-part4c]",
		stack_size = 200
	},

	-- Virtual Particle Shield
	{
		type = "item",
		name = "sct-bm4-part4d",
		icon_size = 32,
		icon = "__ScienceCostTweakerM__/graphics/icons/sct-bm4-part2a.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "sct-sciencepack-hightech",
		order = "f[bm4-part4d]",
		stack_size = 200
	},
	]]--

})
