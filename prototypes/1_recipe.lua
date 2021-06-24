if data.raw.fluid["heavy-oil"] and data.raw.fluid["light-oil"] then
    data.raw.recipe["sct-t3-flash-fuel"].hidden = false
    sctm.tech_unlock_add("sct-lab-t3", "sct-t3-flash-fuel")
else
    data.raw.recipe["sct-t3-flash-fuel2"].hidden = false
    sctm.tech_unlock_add("sct-lab-t3", "sct-t3-flash-fuel2")
end
