local matter = Item.matterSci.n
local inter = MomoLib.subgroup.sciInter.name
local interRe = MomoLib.subgroup.inRe.name
local re1 = MomoLib.subgroup.sciRe1.name
local re2 = MomoLib.subgroup.sciRe2.name
local re3 = MomoLib.subgroup.sciRe3.name
local re4 = MomoLib.subgroup.sciRe4.name
local cat = MomoLib.category
local sb = MomoLib.subgroup

-- matter 
MomoLib.recipe.New({
    Item.blueChip:I(16),
    Item.electrolytic:I(2),
    Item.titaniumPlate:I(12),
},{
    Item.matterSci4:I(16),
    Item.carbine:I(2)
}):UNLOCK(matter):CATEGORY(cat.electromagnetic):TIME(80):Extend()

MomoLib.recipe.New({
    Item.matterSci4:I(),
    Item.chemicalPlant:I(),
}, {
    Item.lamp:I(1, 0.4),
    Item.boiler:I(1, 0.7)
}, "matter-sci-4-recycle"):UNLOCK(matter):TIME(12):SUBGROUP(sb.matterSci.name, "auto")
:ICON(MomoLib.icon.RecycleIcons(Item.matterSci4:Prototype())):Extend()

MomoLib.recipe.New({
    Item.uraniumFuel:I(),
    Item.imersiteCrystal:I(9),
    Item.ionizedMatter:I(2000),
    Item.copperMolten:I(40)
},{
    Item.fusionIon:I()
}):UNLOCK(matter):TIME(8):CATEGORY(cat.researchCenter):Extend()

MomoLib.recipe.New({
    Item.fusionIon:I(),
    Item.aiCore:I(8),
    Item.carbine:I(),
}, {
    Item.matterSci7:I(),
    Item.matterSci2:I(20)
}):UNLOCK(matter):TIME(20):CATEGORY(cat.electromagnetic):Extend()

MomoLib.recipe.New({
    Item.matterSci2:I(50),
    Item.fusionIon:I(),
    Item.greenSci1:I(2),
    Item.blueSci1:I(2),
    Item.purpleSci1:I(4),
}, {
    Item.matterSci5:I(4),
    Item.matterSci6:I(2)
}, "matter-sci-2"):UNLOCK(matter):TIME(20):CATEGORY(cat.electromagnetic):Extend()

MomoLib.recipe.New({
    Item.scienceHardware:I(2),
    Item.speaker:I(12),
    Item.speedModule3:I(1),
    Item.greenSci1:I(20),
    Item.hChloride:I(80)
}, Item.scienceHardware2:I(2)):UNLOCK(matter):TIME(30):CATEGORY(cat.photometricCrafting):Extend()

MomoLib.recipe.New({
    Item.matterSci6:I(8),
    Item.blueSci1:I(1),
}, Item.blueSci:I(2), "matter-sci-6"):UNLOCK(matter):SUBGROUP(sb.matterSci.name, "auto"):TIME(30)
:ICON(MomoLib.icon.RecycleIcons(Item.matterSci6:Prototype())):Extend()

MomoLib.item:FromPrototype(Item.matterSci5:Prototype()):FUEL("1GJ", Item.matterSci1:I(2), "nuclear")

Item.purpleSci.ingredients = {
    Item.elecFurnace:I(4),
    Item.echamber1:I(),
    Item.inconShape:I(2),
    Item.productivityModule:I(2),
    Item.memoryBlock:I(16)
}
MomoLib.recipe.New(
    Item.purpleSci.ingredients
, {
    Item.purpleSci:I(),
    Item.purpleSci1:I(3),
    Item.purpleSci2:I(16)
}, "purple-sci"):UNLOCK(matter):TIME(20):CATEGORY(cat.researchServer):Extend()

MomoLib.recipe.New({
    Item.matterSci1:I(4),
    Item.scienceHardware:I(4),
    Item.scienceHardware2:I(),
    Item.matterResearch:I(6)
}, {
    Item.matterSci3:I(24),
    Item.matterSci6:I(2)
}, "matter-sci-1"):UNLOCK(matter):TIME(30):CATEGORY(cat.quantumComputer)
:ICON(MomoLib.icon.RecycleIcons(Item.matterSci1:Prototype())):Extend()

MomoLib.recipe.New({
    Item.matterSci3:I(48),
    Item.fusionIon:I(),
    Item.water:I(4500)
}, {Item.matterSci:I(6), Item.lightOil:I(80)}, "matter-sci"):UNLOCK(matter):TIME(80):CATEGORY(cat.refinery)
:ICON(MomoLib.icon.RecycleIcons(Item.matterSci3:Prototype())):Extend()

MomoLib.recipe.New({
    Item.ecu:I(1),
    Item.inconShape:I(2),
    Item.lubricant:I(160),
    Item.advancedBelt:I(10),
    Item.blueChip:I(10)
}, {
    Item.greenSci1:I(120), 
    Item.greenSci3:I(10)
}, "green-sci-1-2"):TIME(20):CATEGORY(cat.researchCenter):UNLOCK(Item.ecu.tech)
:ICON{Item.ecu.n, Item.greenSci1.n}:Extend()

MomoLib.recipe.New({
    Item.greenSci3:I(8),
    Item.greenSci:I(4),
    Item.aiCore:I()
}, {
    Item.purpleSci2:I(16),
}, "green-sci-3"):TIME(60):UNLOCK(Item.ecu.tech)
:ICON(MomoLib.icon.RecycleIcons(Item.greenSci3:Prototype())):Extend()


-- advanced
