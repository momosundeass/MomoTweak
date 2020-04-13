function momoTweak.recipe.Zinc()
	local AddIng = momoIRTweak.recipe.SafeAddIngredient
	local ITEM = momoIRTweak.FastItem

	local zinc = ITEM("zinc-plate", 1)
	local zinc2 = ITEM("zinc-plate", 2)
	
	AddIng("angels-plating", zinc)
	AddIng("angels-strut", zinc2)
	
	AddIng("cable-harness-3", zinc2)
	
	AddIng("angels-roller-chain", zinc2)
	AddIng("angels-spring", zinc)
	
	AddIng(momoTweak.components.cpu, zinc)
end