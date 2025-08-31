

MomoLib.technology.RemoveAllRecipe(Item.oxygen.n)
MomoLib.technology.AddRecipe("coal-enriching", Item.oxygen.n)

MomoLib.technology.SetRequired(Item.lubricant.n, "kr-mineral-water-gathering")
MomoLib.recipe.SafeAddIngredients(Item.lubricant, Item.mineralWater:F(5))

MomoLib.GetRecipe(Item.batteryLithium.n, function (p) p:CATEGORY(MomoLib.category.electrolysis) end)
MomoLib.GetRecipe(Item.sulfuricAcid.n, function (p) p:CATEGORY(MomoLib.category.filtration) end)

MomoLib.technology.AddRequired(Item.rocketSilo.tech, {Item.radar2.tech, Item.solar2.tech, })
MomoLib.recipe.ReplaceIngredient(Item.satellite, 
{Item.accumulator, Item.radar, Item.solar, Item.glass}, 
{Item.eqBigBattery2:I(40), Item.radar2:I(2), Item.solar2:I(50), Item.lab2:I(10)})

MomoLib.technology.RemoveAllRecipe(Item.hdpeAlloy.n)
MomoLib.technology.AddRecipe(Item.lds.tech, Item.hdpeAlloy.name)
Item.hdpeAlloy.tech = Item.lds.tech
MomoLib.recipe.SafeAddIngredients(Item.hdpeAlloy, Item.lds:I(6))
