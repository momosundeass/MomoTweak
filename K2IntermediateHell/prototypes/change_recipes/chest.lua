local item = MomoLib.itemNames

MomoLib.recipe.SafeAddIngredients(item.chest.n, item.woodenChest:I())
MomoLib.recipe.SafeAddIngredients(item.steelChest.n, { item.chest:I(), item.ironBeam:I(4) } )