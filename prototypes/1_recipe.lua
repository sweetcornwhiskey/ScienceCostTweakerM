if data.raw.fluid["heavy-oil"] and data.raw.fluid["light-oil"] then
    sctm.hide_recipe("sct-t3-flash-fuel-2")
    sctm.tech_unlock_add("sct-lab-t3", "sct-t3-flash-fuel")
else
    sctm.hide_recipe("sct-t3-flash-fuel")
    sctm.tech_unlock_add("sct-lab-t3", "sct-t3-flash-fuel2")
end
