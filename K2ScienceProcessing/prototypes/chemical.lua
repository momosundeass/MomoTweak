local Item = MomoLib.itemNames

function MomoLib.ChemicalData() 
    MomoLib.itemNames.air = MomoLib.NewFluid("air", {
        pictures = { MomoLib.UnusedRenders("gas-cloud-air"), }
    }, {.9, .9, 1, 0.7})
    MomoLib.recipe.New({}, Item.air:I(30)):TIME(30):CATEGORY(MomoLib.category.atmospheric):UNLOCK(Item.atmospheric.tech):Extend()
    MomoLib.itemNames.co2 = MomoLib.NewFluid("carbon-dioxide", {
        pictures = { MomoLib.UnusedRenders("molecule-carbon-dioxide"), }
    },  {.9, .2, .2, 1})
    MomoLib.recipe.New({Item.air:I(90)}, 
    {Item.co2:I(30), Item.nitrogen:I(60)}):TIME(30):CATEGORY(MomoLib.category.refinery):UNLOCK(Item.atmospheric.tech):Extend()
    MomoLib.itemNames.air.tech = Item.atmospheric.tech
    MomoLib.itemNames.co2.tech = Item.atmospheric.tech

    MomoLib.recipe.Remove(Item.nitrogen.name)
    MomoLib.recipe.SafeAddIngredients(Item.impureDiamond, Item.co2:I(90))
    MomoLib.technology.AddRequired(Item.diamond.tech, Item.co2.tech)

    -- recycle
    MomoLib.recipe.New({
        Item.electrolytic:I(5),
        Item.lubricant:I(20),
        Item.ironMolten:I(10),
        Item.iron2:I(4)
    }, {
        Item.electrolyte:I(10)
    }):TIME(30):UNLOCK(Item.matterStabilizer.tech):CATEGORY(MomoLib.category.electromagnetic):Extend()

    MomoLib.recipe.New({
        Item.chlorine:I(100),
        Item.mineralWater:I(100),
    }, {
        Item.water:I(200)
    }, "chlorine-recycle"):TIME(180):CATEGORY(MomoLib.category.chemical):UNLOCK(Item.electrolyser.tech):SUBGROUP("fluid-recipes", "auto")
    :ICON{Item.chlorine.n, Item.water.n}:Extend()

    MomoLib.recipe.New({
        Item.hChloride:I(100),
    }, {
        Item.chlorine:I(45),
        Item.hydrogen:I(50)
    }, "hydrogen-chloride-recycle"):TIME(30):CATEGORY(MomoLib.category.electrolysis):UNLOCK(Item.electrolyser.tech):SUBGROUP("fluid-recipes", "auto")
    :ICON{Item.hChloride.n, Item.hydrogen.n}:Extend()

    local barrel = "-barrel"
    MomoLib.item.NoRecycle(Item.chlorine.n..barrel)
    MomoLib.item.NoRecycle(Item.hChloride.n..barrel)
    MomoLib.item.NoRecycle(Item.water.n..barrel)
    MomoLib.item.NoRecycle(Item.heavyWater.n..barrel)
    MomoLib.item.NoRecycle(Item.hydrogen.n..barrel)
end

function MomoLib.ChemicalUpdate() 
    MomoLib.technology.RemoveAllRecipe(Item.electrolyser.n)
    MomoLib.technology.AddRecipe("kr-advanced-chemistry", Item.electrolyser.n)

    MomoLib.GetRecipe("kr-water-electrolysis", function(p)
        p:ADDCATEGORY{MomoLib.category.chemicalOnly}:TIME(25)
    end)

    MomoLib.machine.Power(Item.electrolyser.n, "2MW")
    MomoLib.machine.Speed(Item.electrolyser.n, 5)
    MomoLib.machine.ModuleLimit(Item.electrolyser.n, MomoLib.EffectLimitation(false))
end

function MomoLib.ChemicalDataFinal()
    MomoLib.technology.RemoveAllRecipe(Item.oxygen.n)
    MomoLib.technology.AddRecipe("coal-enriching", Item.oxygen.n)
    MomoLib.recipe.SafeAddIngredients(Item.oxygen.n, {Item.air:I(1)}):TIME(1):AMOUNT(60):ADDPRODUCT(Item.nitrogen:I(1)):CATEGORY(MomoLib.category.refinery)


    -- chemical by-products to deal with
    local burn = "kr-burn-"
    MomoLib.recipe.Remove(burn..Item.chlorine.n)
    MomoLib.recipe.Remove(burn..Item.hChloride.n)
    MomoLib.recipe.Remove(burn..Item.water.n)
    MomoLib.recipe.Remove(burn..Item.heavyWater.n)
    MomoLib.recipe.Remove(burn..Item.hydrogen.n)

    local barrel = "-barrel"
    MomoLib.item.NoRecycle(Item.chlorine.n..barrel)
    MomoLib.item.NoRecycle(Item.hChloride.n..barrel)
    MomoLib.item.NoRecycle(Item.water.n..barrel)
    MomoLib.item.NoRecycle(Item.heavyWater.n..barrel)
    MomoLib.item.NoRecycle(Item.hydrogen.n..barrel)
end
