data:extend({
	
	-- Create new intermediary products unique to science pack creation.
	-- ===================================================================

	-- c group is intermediates, we place after that
	{
		type = "item-group",
		name = "sct-science",
		order = "c-sct",
		inventory_order = "c-sct",
		icon = "__base__/graphics/item-group/fluids.png",
		icon_size = 64,

	},

	{
		type = "item-subgroup",
		name = "sct-sciencestuff",
		group = "sct-science",
		order = "a",
	},
	
	{
		type = "item-subgroup",
		name = "sct-labs",
		group = "sct-science",
		order = "b[labs]",
	},
	
	{
		type = "item-subgroup",
		name = "sct-byproducts",
		group = "sct-science",
		order = "c[bp]",
	},
	
	{
		type = "item-subgroup",
		name = "sct-sciencepack-1",
		group = "sct-science",
		order = "d[t1]",
	},
	
	{
		type = "item-subgroup",
		name = "sct-sciencepack-2",
		group = "sct-science",
		order = "e[t2]",
	},
	
	{
		type = "item-subgroup",
		name = "sct-sciencepack-3",
		group = "sct-science",
		order = "f[t3]",
	},
	
	{
		type = "item-subgroup",
		name = "sct-sciencepack-mil",
		group = "sct-science",
		order = "g[mil]",
	},
	
	{
		type = "item-subgroup",
		name = "sct-sciencepack-prod",
		group = "sct-science",
		order = "h[prod]",
	},
	
	{
		type = "item-subgroup",
		name = "sct-sciencepack-hightech",
		group = "sct-science",
		order = "i[ht]",
	},
	
})
