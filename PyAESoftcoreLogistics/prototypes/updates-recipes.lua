--- using
local ITEM = momoIRTweak.FastItem
local Replace = momoIRTweak.recipe.ReplaceIngredientIfExist

function momoPyTweak.updates.UndergroundPipeBeltStone() 
	Replace("underground-belt", "iron-plate", ITEM("stone", 10))
	Replace("pipe-to-ground", "iron-plate", ITEM("stone", 5))
end

function momoPyTweak.updates.PowerPoleChain()
	Replace("medium-electric-pole", "copper-cable", ITEM("small-electric-pole", 1))
end