require("prototypes.final-fixed-science-pack-subgroup")
require("prototypes.final-fixed-technogies")
require("prototypes.final-fixed-military")

if not (momoPyTweak.DumpOnly) then
	momoPyTweak.finalFixes.MoveSciencePackSubgroup()
	momoPyTweak.finalFixes.Technogies()
	momoPyTweak.finalFixes.Military()
	momoPyTweak.finalFixes.AddUtilitySciencePackToTechnology()
else
	momoIRTweak.DumpTechnologies()
	momoIRTweak.DumpRecipes()
end