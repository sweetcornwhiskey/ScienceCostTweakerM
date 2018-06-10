if mods["angelsbioprocessing"] then
	if data.raw.technology["bio-temperate-farming"] then
		table.insert(data.raw.technology["bio-temperate-farming"].prerequisites, "sct-research-bio")
	end
	if data.raw.technology["bio-swamp-farming"] then
		table.insert(data.raw.technology["bio-swamp-farming"].prerequisites, "sct-research-bio")
	end
	if data.raw.technology["bio-desert-farming"] then
		table.insert(data.raw.technology["bio-desert-farming"].prerequisites, "sct-research-bio")
	end
end
