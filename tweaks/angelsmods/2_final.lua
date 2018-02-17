-- Check that angels bioprocesssing is installed
angelsIsbio = false
if (angelsmods and angelsmods.bioprocessing) then
	angelsIsbio = true
end

if (angelsIsbio == true) then
	table.insert(data.raw["lab"]["lab"].inputs, "token-bio")
--	table.insert(data.raw["lab"]["lab-2"].inputs, "token-bio")
	table.insert(data.raw["lab"]["sct-lab-1"].inputs, "token-bio")
	table.insert(data.raw["lab"]["sct-lab-2"].inputs, "token-bio")
	table.insert(data.raw["lab"]["sct-lab-3"].inputs, "token-bio")
	table.insert(data.raw["lab"]["sct-lab-4"].inputs, "token-bio")
end
