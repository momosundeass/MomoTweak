MomoLib.recipe.SetIngredients(Item.basicSci, {
    Item.cable:I(5),
    Item.wood:I(3)
}):NORECYCLE()
MomoLib.recipe.SetIngredients(Item.redSci, {
    Item.burnerAssembly:I(),
    Item.techCard:I(5)
}):NORECYCLE():CATEGORY("crafting")
MomoLib.recipe.AddProduct(Item.redSci, {Item.redSci1:I(2)})

-- Green sci
MomoLib.recipe.SetIngredients(Item.greenSci, {
    Item.inserter:I(5),
    Item.belt:I(10),
    Item.techCard:I(5)
}):NORECYCLE()
MomoLib.recipe.AddProduct(Item.greenSci, {Item.greenSci1:I(2)})


-- Black sci
MomoLib.recipe.SetIngredients(Item.blackSci, {
    Item.turret:I(),
    Item.grenade:I(2),
    Item.biterResearch:I(1),
    Item.memoryBlock:I(5),
})
MomoLib.recipe.AddProduct(Item.blackSci, {Item.blackSci1:I(2)})
MomoLib.recipe.ReplaceIngredient(Item.biterResearch, Item.coke.n, Item.eComponent:I(5))


-- Blue sci
MomoLib.recipe.SetIngredients(Item.blueSci, {
    Item.redChip:I(5),
    Item.greenSci2:I(5),
    Item.assembly2:I(),
    Item.memoryBlock:I(8)
}):ADDPRODUCT{Item.blueSci1:I(2), Item.blueSci2:I(16)}:NORECYCLE()


-- Purple sci
MomoLib.technology.AddRequired(Item.purpleSci.n, Item.lithium.tech)
MomoLib.recipe.SetIngredients(Item.purpleSci, {
    Item.elecFurnace:I(4),
    Item.echamber1:I(),
    Item.inconShape:I(2),
    Item.productivityModule:I(2),
    Item.memoryBlock:I(16)
}):AMOUNT(2):ADDPRODUCT{Item.purpleSci1:I(1), Item.purpleSci2:I(32)}:NORECYCLE()

-- Yellow sci
MomoLib.recipe.SetIngredients(Item.yellowSci, {

}):AMOUNT(1):ADDPRODUCT({Item.yellowSci1:I(2), Item.yellowSci2:I(9)}):NORECYCLE()
