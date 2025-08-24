local re1 = MomoLib.subgroup.sciRe1.name
local inter = MomoLib.subgroup.sciInter.name


MomoLib.recipe.NoRecycle(Item.redSci)
MomoLib.recipe.NoRecycle(Item.greenSci)
MomoLib.recipe.NoRecycle(Item.blackSci)
MomoLib.recipe.NoRecycle(Item.blueSci)

MomoLib.recipe.New({
    Item.redSci1:I(2),
    Item.techCard:I(1),
}, {
    Item.redSci:I(1)
}, "red-sci-1"):UNLOCK(Item.redSci.n):TIME(30):SUBGROUP(re1, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.redSci1:Prototype())):Extend()
MomoLib.recipe.New({
    Item.redSci:I(),
    Item.burnerInserter:I(),
},{
    Item.inserterPart:I(1, 0.3)
}, "red-sci-recycle"):UNLOCK{Item.blackSci.n, Item.blueSci.n}:TIME(30):SUBGROUP(re1, "auto")
:ICON(MomoLib.icon.RecycleIcons(MomoLib.K2Card("automation-tech-card"))):Extend()

MomoLib.recipe.New({
    Item.greenSci1:I(2),
    Item.chemicalPlant:I(1),
    Item.techCard:I(5),
}, {
    Item.greenSci:I(5)
}, "green-sci-1"):UNLOCK(Item.greenSci.n):TIME(30):SUBGROUP(re1, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.greenSci:Prototype())):Extend()

MomoLib.recipe.New({
    Item.greenSci:I(3),
    Item.basicSci:I(5),
    Item.sulfuricAcid:F(50),
    Item.water:F(100)
}, {
    Item.redSci:I(5)
}, "green-sci-recycle"):CATEGORY(MomoLib.category.refinery):UNLOCK(Item.blueSci.n):TIME(30):SUBGROUP(re1, "auto")
:ICON(MomoLib.icon.RecycleIcons(MomoLib.K2Card("logistic-tech-card"))):Extend()

MomoLib.recipe.New({
    Item.greenSci1:I(4),
    Item.chemicalPlant:I(),
    Item.glass:I(10),
    Item.sulfuricAcid:F(100)
},{
    Item.greenSci2:I(10),
    Item.greenSci:I(2)
}):CATEGORY(MomoLib.category.fluidCrafting):UNLOCK(Item.blueSci.n):TIME(30):SUBGROUP(inter):Extend()


MomoLib.recipe.New({
    Item.basicSci:I(3),
    Item.redSci1:I(2),
    Item.greenSci:I(2),
}, {
    Item.memoryBlock:I(4)
}):UNLOCK{Item.blackSci.n, Item.blueSci.n}:TIME(30):SUBGROUP(inter):Extend()

MomoLib.recipe.New({
    Item.blackSci1:I(4),
    Item.decider:I(6),
    Item.eComponent:I(3)
},{
    Item.turret:I()
}, "black-sci-1"):UNLOCK(Item.blackSci.n):TIME(30):SUBGROUP(re1, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.blackSci:Prototype())):Extend()

MomoLib.recipe.New({
    Item.blueSci1:I(6),
    Item.flareStack:I(2),
    Item.oilPump:I(2),
},{
    Item.blueSci:I(9)
}, "blue-sci-1"):UNLOCK(Item.blueSci.n):TIME(30):SUBGROUP(re1, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.blueSci1:Prototype())):Extend()
MomoLib.recipe.New({
    Item.blueSci2:I(2),
    Item.sulfur:I()
},{
    Item.blueSci1:I(),
}, "blue-sci-2"):CATEGORY(MomoLib.category.researchCenter):UNLOCK(Item.blueSci.n):TIME(24):SUBGROUP(re1, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.blueSci2:Prototype())):Extend()
