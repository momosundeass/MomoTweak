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

momoIRTweak.dumpRecipesText = ""
momoIRTweak.indentAmount = 0

local function PrintTable(var)
	if (type(var) == "table") then
		for k, v in pairs(var) do 
			momoIRTweak.indentAmount = momoIRTweak.indentAmount + 1
			local indent = ""
			for i=1, momoIRTweak.indentAmount do 
				indent = indent .. "   "
			end
			momoIRTweak.dumpRecipesText = momoIRTweak.dumpRecipesText .. "\n" .. indent .. tostring(k) .. ":"
			PrintTable(v)
			momoIRTweak.indentAmount = momoIRTweak.indentAmount - 1
		end
	else
		momoIRTweak.dumpRecipesText = momoIRTweak.dumpRecipesText .. " " .. tostring(var) 
	end
end

-- Warning this function may take half a year to finish
function momoIRTweak.DumpRecipes()
	momoIRTweak.dumpRecipesText = "Recipe dump \n"
	for	i, r in pairs(data.raw.recipe) do
		PrintTable(r)
		momoIRTweak.dumpRecipesText = momoIRTweak.dumpRecipesText .. "\n"
	end
	log("MIRTL => " .. momoIRTweak.dumpRecipesText)
end

