local ITEM = momoIRTweak.FastItem
local FLUID = momoIRTweak.FastFluid
local AddIng = momoIRTweak.recipe.SafeAddIngredient
local ResultCount = momoIRTweak.recipe.SetResultCount

function momoTweak.recipe.MiscRecipe()
	ResultCount("angels-rivet", 3)
	ResultCount("angels-axle", 2)
	
	AddIng("angels-bearing", FLUID("lubricant", 15))
end