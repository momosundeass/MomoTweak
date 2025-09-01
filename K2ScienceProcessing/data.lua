require("MomoLib.data-init")
MomoLib.ModName = "K2ScienceProcessing"
require("helper")
require("item-name")
MomoLib.recipe.AlwaysProductivity = true
require("prototypes.category")

data:extend{{
        type="item-group",
        name="science",
        order=data.raw["item-group"]["intermediate-products"].order .. "-a",
        icon=MomoLib.SpaceExGraphics("item-group/science"),
        icon_size=128
}}
MomoLib.subgroup.sciInter = MomoLib.subgroup.New("science-intermediate", "science", "z", true)
MomoLib.subgroup.sciRe = MomoLib.subgroup.New("science-pack-recycle", "science", "z1", true)
MomoLib.subgroup.sciRe1 = MomoLib.subgroup.New("science-pack-recycle-1", "science", "z2", true)
MomoLib.subgroup.sciRe2 = MomoLib.subgroup.New("science-pack-recycle-2", "science", "z3", true)
MomoLib.subgroup.sciRe3 = MomoLib.subgroup.New("science-pack-recycle-3", "science", "z4", true)
MomoLib.subgroup.sciRe4 = MomoLib.subgroup.New("science-pack-recycle-4", "science", "z5", true)
MomoLib.subgroup.inRe = MomoLib.subgroup.New("intermediate-recycle", "science", "zz", true)
MomoLib.subgroup.uBelt = MomoLib.subgroup.New("underground-belt-2", "logistics", "b-2", true)

MomoLib.subgroup.redSci         = MomoLib.subgroup.New("red-sci", "science", "a", true)
MomoLib.subgroup.greenSci       = MomoLib.subgroup.New("green-sci", "science", "b", true)
MomoLib.subgroup.blueSci        = MomoLib.subgroup.New("blue-sci", "science", "c", true)
MomoLib.subgroup.blackSci       = MomoLib.subgroup.New("black-sci", "science", "d", true)
MomoLib.subgroup.purpleSci      = MomoLib.subgroup.New("purple-sci", "science", "e", true)
MomoLib.subgroup.yellowSci      = MomoLib.subgroup.New("yellow-sci", "science", "f", true)
MomoLib.subgroup.whiteSci       = MomoLib.subgroup.New("white-sci", "science", "g", true)
MomoLib.subgroup.matterSci      = MomoLib.subgroup.New("matter-sci", "science", "h", true)
MomoLib.subgroup.advancedSci    = MomoLib.subgroup.New("advanced-sci", "science", "i", true)
MomoLib.subgroup.singularitySci = MomoLib.subgroup.New("singularity-sci", "science", "j", true)

MomoLib.subgroups["science-pack"].group = "science"

require("prototypes.item-helper")
require("prototypes.items")
require("prototypes.advanced-ore")
require("prototypes.entities.machines")
require("prototypes.entities.underground-belt")
require("prototypes.modules")
MomoLib.WideBeacon()
MomoLib.NewModules()
MomoLib.ModulesTechRecipe()
MomoLib.MomoProcessing = require("prototypes.momo-processing")

local tempItem = Item
Item = MomoLib.itemNames

MomoLib.vanillaSciences = {Item.redSci.n, Item.greenSci.n, Item.blueSci.n, Item.purpleSci.n, Item.yellowSci.n}
MomoLib.k2Sciences = {Item.purpleSci.n, Item.yellowSci.n, Item.whiteSci.n, Item.matterSci.n, Item.advancedSci.n, Item.singularitySci.n}

MomoLib.MomoProcessing.Data()
require("prototypes.recipes.recipes")
require("prototypes.recipes.Intermediate")
require("prototypes.recipes.science")
require("prototypes.recipes.science-2")

require("prototypes.recipes.machine")
require("prototypes.recipes.recycle")
require("prototypes.infinite-technologies")
require("prototypes.productivity-technologies")
require("prototypes.stack-inserter")
MomoLib.StackBeltData()
require("prototypes.entities.manufacturer")
MomoLib.ManufacturerData()
Item = tempItem