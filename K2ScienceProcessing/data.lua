require("MomoLib.data-init")
MomoLib.ModName = "K2ScienceProcessing"
require("helper")
require("item-name")
MomoLib.recipe.AlwaysProductivity = true
require("prototypes.category")
require("prototypes.subgroup")
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
MomoLib.k2Sciences = {Item.purpleSci.n, Item.yellowSci.n, Item.whiteSci.n, Item.matterSci.n, Item.advSci.n, Item.singularitySci.n}

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