function momoTweak.recipe.Carbon()
	local AddIng = momoIRTweak.recipe.SafeAddIngredient
	local ITEM = momoIRTweak.FastItem
	
	
	local carbon = ITEM("solid-carbon", 1)
	local carbon3 = ITEM("solid-carbon", 3)
	AddIng(momoTweak.components.transistor, carbon)
	AddIng(momoTweak.components.transformer, carbon3)
end