local processor = {"module-processor-board", "module-processor-board-2", "module-processor-board-3"}
local function fixmodule (recipe, level)
	bobmods.lib.recipe.add_ingredient(recipe, {processor[level], 1})
end

local function enableback(recipe, ing)
		data:extend({
			{ type = "recipe", name = "momo-pyhigh-"..recipe,
				enabled = "false", energy_require = 15,
				category = "electronics",
				result = recipe, result_count = 1,
				ingredients = ing
			}
		})
		bobmods.lib.tech.add_recipe_unlock("modules", "momo-pyhigh-"..recipe)
end

local e = momoTweak.ele

enableback(processor[1], {{"tin-plate", 6}, {"copper-cable", 5}, {e.unit[2], 1}})
enableback(processor[2], {{"tinned-copper-cable", 6}, {"silver-plate", 6}, {"solder", 3}, {"transistor", 6}, {e.unit[3], 1}})
enableback(processor[3], {{"gilded-copper-cable", 6}, {"silver-plate", 8}, {"solder", 6}, {"transistor", 12}, {"microchip", 4}, {"kondo-processor", 1}})

local loop = {"effectivity", "pollution-clean", "speed"}
for i, name in pairs(loop) do
  fixmodule(name.."-processor", 1)
  fixmodule(name.."-processor-2", 2)
  fixmodule(name.."-processor-3", 3)
end

fixmodule("productivity-processor", 1)
fixmodule("productivity-processor-2", 2)
fixmodule("productivity-processor-3", 3)

fixmodule("pollution-create-processor", 1)
fixmodule("pollution-create-processor-2", 2)
fixmodule("pollution-create-processor-3", 3)

bobmods.lib.recipe.add_ingredient("momo-pyhigh-"..processor[3], {"advanced-plastics", 4})