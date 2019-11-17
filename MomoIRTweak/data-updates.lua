require("prototypes.updates-science-materials")
require("prototypes.updates-electronics")
require("prototypes.updates-recipe")
require("prototypes.updates-wood-process")

require("compatibility.bobinserters")
require("compatibility.underground-pipe-pack")
require("compatibility.space-extension-mod")


if not (momoIRTweak.DumpOnly) then

	-- write updates here
	momoIRTweak.updates.ScienceMaterials()
	momoIRTweak.updates.Electronics()
	momoIRTweak.updates.NerfEnrichedOre()
	momoIRTweak.updates.HarderConcrete()
	
	if (settings.startup["momo-woodToCokeRecipe"].value) then
		momoIRTweak.updates.WoodProcess()
	end
	
	if (settings.startup["momo-effectiveIronCopper"].value) then
		momoIRTweak.updates.EffectiveCopperIron()
	end
	
	if (mods["bobinserters"]) then
		momoIRTweak.compatibility.BobInserters()
	end
	
	if (mods["underground-pipe-pack"]) then		
		momoIRTweak.compatibility.UndergroundPipePack()
	end
	
	if (mods["SpaceMod"]) then
		momoIRTweak.compatibility.SpaceX()
	end
	
	


end