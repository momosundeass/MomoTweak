MomoLib.recipe.ReplaceIngredient(Item.engine, {Item.ironGear, Item.engine}, {Item.inserter:I(2), Item.engine:I(4)})
MomoLib.recipe.ReplaceIngredient(Item.electricEngine, {Item.steelPlate, Item.greenChip, Item.electricMotor}, {
    Item.redChip:I(2), 
    Item.electricMotor:I(4), 
    Item.rareMetal:I(6),
    Item.chest:I()
})

MomoLib.recipe.ReplaceIngredient(Item.airPurifier, {
    Item.steelBeam.n,
    Item.engine.n,
}, {
    Item.mineralWaterPump:I(),
    Item.flareStack:I()
})

MomoLib.recipe.SetIngredients(Item.steamEngine.n, {Item.fuelProc:I(), Item.burnerTurbine:I(), Item.inserter:I(3)})

MomoLib.technology.AddRequired(Item.nuclearPlant.tech, {Item.bulkInserter.tech, Item.electrolyser.tech})
MomoLib.recipe.SetIngredients(Item.steamTurbine, {
    Item.steamEngine:I(4),
    Item.bigStorageTank:I(),
    Item.bulkInserter:I(12),
    Item.titaniumPlate:I(20),
    Item.electricMotor:I(40),
    Item.concrete:I(80)
})

MomoLib.recipe.SetIngredients(Item.nuclearPlant, {
    Item.heatPipe:I(80),
    Item.rareMetal:I(200),
    Item.refConcrete:I(400),
    Item.hugeStorageTank:I(),
    Item.bulkInserter:I(40),
    Item.centrifuge:I(2),
    Item.electrolyser:I(2)
})

-- miner
MomoLib.technology.SetRequired(Item.miningDrill2.n, Item.electricEngine.tech)
MomoLib.recipe.ReplaceIngredient(Item.miningDrill2, Item.steelGear, {Item.bulkInserter:I(8), Item.jawCrusher:I(4), Item.electricEngine:I(4)})

MomoLib.recipe.SafeAddIngredients(Item.accumulator, {Item.bigPole:I()})

-- TODO: accumulator 2
-- TODO: Solar 2
-- TODO: Miner 3 