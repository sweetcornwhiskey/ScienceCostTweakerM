--log(serpent.block(data.raw.item["basic-circuit-board"]))
--log(serpent.block(data.raw.recipe["basic-circuit-board"]))
--log(serpent.block(data.raw.recipe["sct-t2-instruments"]))
if mods["bobelectronics"] then
	if data.raw.item["basic-circuit-board"] then
		bobmods.lib.recipe.replace_ingredient("sct-t2-instruments", "electronic-circuit", "basic-circuit-board")
	end
end
--log(serpent.block(data.raw.recipe["sct-t2-instruments"]))
