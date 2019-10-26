local Recipe = require("__stdlib__/stdlib/data/recipe")

function momoIRTweak.NewRecipe(categoryCrafting, resultItemName, resultAmount, ingredients, timeUse)
	data:extend({{
		type = "recipe",
		enabled = false,
		category = categoryCrafting,
		name = resultItemName,
		ingredients = ingredients,
		result = resultItemName,
		result_count = resultAmount,
		energy_required = timeUse,
	}})
	
	return data.raw.recipe[resultItemName]
end

function momoIRTweak.AddToRecipe(name, ingredient)
	Recipe(name):add_ingredient(ingredient, ingredient)
end

function momoIRTweak.RemoveFromRecipe(name, ingredientName)
	Recipe(name):remove_ingredient(ingredientName, ingredientName)
end

function momoIRTweak.AddOrUpdateToRecipe(name, ingredient)
	local re = Recipe(name)
	re:remove_ingredient(ingredient.name, ingredient.name)
	re:add_ingredient(ingredient, ingredient)
end

function momoIRTweak.ReplaceIngredients(name, newIngredients)
	data.raw.recipe[name].ingredients = newIngredients
end

-- Warning this function may take half a year to finish
function momoIRTweak.DumpRecipes()
	momoIRTweak.dumpRecipesText = "Recipe dump \n"
	for	i, r in pairs(data.raw.recipe) do
		momoIRTweak.PrintTable(r)
		momoIRTweak.dumpText = momoIRTweak.dumpText .. "\n"
	end
	log("MIRTL => " .. momoIRTweak.dumpText)
end

