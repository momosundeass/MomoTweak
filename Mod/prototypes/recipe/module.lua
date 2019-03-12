local ele = momoTweak.ele

bobmods.lib.recipe.set_result("module-contact", {"module-contact", 2})

momoTweak.set_amount_ingredient("module-circuit-board", {"tin-plate", 4})
momoTweak.set_amount_ingredient("module-circuit-board", {"copper-plate", 5})
momoTweak.replace_with_ingredient("module-circuit-board", "phenolic-board", {ele.circuit[2], 4})
bobmods.lib.recipe.add_ingredient("module-circuit-board", {"silver-plate", 3})

--module-processor-board

momoTweak.set_amount_ingredient("module-processor-board", {"copper-plate", 6})
momoTweak.replace_with_ingredient("module-processor-board", "phenolic-board", {ele.unit[2], 4})
momoTweak.replace_with_ingredient("module-processor-board","tin-plate", {"silicon-wafer", 8})
bobmods.lib.recipe.add_ingredient("module-processor-board", {"tinned-copper-cable", 6})

--module-processor-board-2
bobmods.lib.recipe.add_ingredient("module-processor-board-2", {"module-processor-board", 4})
momoTweak.replace_with_ingredient("module-processor-board-2", "fibreglass-board", {ele.unit[3], 4})
bobmods.lib.recipe.remove_ingredient("module-processor-board-2", "gold-plate")
bobmods.lib.recipe.add_ingredient("module-processor-board-2", {"silver-plate", 8})
momoTweak.set_amount_ingredient("module-processor-board-2", {"copper-plate", 6})


bobmods.lib.recipe.add_ingredient("module-processor-board-2", {"solder-alloy", 8})

--module-processor-board-3
function changeboard3 ()
	momoTweak.replace_with_ingredient("module-processor-board-3", "fibreglass-board", {ele.unit[4], 4})
	momoTweak.set_amount_ingredient("module-processor-board-3", {"gold-plate", 6})

	bobmods.lib.recipe.add_ingredient("module-processor-board-3", {"module-processor-board-2", 2})
	bobmods.lib.recipe.add_ingredient("module-processor-board-3", {"solder-alloy", 12})
	bobmods.lib.recipe.add_ingredient("module-processor-board-3", {"module-circuit-board", 2})
	bobmods.lib.recipe.replace_ingredient("module-processor-board-3", "copper-plate", "aluminium-plate")
	
	data.raw.recipe["module-processor-board-3"].result_count = 2
	-- bobmods.lib.recipe.set_result("module-processor-board-3", {"module-processor-board-3", 2})
end

pcall(changeboard3)

local function getingredient(recipe)
  if data.raw.recipe[recipe].ingredients then
    return data.raw.recipe[recipe].ingredients
  end
  if data.raw.recipe[recipe].normal then
    return data.raw.recipe[recipe].normal.ingredients
  end
  if data.raw.recipe[recipe].expensive then
    return data.raw.recipe[recipe].expensive.ingredients
  end
end

local function massMultipleIngredient(recipe, multiple)
  local names = {}
  for i, ingredient in pairs(getingredient(recipe)) do
    table.insert(names, ingredient)
  end
  
  for i, ingredient in pairs(names) do
    local item = bobmods.lib.item.basic_item(ingredient)
    momoTweak.multiple_amount_ingredient(recipe, item.name, multiple)
  end
  
  bobmods.lib.recipe.add_ingredient(recipe, {"module-case", 1})
end

local loop = {"effectivity", "pollution-clean", "speed"}
for i, name in pairs(loop) do
  massMultipleIngredient(name.."-processor", 2)
  massMultipleIngredient(name.."-processor-2", 3)
  massMultipleIngredient(name.."-processor-3", 3)
end

massMultipleIngredient("productivity-processor", 3)
massMultipleIngredient("productivity-processor-2", 4)
massMultipleIngredient("productivity-processor-3", 4)

massMultipleIngredient("pollution-create-processor", 1)
massMultipleIngredient("pollution-create-processor-2", 2)
massMultipleIngredient("pollution-create-processor-3", 2)

