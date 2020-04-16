function momoTweak.recipe.Plastic()
	local AddIng = momoIRTweak.recipe.SafeAddIngredient
	local ITEM = momoIRTweak.FastItem

	AddIng("arithmetic-combinator", ITEM("rubber", 1))
	AddIng("decider-combinator", ITEM("rubber", 1))
	AddIng("constant-combinator", ITEM("rubber", 2))
end