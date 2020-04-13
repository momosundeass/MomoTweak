function momoTweak.recipe.Cobalt()
	local AddIng = momoIRTweak.recipe.SafeAddIngredient
	local ITEM = momoIRTweak.FastItem
	
	AddIng("cable-harness-4", ITEM("cobalt-plate", 2))
	AddIng("cable-harness-5", ITEM("cobalt-plate", 2))
end