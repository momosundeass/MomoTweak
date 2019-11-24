require("prototypes.sci.sct-pre-process")

if not momoTweak.isLoadScienceRecipeInUpdates then
	if (momoTweak.mods.sct) then
		momoTweak.require.SctPreProcess()
	end
	
	momoTweak.require.SciRecipe()
	momoTweak.require.Sci30Recipe()
	momoTweak.require.Sci30Extreme()
	
	if (momoTweak.mods.sct) then
		momoTweak.sct.AddToTechnology()
		momoTweak.sct.PostProcessRecipe()
	end
end

require("prototypes.sci.final-fix")

data.raw.item[momoTweak.burner].subgroup = data.raw.item["assembling-machine-1"].subgroup

require("prototypes.fix-angels-machine")
require("prototypes.sci.sci30result-preset")

if not momoTweak.isLoadScienceRecipeInUpdates then
	momoTweak.sct.IncreaseSciencePackAmount()
end

require("prototypes.sci.vial-recipe")
require("prototypes.machine-restriction")

if (momoTweak.mods.bioIndustries) then
	momoTweak.compatibility.bioIndustries.FixDuplicateProductionSciencePack()
end

if (momoTweak.mods.angelBio) then
	momoTweak.angelBio.FinalFixed()
end

momoTweak.angelChemFluidPower()

-- require("pycom.final")
-- current not support for py

momoTweak.ReworkAngelIndGroup()
momoTweak.ReworkPressureTank()

require("fix")

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