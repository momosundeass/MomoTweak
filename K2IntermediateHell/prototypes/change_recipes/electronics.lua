MomoLib.GetRecipe(Item.decider.n, function (p)
    p:AMOUNT(3):INGREDIENTS{
        Item.cable:I(3), 
        Item.ironPlate:I()
    }
    p:UNLOCK("electronic")
end)

MomoLib.recipe.ReplaceIngredient(Item.greenChip.n, Item.cable.n, Item.decider:I(3))
MomoLib.recipe.ReplaceIngredient(Item.greenChip.n .. "-wood", Item.cable.n, Item.decider:I(3))

MomoLib.recipe.ReplaceIngredient(Item.redChip, Item.eComponent, Item.arithmetic:I(4))
MomoLib.recipe.ReplaceIngredient(Item.redChip, Item.cable, Item.decider:I(2))
MomoLib.recipe.SafeAddIngredients(Item.redChip, Item.chlorine:F(5)):ADDCATEGORY{MomoLib.category.chemical}
-- doing arithmetics-constant recycle
MomoLib.recipe.SetIngredients(Item.arithmetic, {
    Item.decider:I(1), 
    Item.eComponent:I(), 
    Item.cable:I(3)
})
MomoLib.recipe.SetProductAmount(Item.arithmetic, 2)
MomoLib.recipe.AddProduct(Item.arithmetic, Item.constant:I())

MomoLib.recipe.SetIngredients(Item.constant, {Item.cable:I(3)})
MomoLib.recipe.NoRecycle(Item.constant)

MomoLib.technology.AddRequired(Item.selector.tech, "solar-energy")
MomoLib.recipe.SetIngredients(Item.selector, {
    Item.rareMetal:I(1),
    Item.solar:I(),
    Item.redChip:I(),
    Item.arithmetic:I(2)
})
MomoLib.recipe.AddProduct(Item.selector, {
    Item.constant:I(3)
})

MomoLib.technology.AddRequired("processing-unit", Item.selector.tech)
MomoLib.recipe.SetIngredients(Item.blueChip, {
    Item.plastic:I(12),
    Item.selector:I(6),
    Item.greenChip:I(12),
    Item.nitricAcid:I(40),
})