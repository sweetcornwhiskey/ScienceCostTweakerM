-- since this overriding existing item, we only alter grouping here, recipe changes are in recipe

data.raw["tool"]["science-pack-1"].subgroup = "sct-sciencepack-1"
data.raw["tool"]["science-pack-1"].order = "d[t1]-a[science-pack-1]"

data.raw["tool"]["science-pack-2"].subgroup = "sct-sciencepack-2"
data.raw["tool"]["science-pack-2"].order = "e[t2]-a[science-pack-2]"

data.raw["tool"]["science-pack-3"].subgroup = "sct-sciencepack-3"
data.raw["tool"]["science-pack-3"].order = "f[t3]-a[science-pack-3]"

data.raw["tool"]["military-science-pack"].subgroup = "sct-sciencepack-mil"
data.raw["tool"]["military-science-pack"].order = "g[mil]-a[military-science-pack]"

data.raw["tool"]["production-science-pack"].subgroup = "sct-sciencepack-prod"
data.raw["tool"]["production-science-pack"].order = "h[prod]-a[production-science-pack]"

data.raw["tool"]["high-tech-science-pack"].subgroup = "sct-sciencepack-hightech"
data.raw["tool"]["high-tech-science-pack"].order = "i[ht]-a[high-tech-science-pack]"

data.raw["tool"]["space-science-pack"].subgroup = "sct-sciencepack-space"
data.raw["tool"]["space-science-pack"].order = "z[space]-a[space-science-pack]"

-- icons
if settings.startup["sct-hd-icons"] and settings.startup["sct-hd-icons"].value == true then
	data.raw["tool"]["science-pack-1"].icon_size = 64
	data.raw["tool"]["science-pack-1"].icon = "__ScienceCostTweakerM__/graphics/icons/science-pack-1-64.png"
	data.raw["tool"]["science-pack-3"].icon_size = 64
	data.raw["tool"]["science-pack-3"].icon = "__ScienceCostTweakerM__/graphics/icons/science-pack-3-64.png"
	data.raw["tool"]["science-pack-2"].icon_size = 64
	data.raw["tool"]["science-pack-2"].icon = "__ScienceCostTweakerM__/graphics/icons/science-pack-2-64.png"
	data.raw["tool"]["military-science-pack"].icon_size = 64
	data.raw["tool"]["military-science-pack"].icon = "__ScienceCostTweakerM__/graphics/icons/military-science-pack-64.png"
	data.raw["tool"]["production-science-pack"].icon_size = 64
	data.raw["tool"]["production-science-pack"].icon = "__ScienceCostTweakerM__/graphics/icons/production-science-pack-64.png"
	data.raw["tool"]["high-tech-science-pack"].icon_size = 64
	data.raw["tool"]["high-tech-science-pack"].icon = "__ScienceCostTweakerM__/graphics/icons/high-tech-science-pack-64.png"
	data.raw["tool"]["space-science-pack"].icon_size = 64
	data.raw["tool"]["space-science-pack"].icon = "__ScienceCostTweakerM__/graphics/icons/space-science-pack-64.png"
else
	data.raw["tool"]["science-pack-1"].icon_size = 32
	data.raw["tool"]["science-pack-1"].icon = "__ScienceCostTweakerM__/graphics/icons/science-pack-1.png"
	data.raw["tool"]["science-pack-3"].icon_size = 32
	data.raw["tool"]["science-pack-3"].icon = "__ScienceCostTweakerM__/graphics/icons/science-pack-3.png"
	data.raw["tool"]["science-pack-2"].icon_size = 32
	data.raw["tool"]["science-pack-2"].icon = "__ScienceCostTweakerM__/graphics/icons/science-pack-2.png"
	data.raw["tool"]["military-science-pack"].icon_size = 32
	data.raw["tool"]["military-science-pack"].icon = "__ScienceCostTweakerM__/graphics/icons/military-science-pack.png"
	data.raw["tool"]["production-science-pack"].icon_size = 32
	data.raw["tool"]["production-science-pack"].icon = "__ScienceCostTweakerM__/graphics/icons/production-science-pack.png"
	data.raw["tool"]["high-tech-science-pack"].icon_size = 32
	data.raw["tool"]["high-tech-science-pack"].icon = "__ScienceCostTweakerM__/graphics/icons/high-tech-science-pack.png"
	data.raw["tool"]["space-science-pack"].icon_size = 32
	data.raw["tool"]["space-science-pack"].icon = "__ScienceCostTweakerM__/graphics/icons/space-science-pack.png"
end