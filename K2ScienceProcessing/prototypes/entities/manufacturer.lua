function MomoLib.ManufacturerData()
    MomoLib.recipe.New({
        Item.assembly2:I(2),
        Item.fastInserter:I(16),
        Item.redChip:I(48),
        Item.jawCrusher:I(6),
        Item.titaniumPlate:I(100)
    },{
        Item.manufacturer:I()
    }):TIME(20):UNLOCK(Item.robotFrame.tech):RECYCLEABLE():Extend()
end

function MomoLib.ManufacturerDataFinal()
    MomoLib.technology.SetRequired(Item.electrolytic.tech, Item.titaniumPlate.tech)
    MomoLib.recipe.SetIngredients(Item.electrolytic, {
        Item.electrolyser:I(),
        Item.ironPlate:I(4),
        Item.titaniumPlate:I(20),
        Item.eComponent:I(16)
    }):AMOUNT(4):TIME(80):CATEGORY(MomoLib.category.manufacture):PRODUCTIVITY()

    MomoLib.GetRecipe(Item.motor.n, function (p) p:CATEGORY{"crafting", MomoLib.category.manufacture} end)
    MomoLib.GetRecipe(Item.engine.n, function (p) p:CATEGORY{"crafting", MomoLib.category.manufacture} end)
    MomoLib.GetRecipe(Item.electricMotor.n, function (p) p:CATEGORY{"crafting", MomoLib.category.manufacture} end)
    MomoLib.GetRecipe(Item.electricEngine.n, function (p) p:CATEGORY{"crafting-with-fluid", MomoLib.category.manufacture} end)

    MomoLib.GetRecipe(Item.steamEngine.n, function (p) p:CATEGORY{"crafting", MomoLib.category.manufacture} end)
    MomoLib.GetRecipe(Item.flareStack.n, function (p) p:CATEGORY{"crafting", MomoLib.category.manufacture} end)
    MomoLib.GetRecipe(Item.mineralWaterPump.n, function (p) p:CATEGORY{"crafting", MomoLib.category.manufacture} end)
    MomoLib.GetRecipe(Item.atmospheric.n, function (p) p:CATEGORY{"crafting", MomoLib.category.manufacture} end)
    MomoLib.GetRecipe(Item.lab.n, function (p) p:CATEGORY{"crafting", MomoLib.category.manufacture} end)
    MomoLib.GetRecipe(Item.satellite.n, function (p) p:CATEGORY{"crafting", MomoLib.category.manufacture} end)
end