local harder = settings.startup["momo-harder-logistic"].value
local mul = 1
local rubberMul = 1 
if (harder) then
	mul = 3
	rubberMul = 4
	if data.raw.item["basic-transport-belt"] then
		momoTweak.replace_with_ingredient("transport-belt", "tin-plate", {"tin-plate", 3 * mul})
		momoTweak.replace_with_ingredient("underground-belt", "tin-plate", {"tin-plate", 16 * mul})
		momoTweak.replace_with_ingredient("splitter", "tin-plate", {"tin-plate", 10 * mul})
	end
	bobmods.lib.recipe.add_ingredient("underground-belt", {"stone-brick", 5 * mul})

	momoTweak.replace_with_ingredient("fast-transport-belt", "bronze-alloy", {"bronze-alloy", 4 * mul})
	momoTweak.replace_with_ingredient("fast-underground-belt", "bronze-alloy", {"bronze-alloy", 16 * mul})
	bobmods.lib.recipe.add_ingredient("fast-underground-belt", {"stone-brick", 7 * mul})
	momoTweak.replace_with_ingredient("fast-splitter", "bronze-alloy", {"bronze-alloy", 10 * mul})

	mul = 2

	-- cobalt-steel-gear-wheel  cobalt-steel-bearing  aluminium-plate 
	momoTweak.replace_with_ingredient("express-transport-belt", "cobalt-steel-gear-wheel", {"cobalt-steel-gear-wheel", 3 * mul})
	momoTweak.replace_with_ingredient("express-transport-belt", "cobalt-steel-bearing", {"cobalt-steel-bearing", 3 * mul})
	momoTweak.replace_with_ingredient("express-transport-belt", "aluminium-plate", {"aluminium-plate", 4 * mul})
	momoTweak.replace_with_ingredient("express-transport-belt", "brass-alloy", {"brass-alloy", 2 * mul})

	momoTweak.replace_with_ingredient("express-underground-belt", "cobalt-steel-gear-wheel", {"cobalt-steel-gear-wheel", 15 * mul})
	momoTweak.replace_with_ingredient("express-underground-belt", "cobalt-steel-bearing", {"cobalt-steel-bearing", 15 * mul})
	momoTweak.replace_with_ingredient("express-underground-belt", "aluminium-plate", {"aluminium-plate", 16 * mul})
	momoTweak.replace_with_ingredient("express-underground-belt", "brass-alloy", {"brass-alloy", 10 * mul})
	bobmods.lib.recipe.add_ingredient("express-underground-belt", {"concrete", 10 * mul})

	momoTweak.replace_with_ingredient("express-splitter", "cobalt-steel-gear-wheel", {"cobalt-steel-gear-wheel", 10 * mul})
	momoTweak.replace_with_ingredient("express-splitter", "cobalt-steel-bearing", {"cobalt-steel-bearing", 8 * mul})
	momoTweak.replace_with_ingredient("express-splitter", "aluminium-plate", {"aluminium-plate", 20 * mul})
	momoTweak.replace_with_ingredient("express-splitter", "brass-alloy", {"brass-alloy", 10 * mul})

	--  titanium-bearing  titanium-plate 
	momoTweak.replace_with_ingredient("turbo-transport-belt", "titanium-bearing", {"titanium-bearing", 3 * mul})
	momoTweak.replace_with_ingredient("turbo-transport-belt", "titanium-plate", {"titanium-plate", 4 * mul})
	momoTweak.replace_with_ingredient("turbo-transport-belt", "zinc-plate", {"zinc-plate", 7 * mul})

	momoTweak.replace_with_ingredient("turbo-underground-belt", "titanium-bearing", {"titanium-bearing", 12 * mul})
	momoTweak.replace_with_ingredient("turbo-underground-belt", "titanium-plate", {"titanium-plate", 20 * mul})
	momoTweak.replace_with_ingredient("turbo-underground-belt", "zinc-plate", {"zinc-plate", 20 * mul})
	bobmods.lib.recipe.add_ingredient("turbo-underground-belt", {"concrete", 20 * mul})
	
	momoTweak.replace_with_ingredient("turbo-splitter", "titanium-bearing", {"titanium-bearing", 15 * mul})
	momoTweak.replace_with_ingredient("turbo-splitter", "titanium-plate", {"titanium-plate", 8 * mul})
	momoTweak.replace_with_ingredient("turbo-splitter", "zinc-plate", {"zinc-plate", 18 * mul})
	
	-- nitinol-gear-wheel  tungsten-gear-wheel  nitinol-bearing nitinol-alloy 
	momoTweak.replace_with_ingredient("ultimate-transport-belt", "nitinol-gear-wheel", {"nitinol-gear-wheel", 3 * mul})
	momoTweak.replace_with_ingredient("ultimate-transport-belt", "nitinol-bearing", {"nitinol-bearing", 4 * mul})
	momoTweak.replace_with_ingredient("ultimate-transport-belt", "nitinol-alloy", {"nitinol-alloy", 4 * mul})
	momoTweak.replace_with_ingredient("ultimate-transport-belt", "tungsten-gear-wheel", {"tungsten-gear-wheel", 2 * mul})
	
	momoTweak.replace_with_ingredient("ultimate-underground-belt", "nitinol-gear-wheel", {"nitinol-gear-wheel", 20 * mul})
	momoTweak.replace_with_ingredient("ultimate-underground-belt", "nitinol-bearing", {"nitinol-bearing", 20 * mul})
	momoTweak.replace_with_ingredient("ultimate-underground-belt", "nitinol-alloy", {"nitinol-alloy", 15 * mul})
	momoTweak.replace_with_ingredient("ultimate-underground-belt", "tungsten-gear-wheel", {"tungsten-gear-wheel", 10 * mul})
	bobmods.lib.recipe.add_ingredient("ultimate-underground-belt", {"concrete", 21 * mul})
	
	momoTweak.replace_with_ingredient("ultimate-splitter", "nitinol-gear-wheel", {"nitinol-gear-wheel", 14 * mul})
	momoTweak.replace_with_ingredient("ultimate-splitter", "nitinol-bearing", {"nitinol-bearing", 12 * mul})
	momoTweak.replace_with_ingredient("ultimate-splitter", "nitinol-alloy", {"nitinol-alloy", 10 * mul})
	momoTweak.replace_with_ingredient("ultimate-splitter", "tungsten-gear-wheel", {"tungsten-gear-wheel", 12 * mul})
end

momoTweak.replace_with_ingredient("inserter", "iron-gear-wheel", {"burner-inserter", 1})

bobmods.lib.recipe.add_ingredient("rail-signal", {"rubber", 2  * rubberMul})
bobmods.lib.recipe.add_ingredient("rail-chain-signal", {"rubber", 3  * rubberMul})

bobmods.lib.recipe.add_ingredient("train-stop", {"rubber", 5 * rubberMul})

---- bot
local function Add(recipe, ingredients)
	for i, ing in pairs(ingredients) do
		bobmods.lib.recipe.add_ingredient(recipe, ing)
	end
end

local amount =  1
if (harder) then amount = 2 end

local brainC = "robot-brain-construction"
local brainL = "robot-brain-logistic"
local frame = "flying-robot-frame"
local toolC = "robot-tool-construction"
local toolL = "robot-tool-logistic"

Add(toolC, {{"rubber", 2}})
Add(toolC .. "-2", {{"rubber", 4}, {toolC, amount}})
Add(toolC .. "-3", {{"rubber", 7}, {toolC .. "-2", amount}})
Add(toolC .. "-4", {{"rubber", 9}, {toolC .. "-3", amount}})

Add(toolL, {{"rubber", 4}})
Add(toolL .. "-2", {{"rubber", 5}, {toolL, amount}})
Add(toolL .. "-3", {{"rubber", 7}, {toolL .. "-2", amount}})
Add(toolL .. "-4", {{"rubber", 9}, {toolL .. "-3", amount}})

local function ProcessPart(part)
	Add(part .. "-2", {{part, amount}})
	Add(part .. "-3", {{part .. "-2", amount}})
	Add(part .. "-4", {{part .. "-3", amount}})
end

ProcessPart(frame)
ProcessPart(brainC)
ProcessPart(brainL)

local door      = "roboport-door"
local antenna   = "roboport-antenna"
local chargepad = "roboport-chargepad"

local function ProcessInfa(infa)
	Add(infa .. "-2", {{infa .. "-1", amount}})
	Add(infa .. "-3", {{infa .. "-2", amount}})
	Add(infa .. "-4", {{infa .. "-3", amount}})
end

ProcessInfa(door)
ProcessInfa(antenna)
ProcessInfa(chargepad)

----