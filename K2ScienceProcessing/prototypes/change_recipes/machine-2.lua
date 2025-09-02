MomoLib.technology.AddRequired(Item.quantumComputer.tech, Item.assembly3.tech)
MomoLib.recipe.SetIngredients(Item.quantumComputer, {
    Item.researchServer:I(4),
    Item.atmospheric:I(2),
    Item.assembly3:I(2),
    Item.emPlant:I(1),
    Item.aiCore:I(40),
    Item.blueChip:I(200),
})
MomoLib.technology.AddRequired(Item.lab3.tech, Item.advancedBelt.tech)
MomoLib.recipe.SetIngredients(Item.lab3, {
    Item.quantumComputer:I(),
    Item.eqBigBattery2:I(40),
    Item.electricEngine:I(60),
    Item.lab2:I(10),
    Item.speedModule3:I(5),
    Item.advancedLoader:I(100)
})

-- assembly 4
MomoLib.technology.SetRequired(Item.assembly4.tech, {Item.matterSci.tech, Item.stackInserter.tech})
MomoLib.technology.RemoveIngredient(Item.assembly4.tech, Item.advSci.n)
MomoLib.recipe.SetIngredients(Item.assembly4, {
    Item.assembly3:I(4),
    Item.steamTurbine:I(2),
    Item.researchServer:I(2),
    Item.aiCore:I(60),
    Item.electricEngine:I(60),
    Item.stackInserter:I(42),
})

-- ore crusher
MomoLib.technology.SetRequired(Item.oreCrusher3.tech, {Item.assembly4.tech, Item.pchamber1.tech})
MomoLib.technology.AddIngredient(Item.oreCrusher3.tech, MomoLib.MakeResearchIngredient(Item.matterSci.n, 1))
MomoLib.recipe.SetIngredients(Item.oreCrusher3, {
    Item.assembly4:I(2),
    Item.jawCrusher:I(80),
    Item.oreCrusher2:I(4),
    Item.steamTurbine:I(4),
    Item.refConcrete:I(60)
}):AMOUNT(4):CATEGORY(MomoLib.category.manufacture)
MomoLib.recipe.SetIngredients(Item.echamber3, {
    Item.assembly4:I(2),
    Item.electrolytic:I(200),
    Item.echamber2:I(4),
    Item.steamTurbine:I(4),
    Item.aiCore:I(40),
    Item.refConcrete:I(60)
}):AMOUNT(4):CATEGORY(MomoLib.category.manufacture)
MomoLib.recipe.SetIngredients(Item.pchamber2, {
    Item.pchamber1:I(2),
    Item.filtration:I(4),
    Item.electricEngine:I(80),
    Item.electrolytic:I(40),
    Item.indFurnace:I(4),
}):AMOUNT(2):CATEGORY(MomoLib.category.manufacture)

-- matter
MomoLib.recipe.SetIngredients(Item.matterStabilizer, {
    Item.electrolyte:I(80),
    Item.imersiteGear:I(10),
    Item.steamTurbine2:I(2),
    Item.ecu:I(40)
}):AMOUNT(4):TIME(60):CATEGORY(MomoLib.category.manufacture):INTERMEDIATE()

MomoLib.recipe.SetIngredients(Item.matterPlant, {
    Item.electrolyte:I(160),
    Item.fusionPlant:I(1),
    Item.matterStabilizer:I(2),
    Item.imersiteBeam:I(20)
}):TIME(30):CATEGORY(MomoLib.category.fluidCrafting)
MomoLib.recipe.SetIngredients(Item.matterAssociator, {
    Item.electrolyte:I(160),
    Item.fusionPlant:I(2),
    Item.matterStabilizer:I(4),
    Item.imersiteBeam:I(40),
    Item.steelPipe:I(220),
    Item.steamTurbine2:I(2)
}):TIME(30):CATEGORY(MomoLib.category.fluidCrafting)

-- adv centrifuge
MomoLib.technology.SetRequired(Item.advCentrifuge.tech, Item.matterPlant.tech, Item.warehouse.tech)
MomoLib.technology.RemoveIngredient(Item.advCentrifuge.tech, Item.advSci.n)
MomoLib.recipe.SetIngredients(Item.advCentrifuge,{
    Item.centrifuge:I(8),
    Item.matterStabilizer:I(8),
    Item.steelPipe:I(400),
    Item.aiCore:I(100),
    Item.electricEngine:I(80),
    Item.warehouse:I(1),
}):TIME(120)


-- TODO: ind furnace -> advanced furnace
