script.on_init(function()
    if script.active_mods["pyhardmode"] then
		local items = {}
		items["burner-mining-drill"] = 10
		items["offshore-pump"] = 1
		
		local valve = "configurable-valve"
        if prototypes.get_item_filtered{{filter="name", name=valve}} then
			items[valve] = 6
        end
		
		local droneName = "Construction_Drone"
		if prototypes.get_item_filtered{{filter="name", name=droneName}} then
			items[droneName] = 4
		end
		
		remote.call("freeplay", "set_ship_items", items)
    end
end)

script.on_event(defines.events.on_player_created, function(event)
	local droneName = "Construction_Drone"
	if prototypes.get_item_filtered{{filter="name", name=droneName}} then
		local p = game.players[event.player_index]
		p.insert{name=droneName, count=4}
	end
end)