function momoTweak.finalFixes.FixSubgroup()

	local order = 1
	function MoveAllSubgroup(oldGroup, newGroup) 
		for i, sg in pairs(momoIRTweak.subgroups) do
			if (sg.group == oldGroup) then
				sg.group = newGroup
				sg.order = "zzzMomoTweak-" .. (100 + order)
				order = order + 1
			end
		end
	end
	
	MoveAllSubgroup("bob-resource-products", "angels-components")
	MoveAllSubgroup("bob-intermediate-products", "angels-components")
	MoveAllSubgroup("intermediate-products", "angels-tech")
	MoveAllSubgroup("logistics", "bob-logistics")
	
end