local Recipe = require("__stdlib__/stdlib/data/recipe")

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

-- Warning this function may take half a year to finish
function momoIRTweak.DumpRecipes()
	momoIRTweak.dumpRecipesText = "Recipe dump \n"
	for	i, r in pairs(data.raw.recipe) do
		momoIRTweak.PrintTable(r)
		momoIRTweak.dumpText = momoIRTweak.dumpText .. "\n"
	end
	log("MIRTL => " .. momoIRTweak.dumpText)
end

