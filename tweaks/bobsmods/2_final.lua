-- Use the new labs new tiered labs.
require("tweaks.newlabs")

-- Make resin craftable by hand, so that we can use it in science pack crafting.
data.raw.recipe["bob-resin-wood"].category = "crafting"
