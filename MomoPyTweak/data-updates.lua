require("compatibility.bob-inserter")
require("prototypes.updates-science-materials")
require("prototypes.updates-module")

momoPyTweak.updates.ScienceMaterials()

if (momoPyTweak.mods.bobInserter) then
	momoPyTweak.compatibility.bobInserter()
end

if (settings.startup["momo-module"].value) then
	momoPyTweak.updates.Module()
end
