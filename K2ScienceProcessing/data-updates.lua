require("prototypes.mech")


if mods["bobinserters"] then
    MomoLib.item.DisableRecipe("long-handed-inserter")
end

MomoLib.item.Disable("area-mining-drill")

data.raw.furnace["kr-crusher"].crafting_categories = {"kr-crushing"}
MomoLib.machine.AddCategory(MomoLib.itemNames.burnerAssembly.n, "pressing")
MomoLib.machine.AddCategory(MomoLib.itemNames.burnerAssembly.n, MomoLib.category.electronics)
MomoLib.machine.AddCategory(MomoLib.itemNames.assembly4.n, "pressing")
MomoLib.MomoProcessing.Update()
require("prototypes.chemical")


MomoLib.itemNames.inserterPart:Prototype():NoRecycle()

MomoLib.machine.ProductivityAdded("kr-research-server", 0.50)
local miner = MomoLib.itemNames.miningDrill2.n
MomoLib.machine.MinerDrainRate(miner, 80)
MomoLib.machine.MinerBeltStack(true)
miner = MomoLib.itemNames.miningDrill3.n
MomoLib.machine.MinerDrainRate(miner, 60)
MomoLib.machine.MinerBeltStack(true)

if MomoLib.subgroups["pipes-to-ground-t2"] then
    MomoLib.item:FromPrototype(MomoLib.itemNames.steelPipe.n):SUBGROUP("pipes-to-ground-t2", "a1")
    MomoLib.item:FromPrototype(MomoLib.itemNames.steelPipeGround.n):SUBGROUP("pipes-to-ground-t2", "a2")
    MomoLib.item:FromPrototype(MomoLib.itemNames.steelPump.n):SUBGROUP("underground-buildings", "zzzz")
end