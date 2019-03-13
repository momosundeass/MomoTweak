momoTweak.replace_with_ingredient("transport-belt", "tin-plate", {"tin-plate", 3})

bobmods.lib.recipe.add_ingredient("underground-belt", {"stone-brick", 5})
bobmods.lib.recipe.add_ingredient("fast-underground-belt", {"stone-brick", 7})
bobmods.lib.recipe.add_ingredient("express-underground-belt", {"concrete", 10})
bobmods.lib.recipe.add_ingredient("turbo-underground-belt", {"concrete", 16})
bobmods.lib.recipe.add_ingredient("ultimate-underground-belt", {"concrete", 21})

momoTweak.replace_with_ingredient("inserter", "iron-gear-wheel", {"burner-inserter", 1})

bobmods.lib.recipe.add_ingredient("rail-signal", {"rubber", 2})
bobmods.lib.recipe.add_ingredient("rail-chain-signal", {"rubber", 3})

bobmods.lib.recipe.add_ingredient("train-stop", {"rubber", 5})


---- bot
local function Add(recipe, ingredients)
	for i, ing in pairs(ingredients) do
		bobmods.lib.recipe.add_ingredient(recipe, ing)
	end
end

local brainC = "robot-brain-construction"
local brainL = "robot-brain-logistic"
local frame = "flying-robot-frame"
local toolC = "robot-tool-construction"
local toolL = "robot-tool-logistic"

Add(toolC, {{"rubber", 2}})
Add(toolC .. "-2", {{"rubber", 4}, {toolC, 1}})
Add(toolC .. "-3", {{"rubber", 7}, {toolC .. "-2", 1}})
Add(toolC .. "-4", {{"rubber", 9}, {toolC .. "-3", 1}})

Add(toolL, {{"rubber", 4}})
Add(toolL .. "-2", {{"rubber", 5}, {toolL, 1}})
Add(toolL .. "-3", {{"rubber", 7}, {toolL .. "-2", 1}})
Add(toolL .. "-4", {{"rubber", 9}, {toolL .. "-3", 1}})

local function ProcessPart(part)
	Add(part .. "-2", {{part, 1}})
	Add(part .. "-3", {{part .. "-2", 1}})
	Add(part .. "-4", {{part .. "-3", 1}})
end

ProcessPart(frame)
ProcessPart(brainC)
ProcessPart(brainL)

local door      = "roboport-door"
local antenna   = "roboport-antenna"
local chargepad = "roboport-chargepad"

local function ProcessInfa(infa)
	Add(infa .. "-2", {{infa .. "-1", 1}})
	Add(infa .. "-3", {{infa .. "-2", 1}})
	Add(infa .. "-4", {{infa .. "-3", 1}})
end

ProcessInfa(door)
ProcessInfa(antenna)
ProcessInfa(chargepad)

----