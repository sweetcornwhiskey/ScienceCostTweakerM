-- Make technology research enable the Tier 3 and Tier 4 laboratories.
-- ===================================================================
-- Tier 2, enabled by Automation 2 research (which is also enables science pack 2)
table.insert(data.raw.technology["automation-2"].effects,{type = "unlock-recipe", recipe = "sct-lab-2"})
-- Tier 3, enabled by Advanced Electronics research (which is also enables science pack 3)
table.insert(data.raw.technology["advanced-electronics"].effects,{type = "unlock-recipe", recipe = "sct-lab-3"})
-- Tier 4, enabled by Advanced Electronics 2 research (which is also enables high tech science pack)
table.insert(data.raw.technology["advanced-electronics-2"].effects,{type = "unlock-recipe", recipe = "sct-lab-4"})
