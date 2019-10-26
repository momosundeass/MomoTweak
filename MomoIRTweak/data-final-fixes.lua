if (!momoIRTweak.DumpOnly) then

	-- write final fixed here
	require("prototypes.final-fixed-technogies")
	require("prototypes.final-fixed-tiered-recipes")

else
	momoIRTweak.DumpRecipes()
	momoIRTweak.DumpTechnologies()
end