MomoLib.recipe.ReplaceIngredient(Item.fuelProc.n, Item.ironPlate.n, Item.chest:I(2))
MomoLib.recipe.SetIngredients(Item.steamEngine.n, {Item.fuelProc:I(), Item.burnerTurbine:I(), Item.inserter:I(3)})

MomoLib.recipe.ReplaceIngredient(Item.burnerAssembly.n, Item.ironPlate.n, Item.chest:I())
MomoLib.recipe.ReplaceIngredient(Item.assembly.n, Item.ironGear.n, Item.inserter:I(3))
MomoLib.recipe.ReplaceIngredient(Item.assembly.n, Item.electricMotor, Item.steamEngine:I())
MomoLib.technology.SetRequired("automation", {"steam-power"})


MomoLib.recipe.ReplaceIngredient(Item.crusher, Item.cable, Item.belt:I(6))
MomoLib.recipe.ReplaceIngredient(Item.crusher, Item.core, Item.burnerAssembly:I())

-- Miner
MomoLib.recipe.ReplaceIngredient(Item.miningDrill, Item.electricMotor, Item.inserter:I(2))

MomoLib.recipe.ReplaceIngredient(Item.lamp, Item.ironPlate, Item.ironStick:I(2))
MomoLib.recipe.ReplaceIngredient(Item.greenHouse, Item.glass, Item.lamp:I(10))
MomoLib.recipe.ReplaceIngredient(Item.greenHouse, Item.core, Item.assembly:I(2))
MomoLib.technology.SetRequired("kr-greenhouse", {"automation", "lamp"})

MomoLib.recipe.SetIngredients(Item.chemicalPlant, {
    Item.lamp:I(3),
    Item.boiler:I(2),
    Item.steelBeam:I(4),
    Item.assembly:I(1),
    Item.brick:I(20),
})
MomoLib.recipe.SetIngredients(Item.refinery, {
    Item.chemicalPlant:I(),
    Item.engine:I(6),
    Item.boiler:I(6),
    Item.steelBeam:I(10),
    Item.storageTank:I(2),
})