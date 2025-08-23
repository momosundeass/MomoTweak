require("prototypes.wall")

local tempItem = Item
Item = MomoLib.itemNames
require("prototypes.change_recipes.recipes")
require("prototypes.change_recipes.chest")
require("prototypes.change_recipes.engine")
require("prototypes.change_recipes.inserter")
require("prototypes.change_recipes.electronics")
require("prototypes.change_recipes.machine")
require("prototypes.change_recipes.science")
require("prototypes.change_recipes.military")
Item = tempItem

require("MomoLib.regenerated-recycle-recipe")