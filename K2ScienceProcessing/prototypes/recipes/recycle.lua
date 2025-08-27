local subgroup = MomoLib.subgroup.inRe.name


MomoLib.item.NoRecycle(Item.inserterPart)
MomoLib.item.NoRecycle(Item.constant)
MomoLib.recipe.New({
    Item.constant:I(2),
    Item.repair:I(1),
}, {
    Item.stone:I(2),
    Item.ironPlate:I(3),
    Item.copperPlate:I(3)
}, "constant-recycle"):UNLOCK("circuit-network"):SUBGROUP(subgroup):ICON{Item.repair, Item.constant}:Extend()
MomoLib.technology.AddRequired("advanced-circuit", "circuit-network")
MomoLib.item.NoRecycle(Item.powerSwitch)
MomoLib.recipe.New({
    Item.powerSwitch:I(),
    Item.inserter:I(),
    Item.plastic:I(4)
}, {
    Item.constant:I(),
    Item.inserterPart:I(1, 0.6),
}, "switch-recycle"):UNLOCK("circuit-network"):SUBGROUP(subgroup):ICON{Item.inserter, Item.powerSwitch}:Extend()