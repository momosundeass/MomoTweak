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
}, {Item.copperMolten:I(20), Item.hChloride:I(100)})
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


-- iron 2
MomoLib.itemNames.iron2Raw = MomoLib.NewRawResource("iron-2-raw", {
    pictures = { 
        MomoLib.UnusedRenders("material-crystal-pyrite-1"),
        MomoLib.UnusedRenders("material-crystal-pyrite-2"),
        MomoLib.UnusedRenders("material-crystal-pyrite-3"),
    }
}, 100)

MomoLib.itemNames.iron2 = MomoLib.NewIntermediate("iron-2", {
    pictures = { MomoLib.UnusedRenders("part-metal-beam-2"), }
}, 100)

MomoLib.recipe.New({
    Item.ironDust:I(80),
    Item.batteryLithium:I(8),
    Item.sulfur:I(16)
}, {Item.iron2Raw:I(2), Item.uraniumOre:I()}):CATEGORY(MomoLib.category.centrifuge):TIME(120):UNLOCK(Item.imersiteBeam.tech):Extend()
MomoLib.recipe.New({
    Item.iron2Raw:I(),
    Item.hChloride:I(300),
}, {Item.iron2:I(2), Item.chlorine:I(100)}):CATEGORY(MomoLib.category.chemical):TIME(60):UNLOCK(Item.imersiteBeam.tech):Extend()


-- diamond
MomoLib.itemNames.impureDiamond = MomoLib.NewRawResource("impure-diamond", {
    pictures = {
        MomoLib.UnusedRenders("pile-dust-salt-4"),
        MomoLib.UnusedRenders("pile-dust-salt-5"),
        MomoLib.UnusedRenders("pile-dust-salt-6"),
    }
}, 100)
MomoLib.itemNames.diamond = MomoLib.NewIntermediate("diamond", {
    pictures = {
        MomoLib.UnusedRenders("material-crystal-diamond-1"),
    }
}, 100)
MomoLib.itemNames.oilResidue = MomoLib.NewFluid("heavy-oil-residue", {
    pictures = {
        MomoLib.UnusedRenders("fluid-droplet-orange-goo"),
    }
}, {r=192/255 ,g=82/255, b=41/255, a=1})

MomoLib.itemNames.impureDiamond.tech = "laser" 
MomoLib.itemNames.diamond.tech = "laser" 
MomoLib.itemNames.oilResidue.tech = "laser"
MomoLib.technology.SetRequired(MomoLib.itemNames.diamond.tech, {
    Item.lightOil.tech
})

MomoLib.recipe.New({
    Item.oil:I(40),
    Item.heavyOil:I(80),
}, {Item.oilResidue:I(80), Item.petroGas:I(30), Item.coal:I(3)}):TIME(40)
:SUBGROUP("fluid-recipes", "auto")
:UNLOCK(Item.diamond.tech):CATEGORY(MomoLib.category.refinery)
:Extend()

MomoLib.recipe.New({
    Item.impureDiamond:I(4),
}, Item.diamond:I(2)):TIME(160):UNLOCK(Item.diamond.tech):CATEGORY(MomoLib.category.furnace):Extend()

MomoLib.recipe.New({
    Item.enrichedCoal:I(10),
    Item.oilResidue:I(80)
}, {Item.impureDiamond:I(8), Item.dirtyWater:I(100)}):TIME(160):UNLOCK(Item.diamond.tech)
:CATEGORY(MomoLib.category.chemicalOnly):ADDCATEGORY(MomoLib.category.advancedCentrifugeOnly)
:Extend()

