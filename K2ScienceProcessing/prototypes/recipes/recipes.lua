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

-- plastics
MomoLib.recipe.New({
    Item.enrichedCoal:I(1),
    Item.petroGas:I(17.5),
    Item.hChloride:I(20),
}, {
    Item.plastic:I(3),
    Item.hydrogen:I(20)
}, "pvc"):CATEGORY(MomoLib.category.cryogenicOrChemical):UNLOCK(Item.electrolyser)
:ICON{Item.hChloride.n, Item.plastic.n,}:Extend()
MomoLib.GetRecipe(Item.plastic.n, function (p) p.category = MomoLib.category.cryogenicOrChemical end)

-- rocket
MomoLib.recipe.New({
    Item.blueChip:I(2),
    Item.eComponent:I(8),
    Item.speedModule2:I()
}, {Item.rcu:I()}):TIME(45):UNLOCK(Item.rocketSilo.tech):Extend()

MomoLib.recipe.New({
    Item.lds:I(2),
    Item.steelPipe:I(2),
    Item.hdpeAlloy:I()
}, {Item.rocketSection:I(), Item.barrel:I(2)}):TIME(45):UNLOCK(Item.rocketSilo.tech):Extend()
