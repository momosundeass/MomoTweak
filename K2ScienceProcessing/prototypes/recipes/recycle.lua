local subgroup = MomoLib.subgroup.inRe.name
local re = MomoLib.subgroup.sciRe.name
local cat = MomoLib.category

MomoLib.item.NoRecycle(Item.inserterPart)
MomoLib.item.NoRecycle(Item.constant)
MomoLib.recipe.New({
    Item.constant:I(2),
    Item.repair:I(1),
}, {
    Item.stone:I(1),
    Item.ironPlate:I(3),
    Item.copperPlate:I(3)
}, "constant-recycle"):TIME(6):UNLOCK("circuit-network"):SUBGROUP(subgroup):ICON(MomoLib.icon.RecycleIcons(Item.constant:Prototype())):Extend()

MomoLib.technology.AddRequired("advanced-circuit", "circuit-network")
MomoLib.item.NoRecycle(Item.powerSwitch)
MomoLib.recipe.New({
    Item.powerSwitch:I(),
    Item.inserter:I(),
    Item.plastic:I(2)
}, {
    Item.constant:I(),
    Item.inserterPart:I(1, 0.6),
}, "switch-recycle"):TIME(24):UNLOCK("circuit-network"):SUBGROUP(subgroup):ICON(MomoLib.icon.RecycleIcons(Item.powerSwitch:Prototype())):Extend()
MomoLib.item.NoRecycle(Item.speaker)
MomoLib.recipe.New({
    Item.speaker:I(5),
    Item.fastInserter:I(2),
    Item.repair:I(2),
    Item.lightOil:I(10)
}, {
    Item.powerSwitch:I(),
    Item.inserterPart:I(2, 0.6)
}, "speaker-recycle"):TIME(60):UNLOCK{Item.yellowSci.n, Item.efficiencyModule3.n, Item.speedModule3.n}:SUBGROUP(subgroup):CATEGORY(MomoLib.category.chemicalOnly)
:ICON(MomoLib.icon.RecycleIcons(Item.speaker:Prototype())):Extend()

MomoLib.recipe.New({
    Item.redSci:I(),
    Item.burnerInserter:I(),
},{
    Item.inserterPart:I(1, 0.3)
}, "red-sci-recycle"):UNLOCK{Item.blackSci.n, Item.blueSci.n}:TIME(24):SUBGROUP(re, "auto")
:ICON(MomoLib.icon.RecycleIcons(MomoLib.K2Card("automation-tech-card"))):Extend()

MomoLib.recipe.New({
    Item.greenSci:I(3),
    Item.basicSci:I(5),
    Item.sulfuricAcid:F(50),
    Item.water:F(100)
}, {
    Item.redSci:I(3)
}, "green-sci-recycle"):CATEGORY(cat.refinery):UNLOCK(Item.blueSci.n):TIME(12):SUBGROUP(re, "auto")
:ICON(MomoLib.icon.RecycleIcons(MomoLib.K2Card("logistic-tech-card"))):Extend()

MomoLib.recipe.New({
    Item.blueSci:I(4),
    Item.sulfur:I(16),
    Item.hydrogen:I(50),
},{
    Item.greenSci:I(4),
    Item.sulfuricAcid:I(80)
}, "blue-sci-recycle"):CATEGORY(cat.refinery):UNLOCK(Item.purpleSci.n):TIME(12):SUBGROUP(re, "auto")
:ICON(MomoLib.icon.RecycleIcons(MomoLib.K2Card("chemical-tech-card"))):Extend()

MomoLib.recipe.New({
    Item.purpleSci:I(2),
    Item.inconShape:I(4),
    Item.nitrogen:I(200),
    Item.water:I(100)
},{
    Item.blueSci:I(2),
    Item.ionMatter:I(5)
}, "purple-sci-recycle"):CATEGORY(cat.refinery):UNLOCK{Item.efficiencyModule3.tech, Item.speedModule3.tech}:TIME(48):SUBGROUP(re, "auto")
:ICON(MomoLib.icon.RecycleIcons(MomoLib.K2Card("production-tech-card"))):Extend()