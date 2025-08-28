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
MomoLib.subgroup.sciInter = MomoLib.subgroup.New("science-intermediate", "science", "z")
MomoLib.subgroup.sciRe = MomoLib.subgroup.New("science-pack-recycle", "science", "z1")
MomoLib.subgroup.sciRe1 = MomoLib.subgroup.New("science-pack-recycle-1", "science", "z2")
MomoLib.subgroup.sciRe2 = MomoLib.subgroup.New("science-pack-recycle-2", "science", "z3")
MomoLib.subgroup.sciRe3 = MomoLib.subgroup.New("science-pack-recycle-3", "science", "z4")
MomoLib.subgroup.inRe = MomoLib.subgroup.New("intermediate-recycle", "science", "zz")
data:extend{
    MomoLib.subgroup.sciRe,
    MomoLib.subgroup.sciRe1,
    MomoLib.subgroup.sciRe2,
    MomoLib.subgroup.sciRe3,
    MomoLib.subgroup.inRe,
    MomoLib.subgroup.sciInter
}

MomoLib.subgroups["science-pack"].group = "science"


require("prototypes.items")
require("prototypes.machines")
MomoLib.MomoProcessing = require("prototypes.momo-processing")

local tempItem = Item
Item = MomoLib.itemNames
MomoLib.MomoProcessing.Data()
require("prototypes.recipes.recipes")
require("prototypes.recipes.Intermediate")
require("prototypes.recipes.science")

require("prototypes.recipes.machine")
require("prototypes.recipes.recycle")
require("prototypes.productivity-technologies")
Item = tempItem