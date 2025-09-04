MomoLib.machine.ProductivityAdded(Item.cryogenic.n, 0.50)

MomoLib.technology.SetIngredients(Item.cryogenic.tech, {
    MomoLib.MakeResearchIngredient(Item.purpleSci.n),
    MomoLib.MakeResearchIngredient(Item.yellowSci.n),
    MomoLib.MakeResearchIngredient(Item.whiteSci.n),
    MomoLib.MakeResearchIngredient(Item.matterSci.n),
})

MomoLib.technology.SetRequired(Item.cryogenic.tech, {
    Item.accumulator2.tech,
    Item.pureModule1.tech,
})
MomoLib.technology.AddRequired(Item.advChemicalPlant.tech, Item.cryogenic.tech)

MomoLib.recipe.SetIngredients(Item.cryogenic, {
    Item.pureModule1:I(5),
    Item.accumulator2:I(2),
    Item.quantumComputer:I(),
    Item.chemicalPlant:I(4),
    Item.u238:I(40),
    Item.strongBox:I(2),
})

local cryogenic = "cryogenics"
MomoLib.recipe.SetCategory(Item.batteryLithium, {false, cryogenic})
MomoLib.recipe.SetCategory(Item.sulfuricAcid, {false, cryogenic})
MomoLib.recipe.SetCategory(Item.hChloride, {false, cryogenic})
MomoLib.recipe.SetCategory(Item.iron2, {false, cryogenic})
MomoLib.recipe.SetCategory(Item.lubricant, {false, cryogenic})
MomoLib.recipe.SetCategory("fusion-ion", {false, cryogenic})
MomoLib.recipe.SetCategory("yellow-sci-4", {false, cryogenic})
MomoLib.recipe.SetCategory(Item.inconShape, {false, cryogenic})
MomoLib.recipe.SetCategory("green-sci-1-2", {false, cryogenic})