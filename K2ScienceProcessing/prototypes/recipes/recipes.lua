MomoLib.recipe.New({
        MomoLib.MakeIngredient("steel-dust", 3),
        Item.oxygen:F(20)
    }, {
        Item.steelPlate:I(5)
    }, "steel-oxygen-casting"):TIME(1.6):CATEGORY("metallurgy"):UNLOCK(Item.foundry.n)
    :ICON{Item.oxygen, Item.steelPlate}:Extend()

local hydrogen = MomoLib.recipe.New({
        Item.oil:F(5)
    }, {Item.hydrogen:F(50)})
    :TIME(2):CATEGORY("kr-fuel-refinery"):SUBGROUP("fluid-recipes"):UNLOCK("kr-fuel")
hydrogen:Extend()

