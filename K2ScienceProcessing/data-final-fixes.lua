require("prototypes.entities.wall")

local tempItem = Item
Item = MomoLib.itemNames
require("prototypes.change_recipes.recipe")
require("prototypes.change_recipes.engine-electricity")
require("prototypes.change_recipes.logistic")
require("prototypes.change_recipes.electronic")
require("prototypes.change_recipes.module")
require("prototypes.change_recipes.machine")
require("prototypes.change_recipes.machine-2")
require("prototypes.change_recipes.science")
require("prototypes.change_recipes.military")

require("prototypes.entities.foundry")
require("prototypes.entities.electromagnetic-plant")
require("prototypes.entities.cryogenic")

require("prototypes.final.imersite")
MomoLib.ChemicalDataFinal()
MomoLib.ManufacturerDataFinal()
MomoLib.StackBeltDataFinal()

MomoLib.CastingDataFinal()

local function RestoreIcon(sci, icon) 
    local item = sci:Prototype()
    item.icon = MomoLib.K2Card(icon) 
    item.icons = nil
    item.pictures = nil
    MomoLib.GetRecipe(sci.name, function(recipe) 
        recipe.icon = MomoLib.K2Card(icon) 
        recipe.icons = nil
        recipe.pictures = nil
    end)
    MomoLib.GetTechnology(sci.name, function(p) 
        p.icon = "__Krastorio2Assets__/technologies/" .. icon .. ".png"
        p.icon_size = 256
     end)
end

RestoreIcon(Item.redSci, "automation-tech-card")
RestoreIcon(Item.greenSci, "logistic-tech-card")
RestoreIcon(Item.blackSci, "military-tech-card")
RestoreIcon(Item.blueSci, "chemical-tech-card")
RestoreIcon(Item.purpleSci, "production-tech-card")
RestoreIcon(Item.yellowSci, "utility-tech-card")
RestoreIcon(Item.whiteSci, "optimization-tech-card")
RestoreIcon(Item.matterSci, "matter-tech-card")
RestoreIcon(Item.advSci, "advanced-tech-card")
RestoreIcon(Item.singularitySci, "singularity-tech-card")
Item = tempItem 

require("prototypes.entities.storage")
MomoLib.ReduceStorage()


require("prototypes.final.sci-cost")
require("MomoLib.regenerated-recycle-recipe")


