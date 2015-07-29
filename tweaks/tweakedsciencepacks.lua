-- Make the science packs use the new intermediate products
-- ===================================================================

-- Science Pack 1
-- ===================================================================
data.raw["recipe"]["science-pack-1"].energy_required = 5
data.raw["recipe"]["science-pack-1"].ingredients =
    {
		{"sct-t1-ironcore", 1},
		{"sct-t1-magnet-coils", 2}
    }
data.raw["recipe"]["science-pack-1"].result = "science-pack-1"
data.raw["recipe"]["science-pack-1"].result_count = 1

-- Science Pack 2
-- ===================================================================
data.raw["recipe"]["science-pack-2"].energy_required = 6
data.raw["recipe"]["science-pack-2"].ingredients =
    {
		{"sct-t2-instruments", 1},
		{"sct-t2-reaction-nodes", 1}
    }
data.raw["recipe"]["science-pack-2"].result = "science-pack-2"
data.raw["recipe"]["science-pack-2"].result_count = 1

-- Science Pack 3
-- ===================================================================
data.raw["recipe"]["science-pack-3"].energy_required = 12
data.raw["recipe"]["science-pack-3"].ingredients =
    {
		{"sct-t3-femto-lasers", 1},
		{"sct-t3-atomic-sensors", 1}
    }
data.raw["recipe"]["science-pack-3"].result = "science-pack-3"
data.raw["recipe"]["science-pack-3"].result_count = 1

-- 1x Heavy Oil, 1x Light Oil, 2x Steel, 1x Glass, 1x Silicon Wafer, 1x Brass Alloy, 20x Nitrogen, 1x Plastic, 1x Gold, 1x Solder, 0.5x Sulfuric Acid
-- 4x Iron, 4x Copper, 3x Wood, 1x Aluminium Plate, 0.5x Ferric Acid

-- Vanilla cost (with bob's mods) = 2.7x Wood, 5x iron-plate, 12.3x copper-plate, 1x steel, 0.8xplastic, 1x battery,
-- 0.8x carbon, 1.5x tin, 0.2x silicon stick, 0.5x solder alloy, 0.5x ferric acid

-- Science Pack Alien
-- ===================================================================
data.raw["recipe"]["alien-science-pack"].energy_required = 12
data.raw["recipe"]["alien-science-pack"].ingredients =
    {
		{"sct-t4-bioprocessor", 1},
		{"sct-t4-overclocker", 1}
    }
data.raw["recipe"]["alien-science-pack"].result = "alien-science-pack"
data.raw["recipe"]["alien-science-pack"].result_count = 1
