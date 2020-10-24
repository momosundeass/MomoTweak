function momoTweak.recipe.SciencePack()
	local AddIng = momoIRTweak.recipe.SafeAddIngredient
	local ITEM = momoIRTweak.FastItem
	
	AddIng(momoTweak.science.grey, ITEM("iron-plate", 1))
	AddIng(momoTweak.science.a.basic, ITEM("iron-plate", 1))
end