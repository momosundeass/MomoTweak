require("prototypes.mech")


if mods["bobinserters"] then
    MomoLib.item.DisableRecipe("long-handed-inserter")
end

MomoLib.item.Disable("area-mining-drill")

data.raw.furnace["kr-crusher"].crafting_categories = {"kr-crushing"}
MomoLib.MomoProcessing.Update()
require("prototypes.chemical")
MomoLib.machine.ProductivityAdded("kr-research-server", 0.50)