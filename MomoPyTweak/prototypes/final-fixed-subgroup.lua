function momoPyTweak.finalFixes.Resubgroup()
	local SetSubgroup = momoIRTweak.recipe.SetSubgroup
	local GetOrder = momoIRTweak.GetSubgroupOrder
	
	local htGroup = momoPyTweak.groups.highTech
	local botSubgroup = "momo-bot-1"
	
	-- py-construction-robot-01  py-construction-robot-02  py-logistic-robot-01  py-logistic-robot-02  
	-- construction-robot-ht  logistic-robot-ht 
	
	momoIRTweak.NewSubgroup(botSubgroup, htGroup, "!a2")
	
	SetSubgroup("py-construction-robot-01", botSubgroup, GetOrder())
	SetSubgroup("py-construction-robot-02", botSubgroup, GetOrder())
	SetSubgroup("construction-robot-ht", botSubgroup, GetOrder())

	SetSubgroup("py-logistic-robot-01", botSubgroup, GetOrder())
	SetSubgroup("py-logistic-robot-02", botSubgroup, GetOrder())
	SetSubgroup("logistic-robot-ht", botSubgroup, GetOrder())
	
	--- move barreled to fluids tab
	momoIRTweak.subgroups["fill-barrel"].group = "fluids"
	momoIRTweak.subgroups["empty-barrel"].group = "fluids"
end

function momoPyTweak.finalFixes.MoveCombatGroup()
	local combatGroup = "combat"
	local productionGroup = "logistics" 
	momoIRTweak.ChangeGroup(combatGroup, productionGroup)
end