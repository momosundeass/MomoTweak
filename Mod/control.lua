local debugmode = settings.startup["momo-is-debug-mode"].value
local factor = settings.startup["momo-evo-reduce-factor"].value

script.on_event(defines.events.on_player_created, function(event)
  if debugmode then
      for _, player in pairs(game.players) do
          player.color = {r = 0, g = 204/255, b = 153/255, a = 1}
      end
  end
 end)

script.on_event("momo-debug", function(e)
	if debugmode then
	-- check bar item
		local logging = ""
		for pi, p in pairs(game.players) do
			p.print("evolution decrease factor = " .. factor)
			p.print("||||| N player index " .. pi)
			local slot = 1
			for name, count in pairs(p.get_main_inventory().get_contents()) do
				p.print("["..slot.."]" .. name .. " " .. count)
				logging = logging .. " " .. name .. " "
				slot = slot + 1
			end
			p.print("QUICK-BAR loop complete!!!")
			log("MTKL " .. logging)
		end
	-- check bar item
	else
		for pi, p in pairs(game.players) do p.print("Someone try to cheat!!!!!!!!!!!!") end
	end
end)

local function printToAll(text)
	for i, p in pairs(game.players) do
		p.print(text)
	end
end


script.on_nth_tick(3600, function(e)
	if factor ~= 0 then
		local current_evo = game.forces.enemy.evolution_factor
		local reduce = 0.00005 * factor
		
		if current_evo >= 0.8 then
			reduce = current_evo * 0.0009 * factor
		elseif current_evo >= 0.6 then
			reduce = current_evo * 0.0003 * factor
		elseif current_evo >= 0.3 then
			reduce = current_evo * 0.0001 * factor
		end
		game.forces.enemy.evolution_factor = current_evo - reduce
	end
end)
