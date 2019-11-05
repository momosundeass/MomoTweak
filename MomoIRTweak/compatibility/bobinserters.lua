
if (settings.startup["momo-removeLongInserter"].value) then
	data.raw.recipe["long-handed-burner-inserter"].enabled = false
	
	momoIRTweak.technology.RemoveUnlockEffect("demo-logistics", "long-handed-inserter")
	momoIRTweak.technology.RemoveUnlockEffect("deadlock-inserters-1", "long-handed-inserter")
	
	momoIRTweak.technology.RemoveUnlockEffect("superior-inserter", "superior-long-inserter")
	
	momoIRTweak.technology.RemoveUnlockEffect("superior-inserter", "superior-long-filter-inserter")
	
end