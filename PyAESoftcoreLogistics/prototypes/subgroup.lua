function momoPyTweak.finalFixes.Subgroup()
	local combatGroup = "combat"
	local logisticsGroup = "logistics" 
	momoIRTweak.ChangeGroup(combatGroup, logisticsGroup, "zzzz")

	local Change = momoPyTweak.functions.ChangeSubgroupItemAndRecipe
	
	Change("storage-tank", "py-storage-tanks", "a-a")
	Change("wooden-chest", "logistic-network", "a-a1")
	Change("iron-chest", "logistic-network", "a-a2")
	
end