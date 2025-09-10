---@diagnostic disable-next-line: different-requires
require("MomoLib.data-init")
MomoLib.ModName = "K2ScienceProcessing"
require("helper")
require("item-name")
MomoLib.recipe.AlwaysProductivity = true
require("prototypes.data.category")
require("prototypes.data.subgroup")
require("prototypes.data.item-helper")
require("prototypes.data.items")
require("prototypes.data.advanced-ore")
require("prototypes.entities.machines")
require("prototypes.entities.big-mining-drill")
require("prototypes.entities.underground-belt")
require("prototypes.casting")
require("prototypes.chemical")
require("prototypes.modules")
MomoLib.WideBeacon()
MomoLib.NewModules()
MomoLib.ModulesTechRecipe()
MomoLib.MomoProcessing = require("prototypes.momo-processing")

local tempItem = Item
Item = MomoLib.itemNames

MomoLib.vanillaSciences = {Item.redSci.n, Item.greenSci.n, Item.blueSci.n, Item.purpleSci.n, Item.yellowSci.n}
MomoLib.k2Sciences = {Item.purpleSci.n, Item.yellowSci.n, Item.whiteSci.n, Item.matterSci.n, Item.advSci.n, Item.singularitySci.n}

MomoLib.MomoProcessing.Data()
require("prototypes.recipes.recipe")
require("prototypes.recipes.Intermediate")
require("prototypes.recipes.science")
require("prototypes.recipes.science-2")

require("prototypes.recipes.machine")
require("prototypes.recipes.recycle")
require("prototypes.data.infinite-technologies")
require("prototypes.data.productivity-technologies")
require("prototypes.stack-inserter")
MomoLib.StackBeltData()
require("prototypes.entities.manufacturer")
MomoLib.ManufacturerData()

MomoLib.CastingData()
MomoLib.ChemicalData()
Item = tempItem