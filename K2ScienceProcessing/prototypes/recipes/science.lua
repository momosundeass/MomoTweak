local re1 = MomoLib.subgroup.sciRe1.name
local inter = MomoLib.subgroup.sciInter.name


MomoLib.recipe.NoRecycle(Item.redSci)
MomoLib.recipe.NoRecycle(Item.greenSci)
MomoLib.recipe.NoRecycle(Item.blackSci)
MomoLib.recipe.NoRecycle(Item.blueSci)
MomoLib.recipe.NoRecycle(Item.purpleSci)
MomoLib.recipe.NoRecycle(Item.yellowSci)
MomoLib.recipe.NoRecycle(Item.whiteSci)
MomoLib.recipe.NoRecycle(Item.matterSci)
MomoLib.recipe.NoRecycle(Item.advancedSci)
MomoLib.recipe.NoRecycle(Item.singularitySci)

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
:ICON(MomoLib.icon.RecycleIcons(Item.blackSci1:Prototype())):Extend()

MomoLib.recipe.New({
    Item.blueSci1:I(6),
    Item.flareStack:I(1),
    Item.oilPump:I(2),
},{
    Item.blueSci:I(9),
    Item.powerSwitch:I(4)
}, "blue-sci-1"):UNLOCK(Item.blueSci.n):TIME(30):SUBGROUP(re1, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.blueSci1:Prototype())):Extend()
MomoLib.recipe.New({
    Item.blueSci2:I(2),
    Item.sulfur:I()
},{
    Item.blueSci1:I(),
}, "blue-sci-2"):CATEGORY(MomoLib.category.researchCenter):UNLOCK(Item.blueSci.n):TIME(4):SUBGROUP(re1, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.blueSci2:Prototype())):Extend()

MomoLib.recipe.New({
    Item.blueSci:I(4),
    Item.sulfur:I(2),
    Item.hydrogen:I(50),
},{
    Item.greenSci:I(4),
    Item.sulfuricAcid:I(80)
}, "blue-sci-recycle"):CATEGORY(MomoLib.category.refinery):UNLOCK(Item.purpleSci.n):TIME(12):SUBGROUP(re1, "auto")
:ICON(MomoLib.icon.RecycleIcons(MomoLib.K2Card("chemical-tech-card"))):Extend()

MomoLib.recipe.New({},{
    Item.ionMatter:F(20)
}):CATEGORY(MomoLib.category.researchCenter):UNLOCK(Item.purpleSci.n):TIME(1):SUBGROUP(inter, "auto"):Extend()
MomoLib.recipe.New({
    Item.explosive:I(2),
    Item.blueSci1:I(3),
    Item.lithium:I(6),
    Item.fastBelt:I(2),
    Item.u238:I(4),
    Item.ionMatter:F(40)
},{
    Item.inconShape:I(2),
    Item.powerSwitch:I(4),
}):CATEGORY(MomoLib.category.researchCenter):UNLOCK(Item.purpleSci.n):TIME(4):SUBGROUP(inter, "auto"):Extend()

MomoLib.recipe.New({
    Item.purpleSci1:I(),
    Item.blueSci2:I(12),
    Item.rail:I(16),
    Item.methanol:I(100),
    Item.lubricant:I(80)
},{
    Item.purpleSci3:I(8),
    Item.powerSwitch:I(4)
}, Item.purpleSci1.n):CATEGORY(MomoLib.category.electrolysis):UNLOCK(Item.purpleSci.n):TIME(8):SUBGROUP(re1, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.purpleSci1:Prototype())):Extend()

MomoLib.recipe.New({
    Item.purpleSci3:I(2),
    Item.blueChip:I(3),
},{
    Item.purpleSci:I(2)
}, Item.purpleSci3.n):CATEGORY(MomoLib.category.researchServer):UNLOCK(Item.purpleSci.n):TIME(2):SUBGROUP(re1, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.purpleSci3:Prototype())):Extend()

MomoLib.recipe.New({
    Item.purpleSci2:I(48),
    Item.airPurifier:I(),
    Item.chemicalPlant:I()
},{
    Item.blueSci2:I({2, 10}),
    Item.powerSwitch:I(6)
}, Item.purpleSci2.n):CATEGORY(MomoLib.category.researchCenter):UNLOCK(Item.purpleSci.n):TIME(4):SUBGROUP(re1, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.purpleSci2:Prototype())):Extend()

MomoLib.recipe.New({
    Item.yellowSci1:I(1),
    Item.yellowSci2:I(4),
}, {
    Item.yellowSci3:I(2),
}, "yellow-sci-1"):UNLOCK(Item.yellowSci.n):CATEGORY(MomoLib.category.electrolysis):TIME(4):SUBGROUP(re1, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.yellowSci1:Prototype())):Extend()
MomoLib.recipe.New({
    Item.yellowSci1:I(1),
    Item.yellowSci2:I(6),
},{
    Item.scienceHardware:I(1, 0.35)
}, "tellow-sci-2"):UNLOCK(Item.yellowSci.n):CATEGORY(MomoLib.category.indFurnace):TIME(120):SUBGROUP(re1, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.yellowSci2:Prototype())):Extend()