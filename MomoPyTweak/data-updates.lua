require("compatibility.bob-inserter")
require("compatibility.underground-pipe-pack")
require("prototypes.updates-science-materials")
require("prototypes.updates-module")
require("prototypes.updates-recipe")

if not momoPyTweak.DumpOnly then
	momoPyTweak.updates.ScienceMaterials()
	momoPyTweak.updates.BotRecipe()
	momoPyTweak.updates.BalancedElectronicsCircuit()

	if (momoPyTweak.mods.bobInserter) then
		momoPyTweak.compatibility.bobInserter()
	end
	
	if (momoPyTweak.mods.undergroundPipePack) then
		momoPyTweak.compatibility.PipePack()
	end

	if (settings.startup["momo-module"].value) then
		momoPyTweak.updates.Module()
	end
end
