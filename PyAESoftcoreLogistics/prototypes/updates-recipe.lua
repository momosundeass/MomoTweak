--- using
local ITEM = momoIRTweak.FastItem
local Replace = momoIRTweak.recipe.ReplaceIngredientIfExist

function momoPyTweak.updates.undergroundPipeBeltStoneRecipes() 
	Replace("underground-belt", "iron-plate", ITEM("stone", 10))
	Replace("pipe-to-ground", "iron-plate", ITEM("stone", 5))
end