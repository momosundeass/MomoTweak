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
MomoLib.technology.RemoveIngredient(Item.assembly4.tech, Item.advancedSci.n)
MomoLib.recipe.SetIngredients(Item.assembly4.tech, {
    Item.assembly3:I(4),
    Item.researchServer:I(2),
    Item.aiCore:I(60),
    Item.electricEngine:I(60),
    Item.stackInserter:I(42),
    Item.copper2:I(200)
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
-- MomoLib.recipe.SetIngredients(Item.matterStabilizer {

-- })

-- adv centrifuge
MomoLib.technology.SetRequired(Item.advCentrifuge.tech, Item.matterPlant.tech)
MomoLib.technology.RemoveIngredient(Item.advCentrifuge.tech, Item.advancedSci.n)
-- MomoLib.recipe.SetIngredients(Item.advCentrifuge)


-- TODO: ind furnace -> advanced furnace
