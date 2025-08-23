require("MomoLib.data-updates")

-- barrel
MomoLib.item.NoRecycle("bob-pure-water-barrel")
MomoLib.item.NoRecycle("bob-brine-barrel")

require("prototypes.quality")
require("prototypes.mech")
require("prototypes.inserter")
require("prototypes.mining")
require("prototypes.assembling-machine")
require("prototypes.logistics-subgroups")
require("prototypes.gem")
require("prototypes.ore-expensive")
require("prototypes.sulfuric-acid")
require("prototypes.belt")

if (settings.startup["bans-module"].value and mods["bobmodules"]) then require("prototypes.module") end

local calciumChorideSink = MomoLib.recipe.New(
	MomoLib.MakeIngredient("bob-calcium-chloride", 1), {
		MomoLib.MakeFluidIngredient("bob-hydrogen-chloride", 20), 
		MomoLib.MakeIngredient("stone", 1)},
	"bob-calcium-chloride-sink")
calciumChorideSink.energy_required = 0.2
calciumChorideSink.category = "chemistry"
calciumChorideSink.subgroup = "fluid"
calciumChorideSink.icons = {
	{ icon=MomoLib.icon.FromIngredient("bob-calcium-chloride"), scale=0.5, icon_size=64 }, 
	{ icon=MomoLib.icon.FromIngredient("bob-hydrogen-chloride"), scale=0.25, icon_size=64, shift={16,16} }
}
data:extend{calciumChorideSink}
MomoLib.technology.AddRecipe("bob-chemical-processing-2", calciumChorideSink.name)

MomoLib.GetPrototype("storage-tank", "bob-small-inline-storage-tank", function(p) p.fluid_box.volume = 100 end)
MomoLib.recipe.PostProcessMissingItem()