local isPrint = settings.startup["momo-isPrint"].value
local factor =  settings.startup["momo-evolutionReductFactor"].value
local maxCounter = settings.startup["momo-evolutionReductCounter"].value

local evolution_offset = 0.00005
local addition_evo_offset = 0.4
local rate = math.floor(settings.startup["momo-evolutionReductRate"].value * 3600)

local function InitVariable()
	if not (global.momoEasyEvo) then global.momoEasyEvo = {} end
	if not (global.momoEasyEvo.LastEvolution) then global.momoEasyEvo.LastEvolution = 0 end
	if not (global.momoEasyEvo.Counter) then global.momoEasyEvo.Counter = 0 end
end

local function PrintToAll(text)
	for i, p in pairs(game.players) do
		p.print(text)
	end
end
local function fixed(number, fix) 
	fix = fix or "%.0f"
	return string.format(fix, number) 
end
local function fixed_percent(number) 
	fix = "%.4f"
	number = number * 100
	return string.format(fix, number) 
end

local function addition_reduce_cal(current_evo, factor, progress)
	local counter = global.momoEasyEvo.Counter
	counter = counter + 1
	local result = progress * (evolution_offset / 5) * counter * ((current_evo - addition_evo_offset) / 0.1)
	result = math.max(0, result)
	if (counter >= maxCounter) then
		counter = 0
	end
	
	global.momoEasyEvo.Counter = counter
	return result
end

local function evolution_nulifier(current_evo, last_evo, factor)
	local rand = (current_evo * 100101477) * (last_evo * 100045587)
	local chance = (1 + (factor - 0.7)) * (last_evo * 38)
	local null = 0
	if ((rand % 100) <= chance) then 
		null = current_evo - last_evo
	end
	return null, chance
end

script.on_nth_tick(rate, function(e)
	if factor ~= 0 then
		InitVariable()
		
		local current_evo = game.forces.enemy.evolution_factor
		local progress = 1
		if current_evo >= 0.8 then
			progress = factor * 18
		elseif current_evo >= 0.6 then
			progress = factor * 6
		elseif current_evo >= 0.3 then
			progress = factor * 2
		end
		
		local addition_reduce = 0
		if (current_evo >= addition_evo_offset) then
			addition_reduce = addition_reduce_cal(current_evo, factor, progress)
		end
		
		local null = 0
		local chance = 0
		if (current_evo >= 0.5) then
			null, chance = evolution_nulifier(current_evo, global.momoEasyEvo.LastEvolution, factor)
		end
		
		local reduceByRate = math.max(0, (current_evo - global.momoEasyEvo.LastEvolution) * progress * 0.01)
		
		local reduce = (evolution_offset * progress) + reduceByRate + addition_reduce + null
		
		game.forces.enemy.evolution_factor = current_evo - reduce
		global.momoEasyEvo.LastEvolution = game.forces.enemy.evolution_factor
		if (isPrint) then
			local r = fixed_percent(reduce)
			local rr = fixed_percent(reduceByRate)
			local ar = fixed_percent(addition_reduce)
			local logtext = "Evolution decrease : " .. r .. " + " .. rr
				  .. " + " .. ar .. "[" .. global.momoEasyEvo.Counter .. "]" 
			if (null ~= 0 or chance ~= 0) then
				logtext = logtext .. " + " .. fixed_percent(null) .. "[" .. fixed(chance) .. "%]"
			end
			
			logtext = logtext .. " = " .. (r + rr + ar + fixed_percent(null))
			PrintToAll(logtext)
		end
	end
end)