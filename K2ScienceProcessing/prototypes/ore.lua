local tech = MomoLib.technology.Clone("legendary-quality", "caterium")
:ICON(MomoLib.UnusedRenders("1024/metal-ingot-aluminium", true))
:EFFECTS():COUNT(1000):PRE{MomoLib.itemNames.logisticBot.tech, MomoLib.itemNames.whiteSci.n}
tech:Extend()

local item, prototype = MomoLib.NewRawResource("cat-copper", {
    pictures = {
        MomoLib.UnusedRenders("material-quicklime-1"),
        MomoLib.UnusedRenders("material-quicklime-2"),
        MomoLib.UnusedRenders("material-quicklime-3"),
    }
}, 100)
item.tech = tech.name
MomoLib.itemNames.catalyticCopper = item
prototype:FUEL("7.8GJ", "copper-2-raw", "nuclear")

MomoLib.itemNames.copperSpace = MomoLib.NewRawResource("copper-space", {
    pictures = { MomoLib.UnusedRenders("pile-dust-titanium-5") }
}, 500)
local bot = MomoLib.item:FromPrototype(MomoLib.itemNames.logisticBot.n)
bot:ROCKETPRODUCT{MomoLib.itemNames.copperSpace:I(10)}

MomoLib.itemNames.copper2raw = MomoLib.NewRawResource("copper-2-raw", {
    pictures = {
        MomoLib.UnusedRenders("material-crystal-fluorite-2"),
        MomoLib.UnusedRenders("material-crystal-fluorite-3"),
        MomoLib.UnusedRenders("material-crystal-fluorite-4"),
    }
}, 100)
MomoLib.itemNames.copper2raw.tech = tech.name
MomoLib.itemNames.copper2 = MomoLib.NewIntermediate("copper-2", {
    pictures = {
        MomoLib.UnusedRenders("metal-ingot-aluminium"),
    }
}, 100)
MomoLib.itemNames.copper2.tech = tech.name
local Item = MomoLib.itemNames
MomoLib.recipe.New({
    Item.copperPlate:I(40),
    Item.carbon:I(2),
    Item.petroGas:I(40)
}, Item.copperMolten:I(20))
:CATEGORY(MomoLib.category.filtration):TIME(6):UNLOCK("caterium"):SUBGROUP("fluid-recipes", "auto"):Extend()

MomoLib.recipe.New({
    Item.copperMolten:I(160),
    Item.heavyWater:I(80),
    Item.copperSpace:I(),
    Item.electrolytic:I()
},{
    Item.catalyticCopper:I(2)
}):CATEGORY(MomoLib.category.filtration):TIME(120):UNLOCK("caterium"):Extend()
MomoLib.recipe.New({
    Item.copper2raw:I(),
    Item.titaniumPlate:I(2)
},{
    Item.copper2:I()
}):CATEGORY(MomoLib.category.indFurnace):TIME(240):UNLOCK("caterium"):Extend()