local isResetTechEffect = true
script.on_event(defines.events.on_player_created, function(event)
	local p = game.players[event.player_index]
	p.insert{name="firearm-magazine", count=690}
	p.insert{name="gun-turret", count=12}
end)