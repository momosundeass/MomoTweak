local funcs = {}

function funcs.SafeAddIngredients(name, ingredients)
	MomoLib.GetRecipe(name, function(proto)
		if not MomoLib.IsArray(ingredients) then
			local temp = ingredients
			ingredients = {temp}
		end
			
		for _, ing in pairs(ingredients) do
			funcs._AddIngredientsIfExist(proto, ing)
		end
	end)
end

function funcs.ReplaceIngredient(recipeName, ingName, newIng)
	funcs.RemoveIngredient(recipeName, ingName)
	funcs.SafeAddIngredients(recipeName, newIng)
end

function funcs.RemoveIngredient(recipeName, ingName)
	MomoLib.GetRecipe(recipeName, function(proto)
		local normals = {}
		MomoLib.Foreach(proto.ingredients, function(ing)
			normals[#normals + 1] = funcs.NormalizedIngredient(ing)
		end)
		
		for i, ing in pairs(normals) do
			if ing.name == ingName then
				table.remove(proto.ingredients, i)
				return
			end
		end
	end)
	
end

function funcs.SetIngredients(recipeName, ingredients)
	MomoLib.GetRecipe(recipeName, function(proto)
		proto.ingredients = ingredients
	end)
end

function funcs.SetProductAmount(name, amount)
		MomoLib.GetRecipe(name, function(proto)
		if proto.results[1] ~= nil then
			proto.results[1].amount = amount
		end
	end)
end

function funcs._AddIngredientsIfExist(proto, ingredient) 
	local normals = {}
	
	MomoLib.Foreach(proto.ingredients, function(ing)
		normals[#normals + 1] = funcs.NormalizedIngredient(ing)
	end)
	
	MomoLib.Foreach(normals, function(ing)
		if ing.name == ingredient.name then
			ing.amount = ing.amount + ingredient.amount
			
			proto.ingredients = normals
			return
		end
	end)
	
	normals[#normals + 1] = ingredient
	proto.ingredients = normals
	return	
end

function funcs.NormalizedIngredient(ing)
	if #ing == 2 then
		return MomoLib.MakeIngredient(ing[1], ing[2])
	end
	return ing
end

function funcs.New(ingredients, results, name)
	local recipeResults = results
	if not MomoLib.IsArray(results) then
		recipeResults = {results}
	end
	local recipeName = name or MomoLib.First(recipeResults).name
	
	return {
		type = "recipe",
		enabled = false,
		name = recipeName,
		results = recipeResults,
		ingredients = ingredients
	}
end

function funcs.Remove(name)
	MomoLib.GetRecipe(name, function (proto)
		proto.enabled = false
		proto.hidden = true
		proto.hidden_in_factoriopedia = true
		
		MomoLib.technology.RemoveAllRecipe(name)
	end)
end

MomoLib.recipe = funcs