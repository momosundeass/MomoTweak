require("compatibility.bob-inserter")
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

	if (settings.startup["momo-module"].value) then
		momoPyTweak.updates.Module()
	end
end
