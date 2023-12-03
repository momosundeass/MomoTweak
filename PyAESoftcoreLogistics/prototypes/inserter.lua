function momoPyTweak.updates.ImproveInserter()
	local inserters = {
		"burner-inserter",
		"inserter", 
		"long-handed-inserter",
		"fast-inserter", 
		"filter-inserter", 
		"stack-inserter", 
		"stack-filter-inserter"
	}
	
	for _, name in pairs(inserters) do
		local inserter = data.raw.inserter[name]
		inserter.extension_speed  = inserter.extension_speed * 2
		inserter.rotation_speed = inserter.rotation_speed * 2
	end
end