MomoLib.recipe.ReplaceIngredient(Item.lamp, Item.glass, Item.glass:I(2))

MomoLib.technology.RemoveAllRecipe(Item.oxygen.n)
MomoLib.technology.AddRecipe("coal-enriching", Item.oxygen.n)

MomoLib.technology.SetRequired(Item.lubricant.n, "kr-mineral-water-gathering")
MomoLib.recipe.SafeAddIngredients(Item.lubricant, Item.mineralWater:F(5))