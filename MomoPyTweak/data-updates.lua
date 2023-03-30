
-- load compatibility file
require("compatibility.bob-inserter")
require("compatibility.underground-pipe-pack")
require("compatibility.schall-alien-tech")
require("compatibility.space-extension-mod")

require("compatibility.transport-drones")
require("compatibility.advanced-modules")
require("compatibility.water-fill")
require("compatibility.miniloader")

require("prototypes.updates-science-materials")
require("prototypes.updates-module")
require("prototypes.updates-recipe")
require("prototypes.updates-technology")
require("prototypes.roboport")


if not momoPyTweak.DumpOnly then
	if (not momoPyTweak.mods.pyAE) then
		momoPyTweak.updates.ScienceMaterials()
		momoPyTweak.updates.BotRecipe()
		momoPyTweak.updates.BalancedElectronicsCircuit()
		momoPyTweak.updates.SolarPanelTechnology()
		momoPyTweak.updates.Roboport()
	end
	
	if (momoPyTweak.settings.inserter) then
		momoPyTweak.updates.Inserter()
		momoPyTweak.updates.InserterTechnology()
	end
	
	if (momoPyTweak.settings.improveInserter) then
		momoPyTweak.updates.ImproveInserter()
	end
	
	if (momoPyTweak.settings.undergroundPipeBeltStoneRecipes) then
		momoPyTweak.updates.undergroundPipeBeltStoneRecipes()
	end
	
	if (momoPyTweak.mods.pyAL) then
		momoPyTweak.updates.ScienceMaterialsAL()
	end

	if (momoPyTweak.mods.bobInserter) then
		momoPyTweak.compatibility.bobInserter()
	end
	
	if (momoPyTweak.mods.undergroundPipePack and settings.startup["momo-undergroundPipePack"].value) then
		momoPyTweak.compatibility.PipePack()
	end
	
	if (momoPyTweak.settings.miner) then
		momoPyTweak.updates.MiningDrill()
	end
	
	if (momoPyTweak.settings.solarPanel) then
		momoPyTweak.updates.SolarPanel()
	end
	
	if (momoPyTweak.mods.spaceEx) then
		momoPyTweak.compatibility.SpaceEx()
	end
	
	if (momoPyTweak.mods.miniloader) then
		momoPyTweak.compatibility.MiniloaderRecipe()
	end
	
	if (momoPyTweak.mods.ultimateBelt) then
		require("compatibility.ultimate-belt-color")
		momoPyTweak.compatibility.UltimateBeltColor()
		if (momoPyTweak.mods.pyAE) then
			momoPyTweak.updates.UltimateBeltAE()
		else
			require("compatibility.ultimate-belt")
			momoPyTweak.compatibility.UltimateBeltRecipe()
		end
	end
	
	if (momoPyTweak.mods.transportDrones) then
		momoPyTweak.compatibility.TransportDrones()
	end
	
	if (momoPyTweak.mods.advancedModules) then
		momoPyTweak.compatibility.advancedModules()
	end
	
	if (settings.startup["momo-module"].value) then
		momoPyTweak.updates.Module()
	end
	
	if (settings.startup["momo-earlyLandfill"].value and not momoPyTweak.mods.pyAE) then
		momoPyTweak.updates.EarlyLandfill()
	end
	
	if (momoPyTweak.settings.undergroundBelt) then
		momoPyTweak.updates.ExtraUndergroundBelt()
		momoPyTweak.updates.ExtraUndergroundBeltTech()
	end
	
	if (momoPyTweak.mods.waterFill) then
		momoPyTweak.updates.WaterFill()
	end
	
end
