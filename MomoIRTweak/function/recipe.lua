local Recipe = require("__stdlib__/stdlib/data/recipe")

if not momoIRTweak.recipe then momoIRTweak.recipe = {} end

momoIRTweak.recipe.prefixName = "momo-"

function momoIRTweak.recipe.ValidateRecipe(recipe, callback)
	if (type(recipe) == "table") then
		callback(recipe)
	else
		local recipeTable = data.raw.recipe[recipe]
		if (recipeTable) then
			callback(recipeTable)
		else
			momoIRTweak.Log("no recipe with name " .. recipe)
		end
	end
end


--- New recipe.
function momoIRTweak.recipe.NewRecipe(categoryCrafting, resultItemName, resultAmount, ingredients, timeUse)
	local name = momoIRTweak.GetName(resultItemName)
	local prototype = momoIRTweak.recipe.BuildPrototype(name, categoryCrafting, name, resultAmount, ingredients, timeUse)
	data:extend({prototype})
	return data.raw.recipe[name]
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

function momoIRTweak.recipe.NewComplexRecipe(categoryCrafting, name, ingredients, results, timeUse)
	local prototype = momoIRTweak.recipe.BuildPrototype(name, categoryCrafting, results[1].name, results[1].amount, ingredients, timeUse) 
	momoIRTweak.recipe.ChangePrototypeResults(prototype, name, results)
	data:extend({prototype})
	return data.raw.recipe[prototype.name]
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

-----------------------------------------------------------------------------------------

--- Ingredient.
function momoIRTweak.recipe.AddIngredient(recipeName, ingredient)
	Recipe(recipeName):add_ingredient(ingredient, ingredient)
end

function momoIRTweak.recipe.SaveAddIngredient(recipeName, ingredient)
	momoIRTweak.recipe.RemoveIngredient(recipeName, ingredient.name)
	momoIRTweak.recipe.AddIngredientNative(recipeName, ingredient)
end

function momoIRTweak.recipe.AddIngredientNative(recipeName, ingredient)
	momoIRTweak.recipe.ValidateRecipe(recipeName, function(recipe) 
		if (recipe.normal) then
			if not (momoIRTweak.recipe.IsIngredientExist(recipe.normal.ingredients, ingredient)) then
				table.insert(recipe.normal.ingredients, ingredient)
			end
			
			if not (momoIRTweak.recipe.IsIngredientExist(recipe.expensive.ingredients, ingredient)) then
				table.insert(recipe.expensive.ingredients, ingredient)
			end
		else
			table.insert(recipe.ingredients, ingredient)
		end
	end)
end

function momoIRTweak.recipe.RemoveIngredient(recipeName, ingredientName)
	Recipe(recipeName):remove_ingredient(ingredientName, ingredientName)
end

function momoIRTweak.recipe.SearchGetIndexOfIngredient(ingredientsTable, ingrendientName)
	if (type(ingredientsTable) == "table") then
		for i, ing in pairs(ingredientsTable) do
			if (momoIRTweak.item.CastToBasic(ing).name == ingredientName) then
				return i
			end
		end
		return false
	else
		error("parameter #1 [ingredientsTable] need table, momoIRTweak.recipe.SearchGetIndexOfIngredient")
	end
end

function momoIRTweak.recipe.UpdateIngredient(recipeName, ingredient)
	momoIRTweak.recipe.ValidateRecipe(recipeName, function(recipe) 
		local ingredientsTable = {}
		local ingredientsTableEx = {}
		if (recipe.normal) then
			ingredientsTable = recipe.normal.ingredients
			ingredientsTableEx = recipe.expensive.ingredients
		else
			ingredientsTable = recipe.ingredients
		end
		
		local index = momoIRTweak.recipe.SearchGetIndexOfIngredient(ingredientsTable, ingredient.name)
		local indexEx = momoIRTweak.recipe.SearchGetIndexOfIngredient(ingredientsTableEx, ingredient.name)
		
		if (index) then
			if (recipe.normal) then
				recipe.normal.ingredients[index] = ingredient
				if (indexEx) then
					recipe.expensive.ingredients[indexEx] = ingredient
				end
			else
				recipe.ingredients[index] = ingredient
			end
		end
	end)
end

function momoIRTweak.recipe.AddOrUpdateIngredient(recipeName, ingredient)
	local re = Recipe(recipeName)
	re:remove_ingredient(ingredient.name, ingredient.name)
	re:add_ingredient(ingredient, ingredient)
end

function momoIRTweak.recipe.MultipleIngredientsCount(recipeName, multiplier)
	local function MutilpleIngredients(ingredients)
		for i, ing in pairs(ingredients) do
			local basic = momoIRTweak.item.CastToBasic(ing)
			basic.amount = math.floor(basic.amount * multiplier)
			ingredients[i] = basic
		end
	end
	
	momoIRTweak.recipe.ValidateRecipe(recipeName, function(recipe) 
		if (recipe.normal) then
			MutilpleIngredients(recipe.normal.ingredients)
			MultipleIngredients(recipe.expensive.ingredients)
		else
			MutilpleIngredients(recipe.ingredients)
		end
	end)
end

function momoIRTweak.recipe.ReplaceAllIngredient(recipeName, newIngredients)
	data.raw.recipe[recipeName].ingredients = newIngredients
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

function momoIRTweak.recipe.IsIngredientExist(ingredientsTable, ingredientToCheck)
	if (type(ingredientsTable) == "table") then
		local name = momoIRTweak.GetName(ingredientToCheck)
		for i, ing in pairs(ingredientsTable) do
			local item = momoIRTweak.item.CastToBasic(ing)
			if item.name == name then
				return item
			end
		end
		return false
	else
		error("parameter #1 [ingredientsTable] need table. momoIRTweak.recipe.IsIngredientExist")
	end
end

function momoIRTweak.recipe.ConvertToOnlyNormal(recipeName, isPickExpensive)
	if not isPickExpensive then isPickExpensive = false end
	
	momoIRTweak.recipe.ValidateRecipe(recipeName, function(recipe)
		if recipe.normal then  
			local target = recipe.normal
			if (isPickExpensive) then
				target = recipe.expensive
			end
			
			recipe.ingredients     = target.ingredient
			recipe.result          = target.result
			recipe.result_count    = target.result_count
			recipe.results         = target.results
			recipe.energy_required = target.energy_required
			recipe.enabled         = recipe.enabled
			
			recipe.normal = nil
			recipe.expensive = nil
		end
	end)
end 

-----------------------------------------------------------------------------------------

--- Results.
function momoIRTweak.recipe.MultipleResultsCount(recipeName, multiplier)
	momoIRTweak.recipe.ValidateRecipe(recipeName, function(recipe)
		if (recipe.results) then
			for i, r in pairs(recipe.results) do
				local basic = momoIRTweak.item.CastToBasic(r)
				basic.amount = math.floor(basic.amount * multiplier)
				recipe.results[i] = basic
			end
		else
			recipe.result_count = math.floor(recipe.result_count * multiplier)
		end
	end)
end

function momoIRTweak.recipe.SetResultCount(recipeName, amount)
	momoIRTweak.recipe.ValidateRecipe(recipeName, function(recipe)
		if (recipe.result_count) then
			recipe.result_count = amount
		else
			if (recipe.results) then
				if not (recipe.results[2]) then
					recipe.results[1].amonut = amount
				else
					momoIRTweak.Log("recipe [" .. recipeName .. "] have multiple results.")
				end
			end
		end
	end)
end

function momoIRTweak.recipe.SaveGetResultAmount(recipeName)
	local amount = 1
	local result = momoIRTweak.recipe.NormalizedResult(recipeName)
	if (result) then
		amount = result.amount
	else
		momoIRTweak.Log("No result for " .. recipeName)
	end
	return amount
end

function momoIRTweak.recipe.NormalizedResult(recipeName)
	local item = nil
	momoIRTweak.recipe.ValidateRecipe(recipeName, function(recipe) 
		if (recipe.normal) then
			if(recipe.normal.results) then
				item = momoIRTweak.item.CastToBasic(recipe.normal.results[1])
			else
				item = momoIRTweak.FastItem(recipe.normal.result, recipe.normal.result_count)
			end
		else
			if(recipe.results) then
				item = momoIRTweak.item.CastToBasic(recipe.results[1])
			else
				item = momoIRTweak.FastItem(recipe.result, recipe.result_count)
			end
		end
	end)
	return item
end

function momoIRTweak.recipe.GetResultWithAmount(itemName, amountMin, amountMax)
	local item = {}
	item.name = itemName
	item.amount_min = amountMin
    item.amount_max = amountMax
	return item
end

-----------------------------------------------------------------------------------------


--- Misc.
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

function momoIRTweak.recipe.SetTime(recipeName, newTime)
	local recipe = data.raw.recipe[recipeName]
	if recipe then
		if recipe.normal then
			recipe.normal.energy_required = newTime
			recipe.expensive.energy_required = newTime
		else
			recipe.energy_required = newTime
		end
	end
end

function momoIRTweak.recipe.SetEmissions(recipeName, multiplier)
	local recipe = data.raw.recipe[recipeName]
	if recipe then
		recipe.emissions_multiplier = multiplier
	end
end

function momoIRTweak.recipe.SetIcon(recipeName, iconPath, iconSize)
	local recipe = data.raw.recipe[recipeName]
	if (recipe) then
		recipe.icon = iconPath
		recipe.iconSize = iconSize
	end
end

function momoIRTweak.recipe.SetLocalizedName(recipeName, localName)
	local recipe = data.raw.recipe[recipeName]
	if (recipe) then
		recipe.localised_name = localName
	end
end

-- Warning this function may take half a year to finish
function momoIRTweak.DumpRecipes()
	momoIRTweak.dumpRecipesText = "Recipe dump \n"
	for	i, r in pairs(data.raw.recipe) do
		momoIRTweak.DumpTable(r)
		momoIRTweak.dumpText = momoIRTweak.dumpText .. "\n"
	end
	momoIRTweak.Log(momoIRTweak.dumpText)
end

