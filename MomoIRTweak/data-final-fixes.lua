require("prototypes.misc-recipe")
require("prototypes.final-fixed-science-materials")
require("prototypes.final-fixed-technogies")
require("prototypes.final-fixed-tiered-recipes")
require("prototypes.final-fixed-recipe")
require("prototypes.final-fixed-electronics")
require("prototypes.final-fixed-rubber")
require("prototypes.matter-to-science-pack")

if not (momoIRTweak.DumpOnly) then
	--using
	local Subgroup = momoIRTweak.GetSubgroupFromItem
	
	-- write final fixed here
	momoIRTweak.finalFixes.MiscRecipe()
	data.raw["solar-panel"]["imersite-solar-panel"].production = "450kW"; 
	

	momoIRTweak.finalFixes.ScienceMaterials()
	momoIRTweak.finalFixes.FixResearchServer()
	momoIRTweak.finalFixes.Technogies()
	momoIRTweak.finalFixes.TieredRecipes()
	momoIRTweak.finalFixes.Recipe()
	momoIRTweak.finalFixes.Electronics()
	momoIRTweak.finalFixes.Rubber()
	
	
	momoIRTweak.finalFixes.MatterToScience()
	
	-- adjust subgroup
	local refSubgroup = data.raw["item-subgroup"]["intermediate-product"]
	data.raw["item-subgroup"][momoIRTweak.science.materialSubgroup].group = refSubgroup.group
	
	local count = 0
	for	c, r in pairs(data.raw.recipe) do
		count = count + 1
	end
	
	log("Total recipe = " .. count)
	
	count = 0
	for	c, t in pairs(data.raw.technology) do
		count = count + 1
	end
	
	log("Total technology = " .. count)
else
	momoIRTweak.DumpRecipes()
	momoIRTweak.DumpTechnologies()
end