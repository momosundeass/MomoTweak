
-- load compatibility file
require("compatibility.bob-inserter")
require("compatibility.underground-pipe-pack")
require("compatibility.schall-alien-tech")


require("prototypes.updates-science-materials")
require("prototypes.updates-module")
require("prototypes.updates-recipe")
require("prototypes.roboport")

if not momoPyTweak.DumpOnly then
	momoPyTweak.updates.ScienceMaterials()
	momoPyTweak.updates.BotRecipe()
	momoPyTweak.updates.BalancedElectronicsCircuit()
	
	momoPyTweak.updates.Inserter()
	momoPyTweak.updates.InserterTechnology()
	
	momoPyTweak.updates.SolarPanelTechnology()
	momoPyTweak.updates.Roboport()
	
	if (momoPyTweak.settings.undergroundBelt) then
		momoPyTweak.updates.ExtraUndergroundBelt()
		momoPyTweak.updates.ExtraUndergroundBeltTech()
	end

	if (momoPyTweak.mods.bobInserter) then
		momoPyTweak.compatibility.bobInserter()
	end
	
	if (momoPyTweak.mods.undergroundPipePack) then
		momoPyTweak.compatibility.PipePack()
	end
	
	if (momoPyTweak.settings.miner) then
		momoPyTweak.updates.MiningDrill()
	end
	
	if (momoPyTweak.settings.solarPanel) then
		momoPyTweak.updates.SolarPanel()
	end
	
	if (settings.startup["momo-module"].value) then
		momoPyTweak.updates.Module()
	end
end
