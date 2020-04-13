function momoTweak.recipe.Gold()
	local AddIng = momoIRTweak.recipe.SafeAddIngredient
	local ITEM = momoIRTweak.FastItem
	local components = momoTweak.components

	AddIng(components.transformer, ITEM("gold-plate", 1))
end