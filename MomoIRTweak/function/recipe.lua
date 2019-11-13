local Recipe = require("__stdlib__/stdlib/data/recipe")

if not momoIRTweak.recipe then momoIRTweak.recipe = {} end
momoIRTweak.recipe.prefixName = "momo-"

function momoIRTweak.recipe.NewRecipe(categoryCrafting, resultItemName, resultAmount, ingredients, timeUse)
local prototype = momoIRTweak.recipe.BuildPrototype(resultItemName, categoryCrafting, resultItemName, resultAmount, ingredients, timeUse)
	data:extend({prototype})
	return data.raw.recipe[resultItemName]
end

function momoIRTweak.recipe.BuildPrototype(prototypeName, categoryCrafting, resultItemName, resultAmount, ingredients, timeUse)
	return {
		type = "recipe",
		enabled = false,
		category = categoryCrafting,
		name = prototypeName,
		ingredients = ingredients,
		result = resultItemName,
		result_count = resultAmount,
		energy_required = timeUse
	}
end

function momoIRTweak.recipe.NewRecipePrefix(categoryCrafting, resultItemName, resultAmount, ingredients, timeUse)
	local name = momoIRTweak.recipe.prefixName .. resultItemName
	local prototype = momoIRTweak.recipe.BuildPrototype(name, categoryCrafting, resultItemName, resultAmount, ingredients, timeUse) 
	data:extend({prototype})
	return data.raw.recipe[name]
end

function momoIRTweak.recipe.ChangePrototypeResults(prototype, newName, results)
	if (type(prototype) == "table") then
		prototype.name = newName
		prototype.results = results
		prototype.result = nil
		prototype.result_count = nil
		prototype.main_product = results[1].name
		return prototype
	else
		error("parameter #1[prototype] isn't table. (" .. newName ..")")
	end
end

function momoIRTweak.recipe.AddIngredient(name, ingredient)
	Recipe(name):add_ingredient(ingredient, ingredient)
end

function momoIRTweak.recipe.RemoveIngredient(name, ingredientName)
	Recipe(name):remove_ingredient(ingredientName, ingredientName)
end

function momoIRTweak.recipe.AddOrUpdateIngredient(name, ingredient)
	local re = Recipe(name)
	re:remove_ingredient(ingredient.name, ingredient.name)
	re:add_ingredient(ingredient, ingredient)
end

function momoIRTweak.recipe.ReplaceAllIngredient(name, newIngredients)
	data.raw.recipe[name].ingredients = newIngredients
end

function momoIRTweak.recipe.ReplaceIngredient(recipeName, targetItem, newItem)
	Recipe(recipeName):replace_ingredient(targetItem, newItem, true)
end

function momoIRTweak.recipe.GetIngredient(recipeName, ingredientName) 
	if (data.raw.recipe[recipeName]) then
		local recipe = data.raw.recipe[recipeName]
		
		local ingredient = {}
		if (recipe.normal) then
			ingredient = recipe.normal.ingredients
		else
			ingredient = recipe.ingredients
		end
		
		for i, ing in pairs(ingredient) do
			local item = momoIRTweak.item.CastToBasic(ing)
			
			if (item.name == ingredientName) then
				return item
			end
		end
	end
	return false
end

function momoIRTweak.recipe.GetCraftingMachineTint(recipeName)
	if (data.raw.recipe[recipeName]) then
		return data.raw.recipe[recipeName].crafting_machine_tint
	end
	return false
end

function momoIRTweak.recipe.SetCraftingMachineTint(recipeName, machineTintTable)
	if (data.raw.recipe[recipeName]) then
		if (type(machineTintTable) == "table") then
			data.raw.recipe[recipeName].crafting_machine_tint = machineTintTable
		else
			error ("parameter #2 [machineTintTable] isn't table. (" .. recipeName .. ")")
		end
	end
	return false
end

-- Warning this function may take half a year to finish
function momoIRTweak.DumpRecipes()
	momoIRTweak.dumpRecipesText = "Recipe dump \n"
	for	i, r in pairs(data.raw.recipe) do
		momoIRTweak.PrintTable(r)
		momoIRTweak.dumpText = momoIRTweak.dumpText .. "\n"
	end
	momoIRTweak.Log(momoIRTweak.dumpText)
end

