momoTweakControl = {}
local function deepcopy(orig)
	local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in pairs(orig) do
            copy[orig_key] = orig_value
        end
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end

local function is_tech_contain(tech, item)
	if (tech.research_unit_ingredients) then
		for i, ing in pairs(tech.research_unit_ingredients) do
			if (ing.name == item) then
				return true
			end
		end
	end
	return false
end

local function check_item(items, itemChecker)
	for i, item in pairs(items) do
		if (item == itemChecker) then return true end
	end
	return false
end

local function remove_items(items, itemToRemove)
	for i, item in pairs(items) do
		if (item == itemToRemove) then 
			items[i] = nil
		end
	end
end

local function unlock_techs(items, player)
	local allTechs = deepcopy(game.technology_prototypes)
	local markedTech = {}
	local indexToRemove = {}
	local counter = 0
	
	for ii, item in pairs(items) do
		for it, tech in pairs(allTechs) do
			player.print("loop")
			if (is_tech_contain(tech, item)) then
				allTechs[it] = nil
			end
		end
		
		counter = 0
		for	_ in pairs(allTechs) do
			counter = counter + 1
		end
		player.print("item check => " .. item .. " :Tech left " .. counter)
	end
	
	for ti, tech in pairs(allTechs) do
		game.players[1].force.technologies[tech.name].researched = true
	end
end

function momoTweakControl.debug(items, player)
	
	for i, item in ipairs(items) do
		player.print(i .. " " .. item)
	end
	local debugStatus = "Debug => "
	if (check_item(items, "steel-chest")) then
		unlock_techs(items, player)
		player.print("unlock tech complete.")
		debugStatus = debugStatus .. ":R-"
	end
	
	if (check_item(items, "wooden-chest")) then
		--automation-science-pack  logistic-science-pack  chemical-science-pack  production-science-pack  utility-science-pack
		player.insert("automation-science-pack")
		player.insert("logistic-science-pack")
		player.insert("chemical-science-pack")
		player.insert("production-science-pack")
		player.insert("utility-science-pack")
		player.insert("steel-chest")
		debugStatus = debugStatus .. ":Add-"
	end
	
	
	return debugStatus
end

log("MTKL control-function loaded")