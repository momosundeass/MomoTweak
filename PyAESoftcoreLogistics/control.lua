script.on_init(function()
	if not remote.interfaces["freeplay"] then return end
	local created_items = remote.call("freeplay", "get_created_items")
	
	created_items["transport-belt"] = 1000
	created_items["burner-inserter"] = 250
	created_items["underground-belt"] = 250
	
	created_items["small-electric-pole"] = 250
	created_items["burner-mining-drill"] = 20
	created_items["stone-furnace"] = 10
	
	created_items["pipe"] = 200
	created_items["pipe-to-ground"] = 100
	
	
	remote.call("freeplay", "set_created_items", created_items)
end)
