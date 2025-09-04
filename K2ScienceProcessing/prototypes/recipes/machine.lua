MomoLib.recipe.New({
    Item.lab:I(5),
    Item.fastInserter:I(16),
    Item.plastic:I(40),
    Item.steamEngine:I(2),
    Item.chemicalPlant:I(6)
}, {
    Item.researchCenter:I()
}):UNLOCK(Item.blueSci.n):TIME(5):RECYCLEABLE():Extend()
Item.researchCenter.tech = Item.blueSci.n

MomoLib.recipe.New({
    Item.matterPlant:I(),
    Item.nuclearPlant:I(),
    Item.copper2:I(200),
    Item.imersiteGear:I(200),
    Item.aiCore:I(50),
}, {
    Item.photolab:I()
}):UNLOCK(Item.advSci.n):TIME(60):RECYCLEABLE():Extend()
MomoLib.subgroup.ChangeItem(Item.photolab.n, MomoLib.subgroup.matter.name, "auto")
-- DEBUG = true
-- MoErr(Item.photolab.tech)
-- Item.protolab.tech = Item.advSci.n