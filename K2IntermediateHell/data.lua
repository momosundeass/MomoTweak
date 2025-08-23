require("MomoLib.data-init")
MomoLib.ModName = "K2IntermediateHell"
require("helper")
require("item-name")

MomoLib.category = {}
MomoLib.category.fluidCrafting = "crafting-with-fluid"
MomoLib.category.chemical = "chemistry"
MomoLib.category.chemicalOnly = "chemistry-only"
MomoLib.category.refinery = "oil-processing"
MomoLib.category.centrifugeOnly = "centrifuge-only"
MomoLib.category.advancedCentrifugeOnly = "advanced-centrifuge-only"
MomoLib.category.oxidizer = "oxidize"
MomoLib.category.researchCenter = "research-center"
data:extend{
    {type="recipe-category", name=MomoLib.category.chemicalOnly},
    {type="recipe-category", name=MomoLib.category.centrifugeOnly},
    {type="recipe-category", name=MomoLib.category.advancedCentrifugeOnly},
    {type="recipe-category", name=MomoLib.category.oxidizer},
    {type="recipe-category", name=MomoLib.category.researchCenter},
}
MomoLib.machine.AddCategory(MomoLib.itemNames.chemicalPlant.n, MomoLib.category.chemicalOnly)


MomoLib.subgroup.sciInter = MomoLib.subgroup.New("science-intermediate", "intermediate-products", "z")
data:extend{MomoLib.subgroup.sciInter}

MomoLib.subgroup.sciRe1 = MomoLib.subgroup.New("science-pack-recycle-1", "intermediate-products", "z1")
data:extend{MomoLib.subgroup.sciRe1}

MomoLib.subgroup.inRe = MomoLib.subgroup.New("intermediate-recycle", "intermediate-products", "zz")
data:extend{MomoLib.subgroup.inRe}

require("prototypes.items")
require("prototypes.machines")
MomoLib.MomoProcessing = require("prototypes.momo-processing")

local tempItem = Item
Item = MomoLib.itemNames
MomoLib.MomoProcessing.Data()
require("prototypes.recipes.recipes")
require("prototypes.recipes.science")
require("prototypes.recipes.machine")
require("prototypes.recipes.recycle")

Item = tempItem