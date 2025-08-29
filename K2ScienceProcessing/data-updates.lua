local item = MomoLib.itemNames

require("prototypes.mech")

if mods["bobinserters"] then 
    MomoLib.item.DisableRecipe("long-handed-inserter")
    MomoLib.item.DisableRecipe("kr-superior-long-inserter")
end
MomoLib.item.Disable("area-mining-drill")

-- recycle
item.inserterPart:Prototype():NoRecycle()


-- crafting category
data.raw.furnace["kr-crusher"].crafting_categories = {"kr-crushing"}
MomoLib.machine.AddCategory(item.burnerAssembly.n, "pressing")
MomoLib.machine.AddCategory(item.burnerAssembly.n, MomoLib.category.electronics)
MomoLib.machine.AddCategory(item.assembly4.n, "pressing")
MomoLib.recipe.SetCategory(item.steelPipe, "pressing")
MomoLib.recipe.SetCategory(item.steelPipeGround, "pressing")


-- machine update
MomoLib.MomoProcessing.Update()
require("prototypes.chemical")


-- productivity and mining drain rate
MomoLib.machine.ProductivityAdded(item.researchServer.n, 0.50)
local miner = item.miningDrill2.n
MomoLib.machine.MinerDrainRate(miner, 80)
MomoLib.machine.MinerBeltStack(true)
miner = item.miningDrill3.n
MomoLib.machine.MinerDrainRate(miner, 60)
MomoLib.machine.MinerBeltStack(true)

MomoLib.machine.ProductivityAdded(item.elecFurnace.n, 0.10)
MomoLib.machine.ProductivityAdded(item.indFurnace.n, 0.25)
MomoLib.machine.ProductivityAdded(item.advancedFurnace.n, 0.40)

MomoLib.GetPrototype("lab", item.lab2.n, function(p) p.science_pack_drain_rate_percent = 95 end)
MomoLib.GetPrototypes("lab", {item.lab.n, item.lab2.n, item.lab3.n}, function(p) p.uses_quality_drain_modifier = true end) 


-- subgroups
if MomoLib.subgroups["pipes-to-ground-t2"] then
    MomoLib.item:FromPrototype(item.steelPipe.n):SUBGROUP("pipes-to-ground-t2", "a1")
    MomoLib.item:FromPrototype(item.steelPipeGround.n):SUBGROUP("pipes-to-ground-t2", "a2")
    MomoLib.item:FromPrototype(item.steelPump.n):SUBGROUP("underground-buildings", "zzzz")
end


-- module
require("prototypes.modules")


-- visual
MomoLib.machine.IconDraw(item.electrolyser.n, {scale=1, scale_for_many=1})
MomoLib.machine.IconDraw(item.researchCenter.n, {scale=1.3, scale_for_many=1.3})
MomoLib.machine.IconDraw(item.atmospheric.n, {scale=1, scale_for_many=1})