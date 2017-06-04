-- Check that bobsmod plates is installed
bobIsAbout = false
if (settings.startup["sct-recipes"].value == "bobsmods" and bobmods and bobmods.plates) then
	bobIsAbout = true
end

if (bobIsAbout == true) then
	-- Green Science Pack:
	-- =============================
	--[[
		Vanilla SCT cost: 8.7x time, 8x Iron plate, 2x Copper plate
		
		Bobsmod SCT cost: 8.7x time, 2x Iron plate, 2x Copper plate, 2x Tin plate, 2x Lead plate, 1x Circuit board (no components one)
	]]--

	data.raw.recipe["sct-t2-instruments"].ingredients =
	{
		{"sct-t2-microcircuits", 10},
		{"basic-circuit-board", 1},
		{"tin-plate", 1}
	}

	data.raw.recipe["sct-t2-micro-wafer"].ingredients =
	{
		{"lead-plate", 4},
		{"sct-t2-wafer-stamp", 4}
	}

	data.raw.recipe["sct-t2-wafer-stamp"].ingredients =
	{
		{"iron-plate", 2},
		{"tin-plate", 2}
	}
	
	-- Military Science Pack:
	-- =============================
	--[[
		Vanilla SCT cost: 
			Cost: 35x Iron, 22x Copper, 1x Steel, 5x Coal, 4x Circuit
				=> 39x Iron, 28x Copper, 1x Steel, 5x Coal
			Refunds: 14x Iron, 20x Copper = 14x Mixed + 3x Copper
		
		Bobsmod SCT cost: 
			Cost: 1x Steel, 10x Carbon, 4x Circuit, 40x Invar plate, 40x Brass plate
				Alloys = 24x Iron + 24x Copper + 16x Zinc + 16x Nickel
				
			Refunds: 16x Iron, 16x Copper = 16x Mixed
			
			
		Note:
			5x Brass = 3x Copper + 2x Zinc
			5x Invar = 3x Iron + 2x Nickel
			Nickel to Zinc sulfiric acid ratio = 1:1
	]]--
	data.raw.recipe["sct-mil-subplating"].ingredients =
	{
		{type="item", name="invar-alloy", amount=4},
		{type="item", name="brass-alloy", amount=4}
	}
	data.raw.recipe["sct-mil-subplating"].results = 
	{
		{type="item", name="sct-mil-subplating", amount=1},
		{type="item", name="sct-waste-ironcopper", amount=2}
	}

	data.raw.recipe["sct-mil-plating"].ingredients =
	{
		{type="item", name="invar-alloy", amount=12},
		{type="item", name="brass-alloy", amount=12},
		{type="item", name="steel-plate", amount=1},
		{type="item", name="sct-mil-subplating", amount=7}
	}
	data.raw.recipe["sct-mil-plating"].results = 
	{
		{type="item", name="sct-mil-plating", amount=1},
		{type="item", name="sct-waste-ironcopper", amount=2}
	}

	data.raw.recipe["sct-mil-circuit1"].ingredients =
	{
		{type="item", name="electronic-circuit", amount=2},
		{type="item", name="carbon", amount=4}
	}
	data.raw.recipe["sct-mil-circuit1"].results = 
	{
		{type="item", name="sct-mil-circuit1", amount=1}
	}

	data.raw.recipe["sct-mil-circuit2"].ingredients =
	{
		{type="item", name="sct-mil-circuit1", amount=1},
		{type="item", name="electronic-circuit", amount=1},
		{type="item", name="carbon", amount=3}
	}
	data.raw.recipe["sct-mil-circuit2"].results = 
	{
		{type="item", name="sct-mil-circuit2", amount=1}
	}

	data.raw.recipe["sct-mil-circuit3"].ingredients =
	{
		{type="item", name="sct-mil-circuit2", amount=1},
		{type="item", name="electronic-circuit", amount=1},
		{type="item", name="carbon", amount=3}
	}
	data.raw.recipe["sct-mil-circuit3"].results = 
	{
		{type="item", name="sct-mil-circuit3", amount=1}
	}
	
	-- Production Science Pack:
	-- =============================
	--[[
		Vanilla SCT cost: 
			Cost: 17x IronGear, 16x CopperCable, 15x Steel, 20x Stone, 2x Plastic, 4x Adv Circuit, 2x Circuit, 6x Redwire, 20x Petroleum, 120x Water, 1x Electric Engine
				=> 50x Iron, 43x Copper, 15x Steel, 20x Stone, 10x Plastic, 20x Petroleum, 120x Water, 1x Electric Engine
			Refunds: 5x Iron, 11x Copper = 5x Mixed + 3x Copper
			
		Bobsmod SCT cost: 
			Cost: 10x Steel, 20x Silicon, 5x Plastic, 4x Adv Circuit, 2x Circuit, 4x Redwire, 20x Petroleum, 1x Electric Engine, 10x Silver, 10x Tin plate, 10x Lead plate, 120x Sulfur Dioxide
			Refunds: 4x Sulfur
			
		Note: 1x Silicon = 1x Quartz, 1x Stone, 0.5 Coal, 2.5x Water, 10x Hydrogen Chlorine
	]]--

	data.raw.recipe["sct-prod-biosilicate"].ingredients =
	{
		{type="item", name="silicon", amount=20},
		{type="item", name="steel-plate", amount=10},
		{type="item", name="plastic-bar", amount=5},
		{type="item", name="electronic-circuit", amount=2},
		{type="fluid", name="petroleum-gas", amount=20}
	}

	data.raw.recipe["sct-prod-overclocker"].ingredients =
	{
		{type="item", name="tin-plate", amount=10},
		{type="item", name="lead-plate", amount=10},
		{type="item", name="silver-plate", amount=10},
		{type="item", name="electric-engine-unit", amount=1},
		{type="fluid", name="sulfur-dioxide", amount=120}
	}
	data.raw.recipe["sct-prod-overclocker"].results = 
	{
		{type="item", name="sct-prod-overclocker", amount=1},
		{type="item", name="sulfur", amount=4}
	}
	

	-- Blue Science Pack:
	-- =============================
	--[[
		Vanilla SCT cost:
			Cost: 20x Iron, 17x Copper, 1x Steel, 6x Eletronic Circuits, 1x Adv Circuit, 10x Heavy Oil, 10x Light Oil, 15x Water
				=> 28x Iron, 31x Copper, 1x Steel, 2x Plastic, 10x Heavy Oil, 10x Light Oil, 15x Water
			Refunds: 20x Copper
		
		Bobsmod SCT cost:
			Cost: 25x Copper, 1x Steel, 6x Electronic Circuits, 1x Adv Circuit, 20x Heavy Oil, 20x Light Oil, 30x Nitrogen, 14x Glass (Quartz), 10x Gold, 10x Aluminium (Bauxite)
			Refunds: 20x Copper = 10x Copper
	]]--
	data.raw.recipe["sct-t3-flash-fuel"].ingredients =
	{
		{type="fluid", name="heavy-oil", amount=20},
		{type="fluid", name="light-oil", amount=20},
		{type="item", name="steel-plate", amount=1}
	}
	
	data.raw.recipe["sct-t3-laser-foci"].ingredients =
	{
		{type="item", name="copper-plate", amount=5},
		{type="item", name="glass", amount=8},
		{type="item", name="gold-plate", amount=5}
	}
	data.raw.recipe["sct-t3-laser-foci"].results = 
	{
		{type="item", name="sct-t3-laser-foci", amount=1},
		{type="item", name="sct-waste-copperonly", amount=2}
	}
	
	data.raw.recipe["sct-t3-laser-emitter"].ingredients =
	{
		{type="item", name="electronic-circuit", amount=6},
		{type="item", name="copper-plate", amount=8},
		{type="item", name="glass", amount=4},
		{type="item", name="aluminium-plate", amount=5}
	}
	data.raw.recipe["sct-t3-laser-emitter"].results = 
	{
		{type="item", name="sct-t3-laser-emitter", amount=1},
		{type="item", name="sct-waste-copperonly", amount=3}
	}
	
	data.raw.recipe["sct-t3-femto-lasers"].ingredients =
	{
		{type="item", name="sct-t3-laser-emitter", amount=1},
		{type="item", name="sct-t3-laser-foci", amount=1},
		{type="item", name="sct-t3-flash-fuel", amount=1},
		{type="fluid", name="nitrogen", amount=15}
	}
	
	data.raw.recipe["sct-t3-atomic-sensors"].ingredients =
	{
		{type="item", name="advanced-circuit", amount=1},
		{type="item", name="aluminium-plate", amount=5},
		{type="item", name="gold-plate", amount=5},
		{type="item", name="copper-plate", amount=12},
		{type="fluid", name="nitrogen", amount=15}
	}
	data.raw.recipe["sct-t3-atomic-sensors"].results = 
	{
		{type="item", name="sct-t3-atomic-sensors", amount=1},
		{type="item", name="sct-waste-copperonly", amount=5}
	}
	
	-- High-Tech Science Pack:
	-- =============================
	--[[
		Vanilla SCT cost: 
			Cost: 90x Iron, 65x Copper, 1x Battery, 3x Processing Unit, 10x Plastic
			Refunds: 15x Iron, 15x Copper = 15x Mixed
		
		Bobsmod SCT cost: 
			Cost: 16x Iron, 16x Copper, 1x Battery, 3x Processing Unit, 10x Plastic, 20x Electrum, 20x copper-tungsten-alloy, 20x tungsten-carbide, 20x nitinol-alloy, 20x cobalt-steel-alloy, 10x silicon-nitride, 10x lithium, 3x titanium-plate, 1x Polished Ruby
			Refunds: 14x Iron, 14x Copper = 14x Mixed
	]]--
	data.raw.recipe["sct-htech-capbank"].ingredients =
	{
		{type="item", name="battery", amount=1},
		{type="item", name="iron-gear-wheel", amount=8},
		{type="item", name="copper-cable", amount=32},
		{type="item", name="lithium", amount=10},
		{type="item", name="silicon-nitride", amount=10}
	}
	data.raw.recipe["sct-htech-capbank"].results = 
	{
		{type="item", name="sct-htech-capbank", amount=1},
		{type="item", name="sct-waste-ironcopper", amount=14}
	}
	
	data.raw.recipe["sct-htech-injector"].ingredients =
	{
		{type="item", name="processing-unit", amount=3},
		{type="item", name="plastic-bar", amount=10},
		{type="item", name="copper-tungsten-alloy", amount=20},
		{type="item", name="tungsten-carbide", amount=20},
		{type="item", name="ruby-5", amount=1}
	}
	data.raw.recipe["sct-htech-injector"].results = 
	{
		{type="item", name="sct-htech-injector", amount=1}
	}
	
	data.raw.recipe["sct-htech-thermalstore"].ingredients =
	{
		{type="item", name="electrum-alloy", amount=20},
		{type="item", name="cobalt-steel-alloy", amount=20}
	}
	data.raw.recipe["sct-htech-thermalstore"].results = 
	{
		{type="item", name="sct-htech-thermalstore", amount=1}
	}
	
	data.raw.recipe["sct-htech-random"].ingredients =
	{
		{type="item", name="sct-htech-thermalstore-heated", amount=1},
		{type="item", name="titanium-gear-wheel", amount=3},
		{type="item", name="nitinol-gear-wheel", amount=20}
	}
	data.raw.recipe["sct-htech-random"].results = 
	{
		{type="item", name="sct-htech-random", amount=1}
	}
	
end