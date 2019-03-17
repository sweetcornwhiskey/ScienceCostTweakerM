if mods["angelsbioprocessing"] then
	require("science_angels")
	
	if settings.startup["sct-bio"].value == "tier1" then
        sctm.lab_input_add("lab", "sct-bio-science-pack")
	else
		sctm.tech_dependency_add("sct-bio-science-pack", "sct-lab-t2")
	end
    sctm.lab_input_add("sct-lab-t2", "sct-bio-science-pack")
    sctm.lab_input_add("sct-lab-t3", "sct-bio-science-pack")
	sctm.lab_input_add("sct-lab-t4", "sct-bio-science-pack")
end
