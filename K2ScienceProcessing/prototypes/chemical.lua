local Item = MomoLib.itemNames

MomoLib.technology.RemoveAllRecipe(Item.electrolyser.n)
MomoLib.technology.AddRecipe("kr-advanced-chemistry", Item.electrolyser.n)

MomoLib.GetRecipe("kr-water-electrolysis", function(p)
    p:ADDCATEGORY{MomoLib.category.chemicalOnly}:TIME(25)
end)

MomoLib.machine.Power(Item.electrolyser.n, "2MW")
MomoLib.machine.Speed(Item.electrolyser.n, 5)
MomoLib.machine.ModuleLimit(Item.electrolyser.n, MomoLib.EffectLimitation(false))

MomoLib.recipe.New({
    Item.electrolytic:I(5),
    Item.lubricant:I(20),
    Item.ironMolten:I(10),
    Item.iron2:I(4)
}, {
    Item.electrolyte:I(10)
}):TIME(30):UNLOCK(Item.matterStabilizer.tech):CATEGORY(MomoLib.category.electromagnetic):Extend()

-- chemical by-products to deal with
