MomoLib.recipe.ReplaceIngredient(Item.engine, {Item.ironGear, Item.engine}, {Item.inserter:I(2), Item.engine:I(4)})
MomoLib.recipe.ReplaceIngredient(Item.electricEngine, {Item.steelPlate, Item.greenChip, Item.electricMotor}, {
    Item.redChip:I(2), 
    Item.electricMotor:I(4), 
    Item.rareMetal:I(6),
    Item.chest:I()
}):INTERMEDIATE()

MomoLib.recipe.ReplaceIngredient(Item.airPurifier, {
    Item.steelBeam.n,
    Item.engine.n,
}, {
    Item.mineralWaterPump:I()
}):TIME(8):CATEGORY(MomoLib.category.refinery):INTERMEDIATE()

MomoLib.recipe.SetIngredients(Item.steamEngine.n, {
    Item.fuelProc:I(), 
    Item.burnerTurbine:I(),
    Item.inserter:I(3)
}):AMOUNT(2):INTERMEDIATE()

MomoLib.technology.AddRequired(Item.nuclearPlant.tech, {Item.bulkInserter.tech, Item.electrolyser.tech})
MomoLib.recipe.SetIngredients(Item.steamTurbine, {
    Item.steamEngine:I(4),
    Item.bigStorageTank:I(),
    Item.bulkInserter:I(12),
    Item.titaniumPlate:I(20),
    Item.electricMotor:I(40),
    Item.concrete:I(80)
}):TIME(30):INTERMEDIATE()

MomoLib.recipe.SetIngredients(Item.nuclearPlant, {
    Item.heatPipe:I(80),
    Item.rareMetal:I(200),
    Item.refConcrete:I(400),
    Item.hugeStorageTank:I(),
    Item.bulkInserter:I(40),
    Item.centrifuge:I(2),
    Item.electrolyser:I(2)
}):TIME(60)

MomoLib.technology.AddRequired(Item.fusionPlant.tech, {
    Item.rocketSilo.tech, 
    Item.productivityModule3.tech,
    Item.eqBigBattery2.tech,
    Item.radioactivePolymer.tech
})
MomoLib.recipe.SetIngredients(Item.fusionPlant, {
    Item.rocketSilo:I(),
    Item.nuclearPlant:I(2),
    Item.researchCenter:I(10),
    Item.warehouse:I(2),
    Item.productivityModule3:I(20),
    Item.eqBigBattery2:I(200),
}):TIME(120)
MomoLib.recipe.SetIngredients(Item.steamTurbine2, {
    Item.steamTurbine:I(2),
    Item.bigStorageTank:I(),
    Item.mineralWaterPump:I(6),
    Item.electricEngine:I(65),
    Item.eqBigBattery2:I(100),
    Item.steelGear:I(100)
}):TIME(60):INTERMEDIATE()
MomoLib.recipe.SafeAddIngredients(Item.fusionCell, { Item.rocketFuel:I()})

-- miner
MomoLib.technology.SetRequired(Item.miningDrill2.n, Item.electricEngine.tech)
MomoLib.recipe.ReplaceIngredient(Item.miningDrill2, Item.steelGear, {Item.bulkInserter:I(8), Item.jawCrusher:I(4), Item.electricEngine:I(4)})

local b2, b3
MomoLib.GetTechnology(Item.eqBigBattery2.tech, function (p) b2 = p end)
MomoLib.GetTechnology(Item.eqBigBattery3.tech, function (p) b3 = p end)
MomoLib.technology.SetIngredients(b2.name, MomoLib.DeepCopy(b3.unit.ingredients))
MomoLib.technology.SetRequired(b2.name, {Item.eqBattery.tech, Item.batteryLithium.tech})
MomoLib.technology.SetIngredients(b3.name, {
    MomoLib.MakeResearchIngredient(Item.yellowSci.n),
    MomoLib.MakeResearchIngredient(Item.purpleSci.n),
    MomoLib.MakeResearchIngredient(Item.matterSci.n),
})
MomoLib.technology.SetRequired(b3.name, {Item.eqBattery2.tech, Item.imersitePlate.tech})
 MomoLib.recipe.SetIngredients(Item.eqBigBattery, {
     Item.eqBattery:I(1),
     Item.rareMetal:I(2)
}):INTERMEDIATE()
MomoLib.recipe.SetIngredients(Item.eqBattery2, {
    Item.eqBigBattery:I(),
    Item.batteryLithium:I(2),
    Item.titaniumPlate:I(4)
}):CATEGORY(MomoLib.category.refinery):INTERMEDIATE()
MomoLib.recipe.SetIngredients(Item.eqBigBattery2, {
    Item.eqBattery2:I(1),
    Item.batteryLithium:I(8),
    Item.titaniumPlate:I(2)
}):CATEGORY(MomoLib.category.refinery):INTERMEDIATE()
MomoLib.recipe.SetIngredients(Item.eqBattery3, {
    Item.eqBigBattery2:I(),
    Item.imersitePlate:I(2),
    Item.iron2:I(4),
    Item.blueChip:I(4),
}):CATEGORY(MomoLib.category.refinery):INTERMEDIATE()
MomoLib.recipe.SetIngredients(Item.eqBigBattery3, {
    Item.eqBattery3:I(1),
    Item.imersitePlate:I(4),
    Item.iron2:I(16),
    Item.blueChip:I(8),
}):CATEGORY(MomoLib.category.refinery):INTERMEDIATE()

MomoLib.recipe.SafeAddIngredients(Item.accumulator, {Item.bigPole:I()})
MomoLib.technology.AddRequired(Item.accumulator2.tech, Item.eqBattery3.tech)
MomoLib.recipe.SetIngredients(Item.accumulator2, {
    Item.accumulator:I(8),
    Item.ecu:I(50),
    Item.eqBigBattery3:I(16),
    Item.heatPipe:I(20),
    Item.steelBeam:I(10)
}):INTERMEDIATE()

MomoLib.technology.AddRequired(Item.solar2.tech, Item.eqBattery2.tech)
MomoLib.recipe.SetIngredients(Item.solar2, {
    Item.imersiteCrystal:I(10),
    Item.solar:I(2),
    Item.nitricAcid:I(50),
    Item.eqBigBattery2:I()
}):AMOUNT(2)

MomoLib.recipe.SetIngredients(Item.ecu, {
    Item.hdpeAlloy:I(6),
    Item.electrolytic:I(2),
    Item.imersiteCrystal:I(3),
    Item.blueChip:I(4),
    Item.eqBigBattery2:I()
}):CATEGORY(MomoLib.category.manufacture):INTERMEDIATE()

-- TODO: Miner 3 