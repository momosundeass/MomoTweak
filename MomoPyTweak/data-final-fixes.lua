require("prototypes.final-fixed-science-pack-subgroup")
require("prototypes.final-fixed-technogies")

if not (momoPyTweak.DumpOnly) then
	momoPyTweak.finalFixes.MoveSciencePackSubgroup()
	momoPyTweak.finalFixes.Technogies()
else
	momoIRTweak.DumpTechnologies()
	momoIRTweak.DumpRecipes()
end