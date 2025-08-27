MomoLib.recipe.ReplaceIngredient(Item.inserter, Item.core, Item.electricMotor:I())
MomoLib.recipe.ReplaceIngredient(Item.fastInserter, Item.steelPlate, Item.steelGear:I(2))
MomoLib.recipe.ReplaceIngredient(Item.fastInserter, Item.inserterPart, Item.inserter:I())
MomoLib.recipe.SetIngredients(Item.bulkInserter, { Item.fastInserter:I(1), Item.titaniumPlate:I(), Item.redChip:I(2), Item.inserterPart:I(2) })

MomoLib.recipe.SafeAddIngredients(Item.chest.n, Item.woodenChest:I())
MomoLib.recipe.SafeAddIngredients(Item.steelChest.n, { Item.chest:I(), Item.ironBeam:I(4) } )

MomoLib.technology.AddRequired(Item.strongBox.tech, "concrete")
MomoLib.recipe.SafeAddIngredients(Item.strongBox, {Item.concrete:I(50)})
MomoLib.recipe.SafeAddIngredients(Item.strongBox2, {Item.refConcrete:I(100)})

-- TODO: train sets

-- TODO: robot sets
MomoLib.technology.AddRequired(Item.robotFrame.tech, Item.bulkInserter.tech)
MomoLib.recipe.ReplaceIngredient(Item.robotFrame, {Item.eComponent.n, Item.titaniumPlate.n}, {Item.bulkInserter:I(4), Item.chest:I(1)})