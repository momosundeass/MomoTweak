function momoTweak.compatibility.msp.MspToScienceRecipe()
	local ITEM = momoIRTweak.FastItem
	local Replace = momoIRTweak.recipe.ReplaceIngredient
	local ReplaceAll = momoIRTweak.recipe.ReplaceAllIngredient
	local Rem = momoIRTweak.recipe.RemoveIngredient
	local electronics = momoTweak.electronics
	local circuit = momoTweak.circuit
	local board = momoTweak.board
	local components = momoTweak.components
	local Pack = momoTweak.science.GetMoreSciencePack
	local AddIng = momoIRTweak.recipe.SafeAddIngredient
	local NEW = momoIRTweak.recipe.NewRecipe
	local UnlockAt = momoIRTweak.recipe.UnlockAtRef
	local sci = momoTweak.science
	
	local recipe = NEW("crafting", momoTweak.item.msp1, 3, {
		ITEM(Pack(1), 3),
		ITEM(Pack(2), 3)
	}, 5)
	UnlockAt(recipe.name, sci.red)
	AddIng(sci.red, ITEM(recipe.name, 1))
	
	recipe = NEW("crafting", momoTweak.item.msp2, 3, {
		ITEM(Pack(3), 3),
		ITEM(Pack(4), 3),
		ITEM(Pack(5), 3)
	}, 5)
	UnlockAt(recipe.name, sci.green)
	AddIng(sci.green, ITEM(recipe.name, 1))
	
	recipe = NEW("crafting", momoTweak.item.msp3, 3, {
		ITEM(Pack(6), 3),
		ITEM(Pack(7), 3),
		ITEM(Pack(8), 3),
		ITEM(Pack(9), 3),
		ITEM(Pack(10), 3),
		ITEM(Pack(11), 3),
	}, 5)
	UnlockAt(recipe.name, sci.orange)
	AddIng(sci.orange, ITEM(recipe.name, 1))
	
	recipe = NEW("crafting", momoTweak.item.msp4, 3, {
		ITEM(Pack(12), 3),
		ITEM(Pack(13), 3),
		ITEM(Pack(14), 3),
		ITEM(Pack(15), 3),
		ITEM(Pack(16), 3),
		ITEM(Pack(17), 3),
	}, 5)
	UnlockAt(recipe.name, sci.blue)
	AddIng(sci.blue, ITEM(recipe.name, 1))
	
	recipe = NEW("crafting", momoTweak.item.msp5, 3, {
		ITEM(Pack(18), 3),
		ITEM(Pack(19), 3),
		ITEM(Pack(20), 3),
		ITEM(Pack(21), 3),
		ITEM(Pack(22), 3),
		ITEM(Pack(23), 3),
		ITEM(Pack(24), 3),
		ITEM(Pack(25), 3),
		ITEM(Pack(26), 3),
		ITEM(Pack(27), 3),
		ITEM(Pack(28), 3),
	}, 5)
	UnlockAt(recipe.name, sci.yellow)
	AddIng(sci.yellow, ITEM(recipe.name, 1))
	
	recipe = NEW("crafting", momoTweak.item.msp6, 3, {
		ITEM(Pack(29), 3),
		ITEM(Pack(30), 3),
	}, 5)
	UnlockAt(recipe.name, "angels-science-pack-white")
	AddIng("angels-science-pack-white", ITEM(recipe.name, 1))
end
