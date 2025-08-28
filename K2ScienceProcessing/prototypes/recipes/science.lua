local re = MomoLib.subgroup.sciRe.name
local re1 = MomoLib.subgroup.sciRe1.name
local re2 = MomoLib.subgroup.sciRe2.name
local re3 = MomoLib.subgroup.sciRe3.name
local inter = MomoLib.subgroup.sciInter.name
local cat = MomoLib.category

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


-- red
MomoLib.recipe.New({
    Item.redSci1:I(2),
    Item.techCard:I(1),
}, {
    Item.redSci:I(2)
}, "red-sci-1"):UNLOCK(Item.redSci.n):TIME(4):SUBGROUP(re1, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.redSci1:Prototype())):Extend()
MomoLib.recipe.New({
    Item.redSci:I(),
    Item.burnerInserter:I(),
},{
    Item.inserterPart:I(1, 0.3)
}, "red-sci-recycle"):UNLOCK{Item.blackSci.n, Item.blueSci.n}:TIME(24):SUBGROUP(re, "auto")
:ICON(MomoLib.icon.RecycleIcons(MomoLib.K2Card("automation-tech-card"))):Extend()


-- green
MomoLib.recipe.New({
    Item.greenSci1:I(2),
    Item.steamEngine:I(1),
    Item.techCard:I(5),
}, {
    Item.greenSci:I(5)
}, "green-sci-1"):UNLOCK(Item.greenSci.n):CATEGORY(cat.chemicalOnly):TIME(12):SUBGROUP(re1, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.greenSci:Prototype())):Extend()

MomoLib.recipe.New({
    Item.greenSci:I(3),
    Item.basicSci:I(5),
    Item.sulfuricAcid:F(50),
    Item.water:F(100)
}, {
    Item.redSci:I(5)
}, "green-sci-recycle"):CATEGORY(cat.refinery):UNLOCK(Item.blueSci.n):TIME(12):SUBGROUP(re, "auto")
:ICON(MomoLib.icon.RecycleIcons(MomoLib.K2Card("logistic-tech-card"))):Extend()

MomoLib.recipe.New({
    Item.greenSci1:I(4),
    Item.chemicalPlant:I(3),
    Item.glass:I(30),
    Item.sulfuricAcid:F(300)
},{
    Item.greenSci2:I(10),
    Item.greenSci:I(2)
}):CATEGORY(cat.fluidCrafting):UNLOCK(Item.blueSci.n):TIME(20):SUBGROUP(inter):Extend()


-- black
MomoLib.recipe.New({
    Item.basicSci:I(3),
    Item.redSci1:I(2),
    Item.greenSci:I(1),
}, {
    Item.memoryBlock:I(4)
}):UNLOCK{Item.blackSci.n, Item.blueSci.n}:TIME(6):CATEGORY(cat.electronics):SUBGROUP(inter):Extend()

MomoLib.recipe.New({
    Item.blackSci1:I(4),
    Item.decider:I(6),
    Item.eComponent:I(3)
},{
    Item.turret:I()
}, "black-sci-1"):UNLOCK(Item.blackSci.n):CATEGORY(cat.chemicalOnly):TIME(16):SUBGROUP(re1, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.blackSci1:Prototype())):Extend()


-- blue
MomoLib.recipe.New({
    Item.blueSci1:I(24),
    Item.flareStack:I(1),
    Item.oilPump:I(2),
},{
    Item.blueSci:I(9),
    Item.powerSwitch:I(4)
}, "blue-sci-1"):UNLOCK(Item.blueSci.n):TIME(50):CATEGORY(cat.refinery):SUBGROUP(re1, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.blueSci1:Prototype())):Extend()
MomoLib.recipe.New({
    Item.blueSci2:I(6),
    Item.sulfur:I(6)
},{
    Item.blueSci1:I(6),
}, "blue-sci-2"):CATEGORY(cat.researchCenter):UNLOCK(Item.blueSci.n):TIME(4):SUBGROUP(re2, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.blueSci2:Prototype())):Extend()

-- purple
MomoLib.recipe.New({
    Item.redSci:I(10),
    Item.chemicalPlant:I(2),
    Item.sulfuricAcid:I(80)
}, Item.redSci1:I(6), "red-sci-1-2"):TIME(6):UNLOCK(Item.purpleSci.n):SUBGROUP(inter, "auto")
:CATEGORY(cat.filtration):ICON(Item.redSci1):Extend()

MomoLib.recipe.New({
    Item.blueSci:I(4),
    Item.sulfur:I(16),
    Item.hydrogen:I(50),
},{
    Item.greenSci:I(4),
    Item.sulfuricAcid:I(80)
}, "blue-sci-recycle"):CATEGORY(cat.refinery):UNLOCK(Item.purpleSci.n):TIME(12):SUBGROUP(re, "auto")
:ICON(MomoLib.icon.RecycleIcons(MomoLib.K2Card("chemical-tech-card"))):Extend()

MomoLib.recipe.New({},{
    Item.ionMatter:F(20)
}):CATEGORY(cat.researchCenter):UNLOCK(Item.purpleSci.n):SPEED(false):CONSUMPTION(false):TIME(1):SUBGROUP(inter, "auto"):Extend()
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
}):CATEGORY(cat.researchCenter):UNLOCK(Item.purpleSci.n):TIME(4):SUBGROUP(inter, "auto"):Extend()

MomoLib.recipe.New({
    Item.purpleSci1:I(),
    Item.blueSci2:I(6),
    Item.rail:I(16),
    Item.methanol:I(100),
    Item.lubricant:I(80)
},{
    Item.purpleSci3:I(8),
    Item.powerSwitch:I(4)
}, Item.purpleSci1.n):CATEGORY(cat.electrolysis):UNLOCK(Item.purpleSci.n):TIME(16):SUBGROUP(re1, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.purpleSci1:Prototype())):Extend()

MomoLib.recipe.New({
    Item.purpleSci3:I(2),
    Item.blueChip:I(3),
},{
    Item.purpleSci:I(2)
}, Item.purpleSci3.n):CATEGORY(cat.researchServer):UNLOCK(Item.purpleSci.n):TIME(2):SUBGROUP(re3, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.purpleSci3:Prototype())):Extend()

MomoLib.recipe.New({
    Item.purpleSci2:I(48),
    Item.airPurifier:I(),
    Item.chemicalPlant:I(2)
},{
    Item.blueSci2:I({2, 10}),
    Item.powerSwitch:I(6)
}, Item.purpleSci2.n):CATEGORY(cat.researchCenter):UNLOCK(Item.purpleSci.n):TIME(4):SUBGROUP(re2, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.purpleSci2:Prototype())):Extend()


-- yellow
MomoLib.recipe.New({
    Item.memoryBlock:I(36),
    Item.selector:I(12),
    Item.arithmetic:I(20),
    Item.decider:I(32),
    Item.powerSwitch:I(8)
},{Item.scienceHardware:I(2)}):UNLOCK(Item.yellowSci.n):CATEGORY(cat.electronics):TIME(90):SUBGROUP(inter, "auto"):Extend()

MomoLib.recipe.New({
    Item.station:I(12),
    Item.steelPipeGround:I(6),
    Item.lds:I(2),
    Item.ironMolten:I(40),
}, {Item.lattice:I(1), Item.blueSci2:I(12)}):UNLOCK(Item.yellowSci.n):CATEGORY(cat.electrolysis):TIME(24):SUBGROUP(inter, "auto"):Extend()

MomoLib.recipe.New({
    Item.yellowSci1:I(1),
    Item.yellowSci2:I(4),
    Item.blueSci1:I(),
    Item.ironMolten:I(20)
}, {
    Item.yellowSci3:I(2),
}, "yellow-sci-1"):UNLOCK(Item.yellowSci.n):CATEGORY(cat.electrolysis):TIME(8):SUBGROUP(re1, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.yellowSci1:Prototype())):Extend()
MomoLib.recipe.New({
    Item.yellowSci1:I(1),
    Item.yellowSci2:I(6),
},{
    Item.scienceHardware:I(1, 0.35)
}, "yellow-sci-2"):UNLOCK(Item.yellowSci.n):CATEGORY(cat.indFurnace):TIME(240):SUBGROUP(re2, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.yellowSci2:Prototype())):Extend()

MomoLib.recipe.New({
    Item.yellowSci3:I(1),
    Item.blueChip:I(2),
    Item.ionMatter:I(80)
}, {
    Item.yellowSci:I(2),
    Item.yellowSci4:I(),
    Item.speaker:I(35)
}, "yellow-sci-3"):UNLOCK(Item.yellowSci.n):CATEGORY(cat.researchServer):TIME(8):SUBGROUP(re3, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.yellowSci3:Prototype())):Extend()

MomoLib.recipe.New({
    Item.yellowSci4:I(2),
    Item.greenSci2:I(2),
    Item.hdpeAlloy:I(22),
    Item.ammonia:I(20),
}, {
    Item.yellowSci:I(),
    Item.steelBeam:I(22),
    Item.solidFuel:I()
}, "yellow-sci-4"):UNLOCK(Item.yellowSci.n):CATEGORY(cat.chemical):TIME(8):SUBGROUP(re3, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.yellowSci4:Prototype())):Extend()