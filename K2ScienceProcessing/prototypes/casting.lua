
function MomoLib.CastingData()
    Item.assembly4.category = "kr-smelting-crafting"
    MomoLib.recipe.New({
        Item.ironPlate:I(2),
        Item.lubricant:I(3),
    }, Item.ironGear:I(3), "lubricant-iron-gear"):TIME(1)
    :PRODUCTIVITY():UNLOCK(Item.assembly4.tech):CATEGORY(Item.assembly4.category):SUBGROUP(Item.assembly4.category, "auto")
    :HIDDEN():ICON{Item.lubricant.n, Item.ironGear.n}:Extend()

    MomoLib.recipe.New({
        Item.ironPlate:I(3),
        Item.chlorine:I(7),
    }, Item.ironBeam:I(2), "chlorine-iron-beam"):TIME(4)
    :PRODUCTIVITY():UNLOCK(Item.assembly4.tech):CATEGORY(Item.assembly4.category):SUBGROUP(Item.assembly4.category, "auto")
    :HIDDEN():ICON{Item.chlorine.n, Item.ironBeam.n}:Extend()

    MomoLib.recipe.New({
        Item.ironPlate:I(2),
        Item.lubricant:I(3),
    }, Item.ironStick:I(6), "lubricant-stick"):TIME(1)
    :PRODUCTIVITY():UNLOCK(Item.assembly4.tech):CATEGORY(Item.assembly4.category):SUBGROUP(Item.assembly4.category, "auto")
    :HIDDEN():ICON{Item.lubricant.n, Item.ironStick.n}:Extend()

    MomoLib.recipe.New({
        Item.ironPlate:I(2),
        Item.chlorine:I(8),
    }, Item.pipe:I(4), "chlorine-pipe"):TIME(1)
    :PRODUCTIVITY():UNLOCK(Item.assembly4.tech):CATEGORY(Item.assembly4.category):SUBGROUP(Item.assembly4.category, "auto")
    :HIDDEN():ICON{Item.chlorine.n, Item.pipe.n}:Extend()

    MomoLib.recipe.New({
        Item.steelPlate:I(2),
        Item.lubricant:I(4),
    }, Item.steelGear:I(3), "lubricant-steel-gear"):TIME(1)
    :PRODUCTIVITY():UNLOCK(Item.assembly4.tech):CATEGORY(Item.assembly4.category):SUBGROUP(Item.assembly4.category, "auto")
    :HIDDEN():ICON{Item.lubricant.n, Item.steelGear.n}:Extend()

    MomoLib.recipe.New({
        Item.steelPlate:I(3),
        Item.chlorine:I(7),
    }, Item.steelBeam:I(2), "chlorine-steel-beam"):TIME(1)
    :PRODUCTIVITY():UNLOCK(Item.assembly4.tech):CATEGORY(Item.assembly4.category):SUBGROUP(Item.assembly4.category, "auto")
    :HIDDEN():ICON{Item.chlorine.n, Item.steelBeam.n}:Extend()

    MomoLib.recipe.New({
        Item.copperPlate:I(3),
        Item.chlorine:I(7),
    }, Item.cable:I(12), "chlorine-cable"):TIME(1)
    :PRODUCTIVITY():UNLOCK(Item.assembly4.tech):CATEGORY(Item.assembly4.category):SUBGROUP(Item.assembly4.category, "auto")
    :HIDDEN():ICON{Item.chlorine.n, Item.cable.n}:Extend()

    MomoLib.recipe.New({
        Item.steelPlate:I(2),
        Item.chlorine:I(10),
    }, Item.steelPipe:I(4), "chlorine-steel-pipe"):TIME(1)
    :PRODUCTIVITY():UNLOCK(Item.assembly4.tech):CATEGORY(Item.assembly4.category):SUBGROUP(Item.assembly4.category, "auto")
    :HIDDEN():ICON{Item.chlorine.n, Item.steelPipe.n}:Extend()
end


function MomoLib.CastingDataFinal()
    MomoLib.recipe.Remove("kr-iron-gear-wheel-from-enriched-iron")
    MomoLib.recipe.Remove("kr-iron-gear-wheel-from-iron-ore")
    MomoLib.recipe.Remove("kr-iron-stick-from-enriched-iron")
    MomoLib.recipe.Remove("kr-iron-stick-from-iron-ore")
    MomoLib.recipe.Remove("kr-iron-beam-from-enriched-iron")
    MomoLib.recipe.Remove("kr-iron-beam-from-iron-ore")

    MomoLib.recipe.Remove("kr-copper-cable-from-copper-ore")
    MomoLib.recipe.Remove("kr-copper-cable-from-enriched-copper")

    MomoLib.recipe.Remove("kr-easy-steel-beam")
    MomoLib.recipe.Remove("kr-easy-steel-gear-wheel")

    MomoLib.recipe.Remove("kr-easy-imersium-beam")
    MomoLib.recipe.Remove("kr-easy-imersium-gear-wheel")
    
end