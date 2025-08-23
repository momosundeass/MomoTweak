local Item = MomoLib.itemNames

MomoLib.technology.RemoveAllRecipe(Item.electrolyser.n)
MomoLib.technology.AddRecipe("kr-advanced-chemistry", Item.electrolyser.n)

MomoLib.GetRecipe("kr-water-electrolysis", function (p)
    p:ADDCATEGORY{MomoLib.category.chemicalOnly}:TIME(25)
end)

MomoLib.machine.Power(Item.electrolyser.n, "2MW")
MomoLib.machine.Speed(Item.electrolyser.n, 5)

