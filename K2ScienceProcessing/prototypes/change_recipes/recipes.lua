

MomoLib.technology.RemoveAllRecipe(Item.oxygen.n)
MomoLib.technology.AddRecipe("coal-enriching", Item.oxygen.n)

MomoLib.technology.SetRequired(Item.lubricant.n, "kr-mineral-water-gathering")
MomoLib.recipe.SafeAddIngredients(Item.lubricant, Item.mineralWater:F(5))

MomoLib.GetRecipe(Item.batteryLithium.n, function (p) p:CATEGORY(MomoLib.category.electrolysis) end)
MomoLib.GetRecipe(Item.sulfuricAcid.n, function (p) p:CATEGORY(MomoLib.category.filtration) end)