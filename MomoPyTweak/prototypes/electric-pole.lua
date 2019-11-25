function momoPyTweak.BuffElectricPole()
	local function AdjustPole(pole, area, distance) 
		local pPrototype = data.raw["electric-pole"][pole]
		pPrototype.supply_area_distance = pPrototype.supply_area_distance + area
		pPrototype.maximum_wire_distance = pPrototype.maximum_wire_distance + distance
	end
	
	AdjustPole("small-electric-pole", 2, 3)
	AdjustPole("medium-electric-pole", 3, 5)
	AdjustPole("big-electric-pole", 1, 8)
	AdjustPole("substation", 5, 10)
end