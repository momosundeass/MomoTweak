MomoLib.GetRecipe(Item.decider.n, function (p)
    p:AMOUNT(3):INGREDIENTS{
        Item.cable:I(3), 
        Item.ironPlate:I()
    }:UNLOCK("electronics")
end)
MomoLib.recipe.ReplaceIngredient(Item.lamp, Item.glass, Item.glass:I(2))

MomoLib.recipe.ReplaceIngredient(Item.greenChip.n, Item.cable.n, Item.decider:I(3))
MomoLib.recipe.ReplaceIngredient(Item.greenChip.n .. "-wood", Item.cable.n, Item.decider:I(3))

MomoLib.recipe.SetIngredients(Item.constant, {Item.greenChip:I(), Item.cable:I(3)}):AMOUNT(2)

MomoLib.recipe.ReplaceIngredient(Item.redChip, {Item.eComponent, Item.cable}, {
    Item.arithmetic:I(4),
    Item.decider:I(2),
    Item.chlorine:I(5)
}):ADDPRODUCT(Item.constant:I(4)):ADDCATEGORY{MomoLib.category.chemical}

MomoLib.recipe.SetIngredients(Item.arithmetic, {
    Item.constant:I(2), 
    Item.eComponent:I(2), 
    Item.cable:I(3)
}):TIME(4):AMOUNT(3)
MomoLib.recipe.AddProduct(Item.arithmetic, Item.constant:I())

MomoLib.recipe.NoRecycle(Item.constant)
MomoLib.recipe.NoRecycle(Item.powerSwitch)
MomoLib.recipe.NoRecycle(Item.speaker)

MomoLib.recipe.SetIngredients(Item.eqSolar, {
    Item.glass:I(8),
    Item.titaniumPlate:I(2),
    Item.redChip:I(),
    Item.solar:I()
}):AMOUNT(4)
MomoLib.technology.AddRequired(Item.selector.tech, Item.eqSolar.tech)
MomoLib.recipe.SetIngredients(Item.selector, {
    Item.rareMetal:I(8),
    Item.eqSolar:I(4),
    Item.redChip:I(),
    Item.arithmetic:I(4)
}):AMOUNT(6):ADDPRODUCT(Item.constant:I(3)):TIME(12)

MomoLib.technology.AddRequired("processing-unit", Item.selector.tech)
MomoLib.recipe.SetIngredients(Item.blueChip, {
    Item.plastic:I(12),
    Item.selector:I(6),
    Item.redChip:I(2),
    Item.greenChip:I(16),
    Item.nitricAcid:I(40),
})

MomoLib.recipe.ReplaceIngredient(Item.eqSolar2, {Item.imersiteCrystal, Item.eqSolar}, {Item.imersiteCrystal:I(), Item.eqSolar:I(2)})

MomoLib.technology.SetRequired(Item.aiCore.tech, {Item.emPlant.tech, Item.speedModule3.tech, Item.eqSolar2.tech})
MomoLib.recipe.SetIngredients(Item.aiCore, {
    Item.speedModule3:I(3),
    Item.imersiteCrystal:I(3),
    Item.researchServer:I(),
    Item.eqSolar2:I(3),
    Item.nitricAcid:I(60),
    Item.ionizedMatter:I(4000)
}):ADDPRODUCT(Item.researchServer:I(1, 0.64)):CATEGORY(MomoLib.category.electromagnetic)