local funcs = {}
local item = MomoLib.itemNames

function funcs.Data()
    item.radioactivePolymer = MomoLib.itemName:New(MomoLib.item.Create("radioactive-polymer", MomoLib.icon.Get("radioactive-polymer.png", 32), 100)
    :SUBGROUP("uranium-processing", MomoLib.order.AfterItem(item.tritium.n)))
    item.radioactivePolymer2 = MomoLib.itemName:New(MomoLib.item.Create("radioactive-polymer-2", MomoLib.icon.Get("radioactive-polymer-2.png", 32), 100)
    :NORECYCLE():SUBGROUP("uranium-processing", MomoLib.order.AfterItem(item.tritium.n)))
    MomoLib.item.FromPrototype(item.tritium.n):SUBGROUP("uranium-processing", MomoLib.order.AfterItem(item.tritium.n))

    MomoLib.recipe.New({
        item.radioactivePolymer:I(10),
        item.plastic:I(35),
        item.u235:I(),
    }, {
        item.radioactivePolymer2:I(1, 0.30),
        item.radioactivePolymer:I(10),
        item.plastic:I(20),
    }, "momo-processing"):TIME(30):CATEGORY(MomoLib.category.centrifugeOnly):UNLOCK("kr-fusion-energy")
    :ICON{item.radioactivePolymer2, item.radioactivePolymer}:SUBGROUP("uranium-processing", MomoLib.order.AfterItem(item.tritium.n)):Extend()

    MomoLib.recipe.New({
        item.radioactivePolymer2:I(10),
        item.lithium:I(30),
    }, {
        item.radioactivePolymer:I({9, 11}),
        item.radioactivePolymer2:I(1),
        item.lithium:I(10),
    }, "momo-processing-2"):TIME(240):CATEGORY("centrifuging"):UNLOCK("kr-fusion-energy")
    :ICON(item.radioactivePolymer):SUBGROUP("uranium-processing", MomoLib.order.AfterItem(item.tritium.n)):Extend()

    MomoLib.technology.AddRequired("k11-advanced-centrifuge", "kr-fusion-energy")

    
end
function funcs.Update()
        local advCen = data.raw["assembling-machine"]["k11-advanced-centrifuge"]

    table.insert(advCen["crafting_categories"], MomoLib.category.advancedCentrifugeOnly) 
    table.insert(data.raw["assembling-machine"]["centrifuge"]["crafting_categories"], MomoLib.category.centrifugeOnly)

    MomoLib.recipe.ReplaceProduct("nuclear-fuel-reprocessing", item.tritium.n, item.radioactivePolymer:I(1, 0.15))
    MomoLib.recipe.ReplaceIngredient(item.tritium.n, item.u235, item.radioactivePolymer:I())
end
return funcs
