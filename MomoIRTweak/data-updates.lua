if (!momoIRTweak.DumpOnly) then

	-- write updates here
	if (settings.startup["momo-removeLongInserter"].value) then
		require("prototypes.remove-long-inserter")
	end



end