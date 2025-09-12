


MomoLib.technology.AddRequired(Item.lubricant.n, "kr-mineral-water-gathering")
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

MomoLib.recipe.SetCategory("gravel-to-sand", MomoLib.category.crusher)


-- ore processing
MomoLib.recipe.SetIngredients("kr-iron-plate-from-enriched-iron", {
    Item.ironEnriched:I(2),
    Item.ironDust:I(5),
}):AMOUNT(10)
MomoLib.recipe.SetProductAmount("enriched-iron-processing", 20)
MomoLib.recipe.SetIngredients("kr-copper-plate-from-enriched-copper", {
    Item.copperEnriched:I(2),
    Item.copperDust:I(5),
}):AMOUNT(10)
MomoLib.recipe.SetProductAmount("enriched-copper-processing", 20)
MomoLib.recipe.SetIngredients("kr-rare-metals-from-enriched-rare-metals", {
    Item.rareMetalEnriched:I(2),
    Item.rareMetalDust:I(5),
}):AMOUNT(10)
MomoLib.recipe.SetProductAmount("enriched-rare-metals-processing", 20)

MomoLib.recipe.SetIngredients("enriched-titanium-plate", {
    Item.titaniumEnriched:I(4),
    Item.titaniumDust:I(10)
}):AMOUNT(20)