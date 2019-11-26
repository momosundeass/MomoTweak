function momoPyTweak.finalFixes.Technogies()
	data.raw.technology["automation"].unit.count = settings.startup["momo-automationTechnologyCount"].value

	local function IconContainInPy(technology)
		if (technology.icon) then
			for _, name in pairs(momoPyTweak.mods.icon) do
				if (string.find(technology.icon, name)) then
					return true
				end
			end
		end
		
		return false
	end
	
	local function ProcessTechnology(technology)
		if (momoIRTweak.technology.IsUnitContain(technology.name, momoPyTweak.science.pack2)) then
			momoIRTweak.technology.AddUnitCount(technology.name, 50)
		end
		
		if (momoIRTweak.technology.IsUnitContain(technology.name, momoPyTweak.science.pack3)) then
			momoIRTweak.technology.AddUnitCount(technology.name, 100)
		end
		
		if (momoIRTweak.technology.IsUnitContain(technology.name, momoPyTweak.science.packMilitary)) then
			momoIRTweak.technology.AddUnitCount(technology.name, 50)
		end
		
		if (momoIRTweak.technology.IsUnitContain(technology.name, momoPyTweak.science.packProduction)) then
			momoIRTweak.technology.AddUnitCount(technology.name, 200)
		end
		
		if (momoIRTweak.technology.IsUnitContain(technology.name, momoPyTweak.science.packUtility)) then
			momoIRTweak.technology.AddUnitCount(technology.name, 350)
		end
	end

	for i, t in pairs(data.raw.technology) do
		if (IconContainInPy(t)) then
			ProcessTechnology(t)
		end
	
		t.unit.time = t.unit.time * settings.startup["momo-technologiesTimeMultiplier"].value
	end
end