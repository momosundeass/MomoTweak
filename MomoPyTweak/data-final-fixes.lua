require("prototypes.final-fixed-science-pack-subgroup")
require("prototypes.final-fixed-technogies")
require("prototypes.final-fixed-military")
require("prototypes.final-fixed-electronics-subgroup")
require("prototypes.final-fixed-subgroup")
require("prototypes.armor")

if not (momoPyTweak.DumpOnly) then
	momoPyTweak.finalFixes.MoveSciencePackSubgroup()
	momoPyTweak.finalFixes.ElectronicsSubgroup()
	momoPyTweak.finalFixes.Technogies()
	momoPyTweak.finalFixes.Military()
	momoPyTweak.finalFixes.AddUtilitySciencePackToTechnology()
	momoPyTweak.finalFixes.PyanodonPleaseFixThatSubgroup()
	
	if (momoPyTweak.mods.alienTech) then
		momoPyTweak.compatibility.FixSchallUraniumMining()
	end
	
	momoPyTweak.ArmorInventory()
else
	momoIRTweak.DumpTechnologies()
	momoIRTweak.DumpRecipes()
end