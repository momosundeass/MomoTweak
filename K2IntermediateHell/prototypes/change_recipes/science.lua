MomoLib.recipe.SetIngredients(Item.basicSci, {
    Item.cable:I(5),
    Item.wood:I(3)
})
MomoLib.recipe.SetIngredients(Item.redSci, {
    Item.burnerAssembly:I(),
    Item.techCard:I(5)
})
MomoLib.recipe.AddProduct(Item.redSci, {Item.redSci1:I(2)})

-- Green sci
MomoLib.recipe.SetIngredients(Item.greenSci, {
    Item.inserter:I(5),
    Item.belt:I(10),
    Item.techCard:I(5)
})
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
})
MomoLib.recipe.AddProduct(Item.blueSci, {Item.blueSci1:I(2), Item.blueSci2:I(16)})
-- idea
-- science craft give residue as byproduct 
-- residue can use to craft more science

