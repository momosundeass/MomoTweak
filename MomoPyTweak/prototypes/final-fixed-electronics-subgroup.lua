function momoPyTweak.finalFixes.ElectronicsSubgroup()
	--- using
	local SetSubgroup = momoIRTweak.recipe.SetSubgroup
	local GetOrder = momoIRTweak.GetSubgroupOrder
	
	local group = momoPyTweak.groups.highTech
	local subgroup = "momo-electronics-1"
	momoIRTweak.NewSubgroup(subgroup, group, "a1")
	
	for _, r in pairs(momoIRTweak.recipe.GetAllRecipeWithResult("electronic-circuit")) do
		SetSubgroup(r, subgroup, GetOrder())
	end
	SetSubgroup("advanced-circuit", subgroup, GetOrder())
	SetSubgroup("processing-unit", subgroup, GetOrder())
	SetSubgroup("intelligent-unit", subgroup, GetOrder())
	
	SetSubgroup("pcb1", subgroup, GetOrder())
	SetSubgroup("pcb2", subgroup, GetOrder())
	SetSubgroup("pcb3", subgroup, GetOrder())
	SetSubgroup("pcb3-2", subgroup, GetOrder())
	SetSubgroup("pcb4", subgroup, GetOrder())
	
	
	-- pcb1 advanced-circuit  electronic-circuit kondo-processor  pcb4  processing-unit  pcb2  pcb3  pcb3-2 intelligent-unit
	-- electronic-circuit-initial
end