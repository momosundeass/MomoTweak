
local I = MomoLib.MakeIngredient

-- Green circuit
MomoLib.recipe.SetIngredients("decider-combinator", {I("iron-plate"), I("copper-cable", 5)})
MomoLib.recipe.SetProductAmount("decider-combinator", 2)
MomoLib.technology.AddRecipe("electronics", "decider-combinator")

MomoLib.recipe.ReplaceIngredient("electronic-circuit", "copper-cable", I("decider-combinator", 1))
MomoLib.recipe.ReplaceIngredient("electronic-circuit-wood", "copper-cable", I("decider-combinator", 1))