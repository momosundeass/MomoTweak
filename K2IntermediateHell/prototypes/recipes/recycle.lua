local subgroup = MomoLib.subgroup.inRe.name

MomoLib.item.NoRecycle(Item.constant)
MomoLib.recipe.New({
    Item.constant:I(2),
    Item.repair:I(1),
}, {
    Item.stone:I(2),
    Item.ironPlate:I(3),
    Item.copperPlate:I(3)
}, "constant-recycle"):UNLOCK("circuit-network"):SUBGROUP(subgroup):ICON{Item.constant, Item.repair}:Extend()
MomoLib.technology.AddRequired("advanced-circuit", "circuit-network")
