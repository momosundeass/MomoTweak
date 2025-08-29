
local inter = "intermediate-product"
local fluid = "fluid-recipes"
local cat = MomoLib.category

MomoLib.recipe.New({
    Item.enrichedCoal:I(48)
}, {Item.carbon:I(4)}):TIME(6):SUBGROUP(inter, "auto"):UNLOCK(Item.yellowSci.n):CATEGORY(cat.centrifugeOnly):Extend()

MomoLib.recipe.New({
    Item.ironStick:I(48),
    Item.carbon:I(4)
}, {Item.ironMolten:I(20)}):TIME(3):SUBGROUP(fluid, "auto"):UNLOCK(Item.yellowSci.n):CATEGORY({cat.filtration, cat.advChemical}):Extend()

-- imersite
MomoLib.recipe.New({
    Item.imersite:I(),
    Item.rareMetalClump:I(3),
}, {
    Item.imersiteJelly:I(2)
}):TIME(24):CATEGORY(cat.centrifuge):SUBGROUP(inter, "auto"):UNLOCK(Item.imersiteCrystal.tech):Extend()