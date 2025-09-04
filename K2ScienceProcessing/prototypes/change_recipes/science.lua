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
    Item.greenChip:I(4)
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
    Item.chemicalPlant:I(2),
    Item.memoryBlock:I(8)
}):ADDPRODUCT{Item.blueSci1:I(2), Item.blueSci2:I(16)}:NORECYCLE()


-- Purple sci
MomoLib.technology.AddRequired(Item.purpleSci.n, Item.lithium.tech)
MomoLib.recipe.SetIngredients(Item.purpleSci, Item.purpleSci.ingredients):AMOUNT(2):ADDPRODUCT{Item.purpleSci1:I(1), Item.purpleSci2:I(32)}:NORECYCLE()

-- Yellow sci
MomoLib.technology.AddRequired(Item.yellowSci.n, Item.steamTurbine.tech)
MomoLib.recipe.SetIngredients(Item.yellowSci, {
    Item.steamTurbine:I(2),
    Item.airPurifier:I(4),
    Item.robotFrame:I(3),
    Item.scienceHardware:I(),
    Item.lattice:I(2),
}):AMOUNT(1):ADDPRODUCT({Item.yellowSci1:I(2), Item.yellowSci2:I(9), Item.yellowSci4:I(2)}):NORECYCLE()

-- White sci
MomoLib.recipe.ReplaceIngredient("rocket-part", Item.lds.n, {Item.hdpeAlloy:I(10), Item.consBot:I(2)})

MomoLib.recipe.SetIngredients(Item.whiteSci, {
    Item.spaceResearch:I(20),
    Item.scienceHardware:I(30),
    Item.blackSci:I(80),
    Item.lab2:I(2)
}):AMOUNT(20):ADDPRODUCT{
    Item.whiteSci1:I(1), 
    Item.whiteSci2:I(24),
    Item.whiteSci4:I(12)
}:CATEGORY(MomoLib.category.researchCenter):TIME(80):NORECYCLE()

-- Matter sci
MomoLib.recipe.SetIngredients(Item.matterSci, {
    Item.matterResearch:I(15),
    Item.matterSci4:I(8),
    Item.matterSci7:I(3),
    Item.scienceHardware2:I(4),
}):AMOUNT(2):ADDPRODUCT{Item.matterSci1:I(2), Item.matterSci2:I(8)}:NORECYCLE()

-- advanced sci
MomoLib.technology.SetRequired(Item.advSci.n, {Item.catalyticCopper.tech, Item.matterStabilizer.tech, Item.accumulator2.tech})