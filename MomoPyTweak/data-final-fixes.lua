require("prototypes.final-fixed-science-pack-subgroup")
require("prototypes.final-fixed-technogies")
require("prototypes.final-fixed-military")
require("prototypes.final-fixed-electronics-subgroup")
require("prototypes.final-fixed-subgroup")

if not (momoPyTweak.DumpOnly) then
	momoPyTweak.finalFixes.MoveSciencePackSubgroup()
	momoPyTweak.finalFixes.ElectronicsSubgroup()
	momoPyTweak.finalFixes.Technogies()
	momoPyTweak.finalFixes.Military()
	momoPyTweak.finalFixes.AddUtilitySciencePackToTechnology()
	momoPyTweak.finalFixes.PyanodonPleaseFixThatSubgroup()
	
	momoIRTweak.PrintTable(data.raw.recipe["electronic-circuit"])
else
	momoIRTweak.DumpTechnologies()
	momoIRTweak.DumpRecipes()
end