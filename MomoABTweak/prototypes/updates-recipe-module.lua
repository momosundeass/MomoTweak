function momoTweak.recipe.Module()
	local AddIng = momoIRTweak.recipe.SafeAddIngredient
	local ITEM = momoIRTweak.FastItem
	local Rem = momoIRTweak.recipe.RemoveIngredient
	local Replace = momoIRTweak.recipe.ReplaceIngredientIfExist
	
	Rem("module-processor-board", momoTweak.board.orange)
	AddIng("module-processor-board", ITEM(momoTweak.item.electronics3, 4))
	
	Rem("module-processor-board-2", momoTweak.board.blue)
	AddIng("module-processor-board-2", ITEM(momoTweak.item.electronics4, 4))
	
	Rem("module-processor-board-3", momoTweak.board.blue)
	AddIng("module-processor-board-3", ITEM(momoTweak.item.electronics5, 4))
	
	local baseModules = {
		"speed-module",
		"effectivity-module",
		"productivity-module",
	}
	
	local bobModules = {
		"pollution-create-module",
		"pollution-clean-module",
		"raw-speed-module",
		"green-module",
		"raw-productivity-module"
	}
	
	local itemsMap = {
		{momoTweak.components.resistor, momoTweak.bob.components.resistor },
		{momoTweak.components.transistor, momoTweak.bob.components.transistor },
		{momoTweak.components.microchip, momoTweak.bob.components.microchip },
		{momoTweak.components.transformer, momoTweak.bob.components.transformer },
		{momoTweak.components.cpu, momoTweak.bob.components.cpu }
	}
	
	for _, map in pairs(itemsMap) do
		for _, m in pairs(baseModules) do
			Replace(m, map[1], map[2])
			for i = 2, 8 do	
				Replace(m .. "-" .. i, map[1], map[2])
			end
		end
		
		for _, m in pairs(bobModules) do
			for i = 1, 8 do	
				Replace(m .. "-" .. i, map[1], map[2])
			end
		end
	end
	
end