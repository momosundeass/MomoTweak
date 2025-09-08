MomoLib.recipe.ReplaceIngredient(Item.inserter, Item.core, Item.electricMotor:I())
MomoLib.recipe.ReplaceIngredient(Item.fastInserter, Item.steelPlate, Item.steelGear:I(2))
MomoLib.recipe.ReplaceIngredient(Item.fastInserter, Item.inserterPart, Item.inserter:I())
MomoLib.recipe.SetIngredients(Item.bulkInserter, { Item.fastInserter:I(1), Item.titaniumPlate:I(), Item.redChip:I(2), Item.inserterPart:I(2) })


-- chest
MomoLib.recipe.SafeAddIngredients(Item.chest.n, Item.woodenChest:I())

MomoLib.recipe.SafeAddIngredients(Item.steelChest.n, { Item.chest:I(), Item.ironBeam:I(4) } )

MomoLib.technology.AddRequired(Item.strongBox.tech, "concrete")
MomoLib.recipe.SafeAddIngredients(Item.strongBox, {Item.concrete:I(50)})
MomoLib.recipe.ReplaceIngredient(Item.strongBox, Item.steelPlate, Item.steelChest:I(4))

MomoLib.recipe.ReplaceIngredient(Item.warehouse, Item.steelPlate, Item.strongBox:I(2))
MomoLib.recipe.SafeAddIngredients(Item.warehouse, {Item.refConcrete:I(200)})


-- train
MomoLib.recipe.SetIngredients(Item.signal, {Item.lamp:I(1), Item.ironPlate:I(5), Item.greenChip:I(1)})
MomoLib.recipe.SetIngredients(Item.chainSignal, {Item.steelPlate:I(2), Item.signal:I(1), Item.lamp:I(2)})
MomoLib.technology.AddRequired(Item.station.tech, Item.speaker.tech)
MomoLib.recipe.SetIngredients(Item.station, {Item.ironBeam:I(4), Item.steelPlate:I(2), Item.speaker:I(8), Item.signal:I(2)})
-- TODO: locomotive?

MomoLib.technology.SetRequired(Item.beltIm.tech, {Item.redChip.tech, "modular-armor"})
MomoLib.technology.RemoveIngredient(Item.beltIm.tech, Item.blueSci.n)
MomoLib.recipe.SetIngredients(Item.beltIm, {
    Item.redChip:I(2),
    Item.ironPlate:I(4),
    Item.engine:I(),
})
MomoLib.technology.AddRequired(Item.robotFrame.tech, {Item.beltIm.tech})
MomoLib.recipe.SetIngredients(Item.robotFrame, {
    Item.titaniumPlate:I(12),
    Item.steamEngine:I(1),
    Item.electricEngine:I(8),
    Item.battery:I(16),
    Item.beltIm:I(2),
}):AMOUNT(4):TIME(160):PRODUCTIVITY():CATEGORY(MomoLib.category.manufacture)


-- bots
MomoLib.technology.AddRequired(Item.consBot.tech,{Item.radar.tech, Item.strongBox.tech, Item.eqBattery.tech})
MomoLib.recipe.ReplaceIngredient(Item.consBot, Item.greenChip,{
    Item.eqBigBattery:I(),
    Item.fastInserter:I(4)
})
MomoLib.technology.AddRequired(Item.logisticBot.tech, {Item.radar.tech, Item.strongBox.tech, Item.bulkInserter.tech, Item.eqBattery.tech})
MomoLib.recipe.ReplaceIngredient(Item.logisticBot, Item.redChip, {
    Item.eqBigBattery:I(),
    Item.bulkInserter:I(2),
})
MomoLib.recipe.SetIngredients(Item.roboport, {
    Item.radar:I(),
    Item.strongBox:I(),
    Item.accumulator:I(2),
    Item.station:I(4),
    Item.plastic:I(40)
})

MomoLib.technology.SetRequired(Item.roboportSmall.tech, {Item.accumulator2.tech, Item.copper2.tech})
MomoLib.technology.SetIngredients(Item.roboportSmall.tech, {Item.purpleSci.n, Item.yellowSci.n, Item.whiteSci.n, Item.matterSci.n})
MomoLib.recipe.SetIngredients(Item.roboportSmall, {
    Item.roboport:I(2),
    Item.accumulator2:I(1),
    Item.copper2:I(40),
    Item.imersiteBeam:I(10),
    Item.aiCore:I(3),
}):AMOUNT(2)
MomoLib.recipe.SetIngredients(Item.roboportBig, {
    Item.roboportSmall:I(8),
    Item.imersiteBeam:I(40),
    Item.imersiteGear:I(20),
    Item.accumulator2:I(2),
    Item.ecu:I(20)
})


-- yellow tech
MomoLib.technology.SetRequired("personal-roboport-mk2-equipment", "logistic-system")
