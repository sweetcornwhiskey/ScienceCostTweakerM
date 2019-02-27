-- py science intermediates integration
-- t1
data:extend({
	-- pycoal botle (original SP1)
	{
		type = "item",
		name = "sct-t1-pybotle",
--		icon = "__ScienceCostTweakerM__/graphics/pymods/sct-prod-pycontainer.png",
--		icon_size = 32,
		subgroup = "sct-sciencepack-1",
		order = "d[t1]-d[pybotle]",
		stack_size = 200,
	},
})
-- t2
data:extend({
	-- pycoal chip (original SP2)
	{
		type = "item",
		name = "sct-t2-pychip",
--		icon = "__ScienceCostTweakerM__/graphics/pymods/sct-prod-pycontainer.png",
--		icon_size = 32,
		subgroup = "sct-sciencepack-2",
		order = "e[t2]-g[pychip]",
		stack_size = 200,
	},
})
-- t3
data:extend({
	-- pycoal batery (original science pack 3)
	{
		type = "item",
		name = "sct-t3-pybatery",
--		icon = "__ScienceCostTweakerM__/graphics/pymods/sct-prod-pycontainer.png",
--		icon_size = 32,
		subgroup = "sct-sciencepack-3",
		order = "f[prod]-h[pybatery]",
		stack_size = 200,
	},
})

