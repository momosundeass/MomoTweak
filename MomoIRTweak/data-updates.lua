if not (momoIRTweak.DumpOnly) then

	-- write updates here
	require("prototypes.updates-science-materials")
	require("prototypes.updates-electronics")
	
	
	if (mods["bobinserters"]) then
		require("compatibility.bobinserters")
	end
	
	if (mods["underground-pipe-pack"]) then
		require("compatibility.underground-pipe-pack")
	end
	
	if (mods["SpaceMod"]) then
		require("compatibility.space-extension-mod")
	end
	
	


end