require("prototypes.mech")
require("prototypes.sci-cost")

if mods["bobinserters"] then
    MomoLib.item.DisableRecipe("long-handed-inserter")
end

MomoLib.item.Disable("area-mining-drill")

data.raw.furnace["kr-crusher"].crafting_categories = {"kr-crushing"}
MomoLib.MomoProcessing.Update()


MomoLib.machine.ProductivityAdded("kr-research-server", 0.50)