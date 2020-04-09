function momoTweak.require.RecipeModule()
	local ele = momoTweak.ele

	bobmods.lib.recipe.set_result("module-contact", {"module-contact", 2})

	momoTweak.set_amount_ingredient("module-circuit-board", {"tin-plate", 4})
	momoTweak.set_amount_ingredient("module-circuit-board", {"copper-plate", 3})
	momoTweak.replace_with_ingredient("module-circuit-board", "phenolic-board", {ele.circuit[2], 4})
	bobmods.lib.recipe.add_ingredient("module-circuit-board", {"silver-plate", 3})


	local mem_a = "copper_plate"
	local mem_a_3 = {"solder-alloy", 12}

	if momoTweak.settings.isEletronics then
		if (data.raw.item[ele.memory.a]) then
			mem_a = ele.memory.a
		end
		if (data.raw.item[ele.memory.a3]) then
			mem_a_3 = {ele.memory.a3, 4}
		end
	end

	local moduleBoard = momoTweak.module.board

	--module-processor-board
	bobmods.lib.recipe.remove_ingredient(moduleBoard.a, "copper-plate")
	bobmods.lib.recipe.add_ingredient(moduleBoard.a, {mem_a, 6})

	momoTweak.replace_with_ingredient(moduleBoard.a, "phenolic-board", {ele.unit[2], 4})
	momoTweak.replace_with_ingredient(moduleBoard.a,"tin-plate", {"silicon-wafer", 8})
	bobmods.lib.recipe.add_ingredient(moduleBoard.a, {"tinned-copper-cable", 6})

	--module-processor-board-2
	bobmods.lib.recipe.remove_ingredient(moduleBoard.b, "copper-plate")
	bobmods.lib.recipe.add_ingredient(moduleBoard.b, {mem_a, 6})

	bobmods.lib.recipe.add_ingredient(moduleBoard.b, {"module-processor-board", 4})
	momoTweak.replace_with_ingredient(moduleBoard.b, "fibreglass-board", {ele.unit[3], 4})

	bobmods.lib.recipe.remove_ingredient(moduleBoard.b, "gold-plate")
	bobmods.lib.recipe.add_ingredient(moduleBoard.b, {"silver-plate", 8})
	bobmods.lib.recipe.add_ingredient(moduleBoard.b, {"solder-alloy", 8})

	--module-processor-board-3
	momoTweak.replace_with_ingredient(moduleBoard.c, "fibreglass-board", {ele.unit[4], 4})
	momoTweak.set_amount_ingredient(moduleBoard.c, {"gold-plate", 6})


	bobmods.lib.recipe.add_ingredient(moduleBoard.c, mem_a_3)
	bobmods.lib.recipe.add_ingredient(moduleBoard.c, {moduleBoard.b, 4})
	bobmods.lib.recipe.add_ingredient(moduleBoard.c, {"module-circuit-board", 2})
	bobmods.lib.recipe.add_ingredient(moduleBoard.c, {"advanced-plastics", 4})

	bobmods.lib.recipe.replace_ingredient(moduleBoard.c, "copper-plate", "aluminium-plate")
		
	data.raw.recipe[moduleBoard.c].result_count = 2

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
end
