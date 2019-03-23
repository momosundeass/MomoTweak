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

local function buildVariable()
	if not (global.momoTweak) then
		global.momoTweak = {}
		if not (global.momoTweak.last_evo) then
			global.momoTweak.last_evo = 0
		end
	end
end

script.on_nth_tick(3600, function(e)
	if factor ~= 0 then
		buildVariable()
		
		local current_evo = game.forces.enemy.evolution_factor
		local progress = 1
		if current_evo >= 0.8 then
			progress = factor * 18
		elseif current_evo >= 0.6 then
			progress = factor * 6
		elseif current_evo >= 0.3 then
			progress = factor * 2
		end
		
		local reduceByRate = math.max(0, (current_evo - global.momoTweak.last_evo) * progress * 0.01)
		local reduce = (0.00005 * progress) + reduceByRate
		game.forces.enemy.evolution_factor = current_evo - reduce
		global.momoTweak.last_evo = game.forces.enemy.evolution_factor
		if (debugmode) then
			printToAll("Evolution reduce by " .. reduce .. " |Rate: " .. reduceByRate)
		end
	end
end)
