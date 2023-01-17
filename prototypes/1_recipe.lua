sctm.tech_unlock_add("sct-lab-t3", "sct-t3-flash-fuel2")

if data.raw.fluid["heavy-oil"] and data.raw.fluid["light-oil"] then
    sctm.tech_unlock_add("sct-lab-t3", "sct-t3-flash-fuel")
else
    sctm.hide_recipe("sct-t3-flash-fuel")
end
