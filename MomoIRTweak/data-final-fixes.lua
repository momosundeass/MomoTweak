if not (momoIRTweak.DumpOnly) then
	
	--using
	local Subgroup = momoIRTweak.GetSubgroupFromItem
	
	-- write final fixed here
	require("prototypes.final-fixed-science-materials")
	require("prototypes.final-fixed-technogies")
	require("prototypes.final-fixed-tiered-recipes")
	require("prototypes.final-fixed-recipe")
	require("prototypes.final-fixed-electronics")
	
	require("prototypes.matter-to-science-pack")
	
	-- adjust subgroup
	local refSubgroup = data.raw["item-subgroup"]["intermediate-product"]
	data.raw["item-subgroup"][momoIRTweak.science.materialSubgroup].group = refSubgroup.group
else
	momoIRTweak.DumpRecipes()
	momoIRTweak.DumpTechnologies()
end