if mods["angelsbioprocessing"] then
	require("science_angels")
	
	if settings.startup["sct-bio"].value == "tier1" then
        sctm.lab_input_add("lab", "sct-science-pack-bio")
	else
		sctm.tech_dependency_add("sct-research-bio", "sct-lab-t2")
	end
    sctm.lab_input_add("sct-lab-t2", "sct-science-pack-bio")
    sctm.lab_input_add("sct-lab-t3", "sct-science-pack-bio")
	sctm.lab_input_add("sct-lab-t4", "sct-science-pack-bio")
end
