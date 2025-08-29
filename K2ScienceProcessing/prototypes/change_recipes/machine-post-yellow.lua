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


-- TODO: oreCrusher3
-- TODO: echamber3
-- TODOL pchamber2

-- TODO: ind furnace -> advanced furnace
