data.raw["utility-constants"].default.max_belt_stack_size = 6

local function ToStack(inserterName, maxBeltSize, additionStackSize)
	if additionStackSize == nil then additionStackSize = 0 end
	local prototype = data.raw.inserter[inserterName]
	prototype.enter_drop_mode_if_held_stack_spoiled = true
	prototype.max_belt_stack_size = maxBeltSize
	prototype.stack_size_bonus = (prototype.stack_size_bonus or 0) + additionStackSize
	prototype.grab_less_to_match_belt_stack = true
	prototype.wait_for_full_hand = true
end

ToStack("bulk-inserter", 2)
ToStack("bob-turbo-bulk-inserter", 3)
ToStack("bob-express-bulk-inserter", 6, 2)

data.raw.inserter["bob-express-bulk-inserter"].next_upgrade = nil

data.raw.item["stack-inserter"].hidden = true
data.raw.item["stack-inserter"].hidden_in_factoriopedia = true

data.raw.recipe["stack-inserter"].hidden = true
data.raw.recipe["stack-inserter"].hidden_in_factoriopedia = true

data.raw.technology["stack-inserter"].prerequisites = {
	"bob-bulk-inserter-2", 
	"bob-advanced-logistic-science-pack", 
	"utility-science-pack"
	}
table.insert(data.raw.technology["transport-belt-capacity-1"].prerequisites, "bob-bulk-inserter-3")
table.insert(data.raw.technology["transport-belt-capacity-2"].prerequisites, "bob-bulk-inserter-4")

local tech = data.raw.technology["stack-inserter"]
local effects = tech.effects
for i, effect in pairs(effects) do
	if (effect.type == "unlock-recipe" and effect.recipe == "stack-inserter") then
		table.remove(effects, i)
		break
	end
end
local tool = MomoLib.MakeResearchIngredient("bob-advanced-logistic-science-pack", 1)
table.insert(tech.unit.ingredients, tool)
table.insert(data.raw.technology["transport-belt-capacity-1"], tool)
table.insert(data.raw.technology["transport-belt-capacity-2"], tool)

-- data.raw.technology["transport-belt-capacity-1"].max_level = 4
-- data.raw.technology["transport-belt-capacity-1"].level = 1
-- data.raw.technology["transport-belt-capacity-2"].max_level = 4
-- data.raw.technology["transport-belt-capacity-2"].level = 2


local tech3 = MomoLib.technology.Clone("transport-belt-capacity-2", "transport-belt-capacity-3")
tech3.prerequisites = {"transport-belt-capacity-2"}
tech3.unit.count = 6000
-- tech3.level = 3
tech3.effects = {{type = "belt-stack-size-bonus", modifier=1}}
data:extend{tech3}

local tech4 = MomoLib.technology.Clone("transport-belt-capacity-3", "transport-belt-capacity-4")
tech4.prerequisites = {"transport-belt-capacity-3"}
tech4.unit.count = 12000
-- tech4.level = 4
tech4.effects = {{type = "belt-stack-size-bonus", modifier=1}}
data:extend{tech4}