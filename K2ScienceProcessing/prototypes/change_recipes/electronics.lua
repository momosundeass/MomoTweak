MomoLib.GetRecipe(Item.decider.n, function (p)
    p:AMOUNT(3):INGREDIENTS{
        Item.cable:I(3), 
        Item.ironPlate:I()
    }:UNLOCK("electronics")
end)
MomoLib.recipe.ReplaceIngredient(Item.lamp, Item.glass, Item.glass:I(2))

MomoLib.recipe.ReplaceIngredient(Item.greenChip.n, Item.cable.n, Item.decider:I(3))
MomoLib.recipe.ReplaceIngredient(Item.greenChip.n .. "-wood", Item.cable.n, Item.decider:I(3))

MomoLib.recipe.ReplaceIngredient(Item.redChip, Item.eComponent, Item.arithmetic:I(4))
MomoLib.recipe.ReplaceIngredient(Item.redChip, Item.cable, Item.decider:I(2))
MomoLib.recipe.SafeAddIngredients(Item.redChip, Item.chlorine:F(5)):ADDCATEGORY{MomoLib.category.chemical}

MomoLib.recipe.SetIngredients(Item.arithmetic, {
    Item.decider:I(1), 
    Item.eComponent:I(), 
    Item.cable:I(3)
}):TIME(4)
MomoLib.recipe.SetProductAmount(Item.arithmetic, 2)
MomoLib.recipe.AddProduct(Item.arithmetic, Item.constant:I())

MomoLib.recipe.SetIngredients(Item.constant, {Item.cable:I(3)})
MomoLib.recipe.NoRecycle(Item.constant)
MomoLib.recipe.NoRecycle(Item.powerSwitch)
MomoLib.recipe.NoRecycle(Item.speaker)

MomoLib.technology.AddRequired(Item.selector.tech, "solar-energy")
MomoLib.recipe.SetIngredients(Item.selector, {
    Item.rareMetal:I(8),
    Item.solar:I(),
    Item.redChip:I(),
    Item.arithmetic:I(4)
}):AMOUNT(6):TIME(12)
MomoLib.recipe.AddProduct(Item.selector, {
    Item.constant:I(3)
})

MomoLib.technology.AddRequired("processing-unit", Item.selector.tech)
MomoLib.recipe.SetIngredients(Item.blueChip, {
    Item.plastic:I(12),
    Item.selector:I(6),
    Item.redChip:I(2),
    Item.greenChip:I(16),
    Item.nitricAcid:I(40),
})

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
    Item.greenChip:I(5),
    Item.constant:I(12),
    Item.arithmetic:I(5),
    Item.sulfur:I(18)
})
MomoLib.recipe.SetIngredients(Item.efficiencyModule, {
    Item.greenChip:I(8),
    Item.decider:I(10),
    Item.eComponent:I(10)
}):AMOUNT(2)
MomoLib.technology.SetRequired(Item.productivityModule.tech, {Item.speedModule.tech, Item.efficiencyModule.tech})
MomoLib.recipe.SetIngredients(Item.productivityModule, {
    Item.speedModule:I(),
    Item.efficiencyModule:I(2),
    Item.redChip:I(10),
    Item.repair:I(5)
})
MomoLib.technology.SetRequired(Item.qualityModule.tech, {Item.productivityModule.tech})
MomoLib.recipe.SetIngredients(Item.qualityModule, {
    Item.productivityModule:I(),
    Item.redChip:I(20),
    Item.repair:I(5)
})

MomoLib.recipe.SetIngredients(Item.speedModule2, {
    Item.blueSci:I(2),
    Item.speedModule:I(5),
    Item.selector:I(8),
}):ADDPRODUCT{Item.powerSwitch:I(2), Item.memoryBlock:I(2)}
MomoLib.recipe.SetIngredients(Item.efficiencyModule2, {
    Item.blueSci:I(2),
    Item.efficiencyModule:I(10),
    Item.selector:I(16),
}):AMOUNT(2):ADDPRODUCT{Item.powerSwitch:I(2), Item.memoryBlock:I(2)}
MomoLib.technology.SetRequired(Item.productivityModule2.tech, {Item.speedModule2.tech, Item.efficiencyModule2.tech})
MomoLib.recipe.SetIngredients(Item.productivityModule2, {
    Item.blueSci:I(2),
    Item.speedModule2:I(),
    Item.efficiencyModule2:I(),
    Item.productivityModule:I(5),
    Item.selector:I(2),
}):ADDPRODUCT{Item.powerSwitch:I(2), Item.memoryBlock:I(2)}
MomoLib.technology.SetRequired(Item.qualityModule2.tech, {Item.productivityModule2.tech})
MomoLib.recipe.SetIngredients(Item.qualityModule2, {
    Item.blueSci:I(4),
    Item.qualityModule:I(5),
    Item.productivityModule2:I(2),
}):ADDPRODUCT{Item.powerSwitch:I(2), Item.memoryBlock:I(2)}

-- TODO: Module 3