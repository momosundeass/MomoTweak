data.raw.technology["automation"].unit.count = settings.startup["momo-automationTechnologyCount"].value

for i, t in pairs(data.raw.technology) do
	t.unit.time = t.unit.time * settings.startup["momo-technologiesTimeMultiplier"].value
end