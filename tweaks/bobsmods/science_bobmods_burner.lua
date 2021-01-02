if mods["bobtech"] and settings.startup["bobmods-burnerphase"] and not data.raw["item-subgroup"]["sct-science-pack-0"] then
    -- sicence group
    data:extend ({
        {
            type = "item-subgroup",
            name = "sct-science-pack-0",
            group = "sct-science",
            order = "d[t0]",
        },
    })
end
