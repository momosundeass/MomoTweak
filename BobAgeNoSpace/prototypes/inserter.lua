
local function ToStack(inserterName, maxBeltSize, additionStackSize)
	if additionStackSize == nil then additionStackSize = 0 end
	local prototype = data.raw.inserter[inserterName]
	prototype.enter_drop_mode_if_held_stack_spoiled = true
	prototype.max_belt_stack_size = maxBeltSize
	prototype.stack_size_bonus = (prototype.stack_size_bonus or 0) + additionStackSize
end

ToStack("bulk-inserter", 2)
ToStack("bob-turbo-bulk-inserter", 3)
ToStack("bob-express-bulk-inserter", 4, 2)

data.raw.inserter["bob-express-bulk-inserter"].next_upgrade = nil

data.raw.item["stack-inserter"].hidden = true
data.raw.item["stack-inserter"].hidden_in_factoriopedia = true

data.raw.recipe["stack-inserter"].hidden = true
data.raw.recipe["stack-inserter"].hidden_in_factoriopedia = true

data.raw.technology["stack-inserter"].prerequisites = {"bob-bulk-inserter-2", "utility-science-pack"}
table.insert(data.raw.technology["transport-belt-capacity-1"].prerequisites, "bob-bulk-inserter-3")
table.insert(data.raw.technology["transport-belt-capacity-2"].prerequisites, "bob-bulk-inserter-4")

local effects = data.raw.technology["stack-inserter"].effects
for i, effect in pairs(effects) do
	if (effect.type == "unlock-recipe" and effect.recipe == "stack-inserter") then
		table.remove(effects, i)
		break
	end
end