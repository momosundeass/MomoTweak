if not (momoIRTweak.DumpOnly) then

	-- write updates here
	require("prototypes.updates-science-materials")
	
	if (settings.startup["momo-removeLongInserter"].value) then
		require("prototypes.remove-long-inserter")
	end



end