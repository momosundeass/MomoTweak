local re1 = MomoLib.subgroup.sciRe1.name
local inter = MomoLib.subgroup.sciInter.name
local function k2Card(icon) return "__Krastorio2Assets__/icons/cards/" .. icon .. ".png" end

MomoLib.recipe.NoRecycle(Item.redSci)
MomoLib.recipe.NoRecycle(Item.greenSci)
MomoLib.recipe.NoRecycle(Item.blackSci)
MomoLib.recipe.NoRecycle(Item.blueSci)

MomoLib.recipe.New({
    Item.redSci1:I(2),
    Item.techCard:I(1),
}, {
    Item.redSci:I(1)
}, "red-sci-1"):UNLOCK(Item.redSci.n):TIME(30):SUBGROUP(re1)
:ICON(MomoLib.icon.RecycleIcons(Item.redSci1:Prototype())):Extend()
MomoLib.recipe.New({
    Item.redSci:I(),
    Item.burnerInserter:I(),
},{
    Item.inserterPart:I(1, 0.3)
}, "red-sci-recycle"):UNLOCK{Item.blackSci.n, Item.blueSci.n}:TIME(30):SUBGROUP(re1)
:ICON(MomoLib.icon.RecycleIcons(k2Card("automation-tech-card"))):Extend()

MomoLib.recipe.New({
    Item.greenSci1:I(2),
    Item.chemicalPlant:I(1),
    Item.techCard:I(5),
}, {
    Item.greenSci:I(5)
}, "green-sci-1"):UNLOCK(Item.greenSci.n):TIME(30):SUBGROUP(re1)
:ICON(MomoLib.icon.RecycleIcons(Item.greenSci:Prototype())):Extend()

MomoLib.recipe.New({
    Item.basicSci:I(3),
    Item.redSci1:I(2),
    Item.greenSci:I(2),
}, {
    Item.memoryBlock:I(4)
}):UNLOCK{Item.blackSci.n, Item.blueSci.n}:TIME(30):SUBGROUP(inter):Extend()