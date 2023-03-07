require("prototypes.final-fixed-science-pack-subgroup")
require("prototypes.final-fixed-technogies")
require("prototypes.final-fixed-military")
require("prototypes.final-fixed-electronics-subgroup")
require("prototypes.final-fixed-subgroup")
require("prototypes.final-fixed-assembler")
require("prototypes.armor")

if not (momoPyTweak.DumpOnly) then
	if (not momoPyTweak.mods.pyAE) then
		momoPyTweak.finalFixes.MoveSciencePackSubgroup()
		momoPyTweak.finalFixes.ElectronicsSubgroup()
		
		momoPyTweak.finalFixes.Military()
		momoPyTweak.finalFixes.AddUtilitySciencePackToTechnology()
		
		-- temp fix energy cost
		momoPyTweak.finalFixes.GlassWorkEnergyCost()
		
		-- rearrangement subgroup
		momoPyTweak.finalFixes.Resubgroup()
	
	else
		momoPyTweak.finalFixes.MoveCombatGroup()
	end
	
	if (settings.startup["momo-enableTechnology"].value and not momoPyTweak.mods.pyAE) then
		momoPyTweak.finalFixes.Technogies()
	end
	
	if (momoPyTweak.mods.alienTech) then
		momoPyTweak.compatibility.SchallUraniumMining()
	end
	
	if (momoPyTweak.settings.undergroundBelt) then
		momoPyTweak.finalFixes.ExtraUndergroundBelt()
	end
	
	if (momoPyTweak.mods.pyAE and momoPyTweak.mods.miniloader and momoPyTweak.mods.ultimateBelt) then
		momoPyTweak.finalFixes.UltimateBeltMiniloader()
	end
	
	momoPyTweak.ArmorInventory()
else
	-- momoIRTweak.DumpTechnologies()
	-- momoIRTweak.DumpRecipes()
end