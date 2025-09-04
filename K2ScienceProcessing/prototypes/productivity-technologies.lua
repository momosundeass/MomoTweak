
local vanillaOrder = MomoLib.vanillaSciences
local advancedOrder = MomoLib.k2Sciences

MomoLib.icon.Assign(Item.ironPlate:Prototype(), MomoLib.K2ItemIcon(Item.ironPlate.n))
local iron = MomoLib.technology.MakeProductivity("steel-processing", {"iron-plate", "kr-iron-plate-from-enriched-iron", "iron-dust-smelting"}, vanillaOrder, 0)
MomoLib.technology.MakeProductivity(iron[#iron], {"iron-plate", "kr-iron-plate-from-enriched-iron", "iron-dust-smelting"}, advancedOrder, 5)

MomoLib.icon.Assign(Item.copperPlate:Prototype(), MomoLib.K2ItemIcon(Item.copperPlate.n))
local copper = MomoLib.technology.MakeProductivity("electronics", {"copper-plate", "kr-copper-plate-from-enriched-copper", "copper-dust-smelting"}, vanillaOrder, 0)
MomoLib.technology.MakeProductivity(copper[#copper], {"copper-plate", "kr-copper-plate-from-enriched-copper", "copper-dust-smelting"}, advancedOrder, 5)

local glass = MomoLib.technology.MakeProductivity("lamp", {"glass"}, vanillaOrder, 0)
MomoLib.technology.MakeProductivity(glass[#glass], {"glass"}, advancedOrder, 5)

local brick = MomoLib.technology.MakeProductivity("advanced-material-processing", {Item.brick.n, "gravel-to-brick", "sand-to-brick"}, vanillaOrder, 0)
MomoLib.technology.MakeProductivity(brick[#brick], {Item.brick.n, "gravel-to-brick", "sand-to-brick"}, advancedOrder, 5)

local concrete = MomoLib.technology.MakeProductivity("advanced-ore-processing", {Item.refConcrete.n, Item.concrete.n, "concrete-finishing"}, vanillaOrder, 0)
MomoLib.technology.MakeProductivity(concrete[#concrete], {Item.refConcrete.n, Item.concrete.n, "concrete-finishing"}, advancedOrder, 5)

local steel = MomoLib.technology.MakeProductivity("advanced-material-processing", {"steel-plate", "steel-dust-smelting", "steel-oxygen-casting"}, vanillaOrder, 0)
MomoLib.technology.MakeProductivity(steel[#steel], {"steel-plate", "steel-dust-smelting", "steel-oxygen-casting"}, advancedOrder, 10)

local plastic = MomoLib.technology.MakeProductivity("plastics", {"plastic-bar", "plastics-from-enriched-coal"}, vanillaOrder, 2)
MomoLib.technology.MakeProductivity(plastic[#plastic], {"plastic-bar", "plastics-from-enriched-coal"}, advancedOrder, 5)

local lds = MomoLib.technology.MakeProductivity(Item.lds.tech, {Item.lds.n}, vanillaOrder, 0)
MomoLib.technology.MakeProductivity(lds[#lds], {Item.lds.n}, advancedOrder, 10)

local titanium = MomoLib.technology.MakeProductivity("enriched-titanium", MomoLib.recipe.AllFromResult(Item.titaniumPlate), advancedOrder, 5)
local rareMetal = MomoLib.technology.MakeProductivity("elite-ore-processing", MomoLib.recipe.AllFromResult(Item.rareMetal), advancedOrder, 5)
local sulfuricAcid = MomoLib.technology.MakeProductivity("elite-ore-processing", {Item.sulfuricAcid.n}, advancedOrder, 10)

local gc = MomoLib.technology.MakeProductivity(Item.productivityModule.tech, MomoLib.recipe.AllFromResult(Item.greenChip), vanillaOrder, 0)
MomoLib.technology.MakeProductivity(gc[#gc], MomoLib.recipe.AllFromResult(Item.greenChip), advancedOrder, 5)

local rc = MomoLib.technology.MakeProductivity(Item.productivityModule2.tech, MomoLib.recipe.AllFromResult(Item.redChip), vanillaOrder, 0)
MomoLib.technology.MakeProductivity(rc[#rc], MomoLib.recipe.AllFromResult(Item.redChip), advancedOrder, 5)

local bc = MomoLib.technology.MakeProductivity(Item.productivityModule3.tech, MomoLib.recipe.AllFromResult(Item.blueChip), vanillaOrder, 0)
MomoLib.technology.MakeProductivity(bc[#bc], MomoLib.recipe.AllFromResult(Item.blueChip), advancedOrder, 5)

local ai = MomoLib.technology.MakeProductivity(Item.aiCore.tech, MomoLib.recipe.AllFromResult(Item.aiCore), advancedOrder, 10, true)


for _, tech in pairs(MomoLib.technology.MakeProductivity("caterium", "rocket-part", advancedOrder, 11)) do
    MomoLib.icon.Assign(tech, {MomoLib.Graphics("space-age/rocket-part-productivity.png", 256)})
end
