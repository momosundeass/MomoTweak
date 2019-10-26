if not (momoIRTweak.DumpOnly) then

	-- write final fixed here
	require("prototypes.final-fixed-science-materials")
	require("prototypes.final-fixed-technogies")
	require("prototypes.final-fixed-tiered-recipes")
	
	-- adjust subgroup
	local refSubgroup = data.raw["item-subgroup"]["intermediate-product"]
	data.raw["item-subgroup"][momoIRTweak.science.materialSubgroup].group = refSubgroup.group

else
	momoIRTweak.DumpRecipes()
	momoIRTweak.DumpTechnologies()
end