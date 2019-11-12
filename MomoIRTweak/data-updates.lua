require("prototypes.updates-science-materials")
require("prototypes.updates-electronics")

require("compatibility.bobinserters")
require("compatibility.underground-pipe-pack")
require("compatibility.space-extension-mod")

if not (momoIRTweak.DumpOnly) then

	-- write updates here
	momoIRTweak.updates.ScienceMaterials()
	momoIRTweak.updates.Electronics()
	
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