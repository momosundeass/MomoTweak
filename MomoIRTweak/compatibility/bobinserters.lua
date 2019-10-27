
if (settings.startup["momo-removeLongInserter"].value) then
	data.raw.recipe["long-handed-burner-inserter"].enabled = false
	
	momoIRTweak.RemoveUnlockRecipeEffect("demo-logistics", "long-handed-inserter")
	momoIRTweak.RemoveUnlockRecipeEffect("deadlock-inserters-1", "long-handed-inserter")
	
	momoIRTweak.RemoveUnlockRecipeEffect("superior-inserter", "superior-long-inserter")
	
	momoIRTweak.RemoveUnlockRecipeEffect("superior-inserter", "superior-long-filter-inserter")
	
end