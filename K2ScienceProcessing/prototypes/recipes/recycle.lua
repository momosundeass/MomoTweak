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
}, "constant-recycle"):UNLOCK("circuit-network"):SUBGROUP(subgroup):ICON(MomoLib.icon.RecycleIcons(Item.constant:Prototype())):Extend()

MomoLib.technology.AddRequired("advanced-circuit", "circuit-network")
MomoLib.item.NoRecycle(Item.powerSwitch)
MomoLib.recipe.New({
    Item.powerSwitch:I(),
    Item.inserter:I(),
    Item.plastic:I(4)
}, {
    Item.constant:I(),
    Item.inserterPart:I(1, 0.6),
}, "switch-recycle"):UNLOCK("circuit-network"):SUBGROUP(subgroup):ICON(MomoLib.icon.RecycleIcons(Item.powerSwitch:Prototype())):Extend()
MomoLib.item.NoRecycle(Item.speaker)
MomoLib.recipe.New({
    Item.speaker:I(5),
    Item.fastInserter:I(2),
    Item.repair:I(2),
    Item.lightOil:I(10)
}, {
    Item.powerSwitch:I(),
    Item.inserterPart:I(2, 0.6)
}, "speaker-recycle"):UNLOCK(Item.yellowSci.n):SUBGROUP(subgroup):CATEGORY(MomoLib.category.chemicalOnly)
:ICON(MomoLib.icon.RecycleIcons(Item.speaker:Prototype())):Extend()