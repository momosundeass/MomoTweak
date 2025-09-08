
-- beacon
MomoLib.technology.SetRequired(Item.beacon.tech, {Item.assembly3.tech, Item.batteryLithium.tech })
MomoLib.recipe.SetIngredients(Item.beacon, {
    Item.assembly3:I(2),
    Item.researchServer:I(),
    Item.inconShape:I(8),
    Item.batteryLithium:I(24),
    Item.blueChip:I(16)
}):AMOUNT(2)

-- modules
MomoLib.recipe.SetIngredients(Item.speedModule, {
    Item.greenChip:I(3),
    Item.constant:I(6),
    Item.decider:I(2),
    Item.sulfur:I(4)
})
MomoLib.recipe.SetIngredients(Item.efficiencyModule, {
    Item.greenChip:I(4),
    Item.decider:I(5),
    Item.eComponent:I(10)
}):AMOUNT(2)
MomoLib.technology.SetRequired(Item.productivityModule.tech, {Item.speedModule.tech, Item.efficiencyModule.tech})
MomoLib.recipe.SetIngredients(Item.productivityModule, {
    Item.speedModule:I(),
    Item.efficiencyModule:I(2),
    Item.redChip:I(2),
    Item.repair:I(1)
})
MomoLib.technology.SetRequired(Item.qualityModule.tech, {Item.productivityModule.tech})
MomoLib.recipe.SetIngredients(Item.qualityModule, {
    Item.productivityModule:I(),
    Item.redChip:I(10),
    Item.repair:I(5)
})

MomoLib.technology.AddRequired(Item.speedModule2, Item.eqSolar.tech)
MomoLib.recipe.SetIngredients(Item.speedModule2, {
    Item.eqSolar:I(4),
    Item.speedModule:I(5),
    Item.arithmetic:I(8),
}):ADDPRODUCT{Item.powerSwitch:I(2)}
MomoLib.technology.AddRequired(Item.efficiencyModule2, Item.eqSolar.tech)
MomoLib.recipe.SetIngredients(Item.efficiencyModule2, {
    Item.eqBigSolar:I(),
    Item.efficiencyModule:I(10),
    Item.arithmetic:I(16),
}):AMOUNT(2):ADDPRODUCT{Item.powerSwitch:I(2)}
MomoLib.technology.AddRequired(Item.productivityModule2.tech, {Item.speedModule2.tech, Item.efficiencyModule2.tech, Item.selector.tech})
MomoLib.recipe.SetIngredients(Item.productivityModule2, {
    Item.blueSci:I(1),
    Item.speedModule2:I(),
    Item.efficiencyModule2:I(),
    Item.productivityModule:I(3),
    Item.selector:I(2),
}):ADDPRODUCT{Item.powerSwitch:I(2)}
MomoLib.technology.AddRequired(Item.qualityModule2.tech, {Item.productivityModule2.tech})
MomoLib.recipe.SetIngredients(Item.qualityModule2, {
    Item.blueSci:I(4),
    Item.qualityModule:I(4),
    Item.productivityModule2:I(),
    Item.repair:I(5)
}):ADDPRODUCT{Item.powerSwitch:I(2)}

MomoLib.technology.AddRequired(Item.speedModule3, Item.expressBelt.tech)
MomoLib.recipe.SetIngredients(Item.speedModule3, {
    Item.blueChip:I(2),
    Item.expressBelt:I(8),
    Item.inconShape:I(),
    Item.speedModule2:I(5)
}):ADDPRODUCT{Item.speaker:I(2)}
MomoLib.technology.AddRequired(Item.efficiencyModule3, Item.logisticBot.tech)
MomoLib.recipe.SetIngredients(Item.efficiencyModule3, {
    Item.blueChip:I(2),
    Item.logisticBot:I(),
    Item.inconShape:I(2),
    Item.efficiencyModule2:I(10)
}):AMOUNT(2):ADDPRODUCT{Item.speaker:I(2)}
MomoLib.technology.AddRequired(Item.productivityModule3.tech, {Item.speedModule3.tech, Item.efficiencyModule3.tech, Item.quarry.tech})
MomoLib.recipe.SetIngredients(Item.productivityModule3, {
    Item.blueChip:I(4),
    Item.imersiteCrystal:I(3),
    Item.speedModule3:I(),
    Item.efficiencyModule3:I(),
    Item.productivityModule2:I(4)
}):ADDPRODUCT{Item.speaker:I(2)}
MomoLib.technology.AddRequired(Item.qualityModule3.tech, {Item.productivityModule3.tech})
MomoLib.recipe.SetIngredients(Item.qualityModule3, {
    Item.blueChip:I(12),
    Item.inconShape:I(2),
    Item.qualityModule2:I(4),
    Item.productivityModule3:I(),
    Item.repair:I(12)
}):ADDPRODUCT{Item.speaker:I(2)}