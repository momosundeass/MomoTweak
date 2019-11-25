function momoPyTweak.BuffElectricPole()
	local eletricPoles = {"big-electric-pole", "medium-electric-pole", "small-electric-pole", "substation"}
	for _, p in pairs(eletricPoles) do
	
	local pPrototype = data.raw["electric-pole"][p]
	pPrototype.supply_area_distance = pPrototype.supply_area_distance * 2
	pPrototype.maximum_wire_distance = pPrototype.maximum_wire_distance * 2
	end
end