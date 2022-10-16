local ITEM = momoIRTweak.FastItem
local AddI = momoIRTweak.recipe.SafeAddIngredient
local RemoveI = momoIRTweak.recipe.RemoveIngredient
local ReplaceI = momoIRTweak.recipe.ReplaceIngredient

function momoPipeTweak.recipes.Update()
	ReplaceI("medium-pipe-coupler", "iron-plate", ITEM("plastic-bar", 1))
	ReplaceI("underground-pipe-segment-t2", "iron-plate", ITEM("plastic-bar", 2))
end

function momoPipeTweak.recipes.FinalFix()
	
end