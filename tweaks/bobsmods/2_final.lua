-- Check that bobsmod plates is installed
bobIsAbout = false
if (bobmods) then
	bobIsAbout = true
end

if (bobIsAbout == true) then
	if data.raw.item["logistic-science-pack"] or data.raw.recipe["logistic-science-pack"] then
--		table.insert(data.raw["lab"]["sct-lab-2"].inputs, "logistic-science-pack")
		table.insert(data.raw["lab"]["sct-lab-3"].inputs, "logistic-science-pack")
		table.insert(data.raw["lab"]["sct-lab-4"].inputs, "logistic-science-pack")	
	end
end
