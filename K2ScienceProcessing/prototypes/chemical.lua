local Item = MomoLib.itemNames

function MomoLib.ChemicalData() 
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
