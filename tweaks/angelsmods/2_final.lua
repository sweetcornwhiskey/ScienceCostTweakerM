-- Check that angels bioprocesssing is installed
angelsIsBio = false

if (angelsmods and angelsmods.bioprocessing) then
	angelsIsBio = true
end

if(angelsIsBio) then
	table.insert(data.raw["lab"]["lab"].inputs, "token-bio")
--	table.insert(data.raw["lab"]["lab-2"].inputs, "token-bio")
	table.insert(data.raw["lab"]["sct-lab-1"].inputs, "token-bio")
	table.insert(data.raw["lab"]["sct-lab-2"].inputs, "token-bio")
	table.insert(data.raw["lab"]["sct-lab-3"].inputs, "token-bio")
	table.insert(data.raw["lab"]["sct-lab-4"].inputs, "token-bio")
end
