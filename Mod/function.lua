function momoTweak.set_amount_ingredient(recipeName, item)
  local itemcasting = bobmods.lib.item.basic_item(item)
  bobmods.lib.recipe.remove_ingredient(recipeName, itemcasting.name)
  bobmods.lib.recipe.add_ingredient(recipeName, item)
end

function momoTweak.replace_with_ingredient(recipeName, old, newItem)
  bobmods.lib.recipe.remove_ingredient(recipeName, old)
  bobmods.lib.recipe.add_ingredient(recipeName, newItem)
end

function momoTweak.multiple_amount_ingredient(recipeName, itemName, multiply)
  local oldValue = 0
  -- check for straing 
  if data.raw.recipe[recipeName].ingredients then
    for i, ingredient in pairs(data.raw.recipe[recipeName].ingredients) do
      local item = bobmods.lib.item.basic_item(ingredient)
          if item.name == itemName then
            oldValue = item.amount
          end
    end
  else
  -- if get difficult
    for i, ingredient in pairs(data.raw.recipe[recipeName].normal.ingredients) do
      local item = bobmods.lib.item.basic_item(ingredient)
          if item.name == itemName then
            oldValue = item.amount
          end
    end
  end
  
  momoTweak.set_amount_ingredient(recipeName, {itemName, oldValue * multiply})
end

function momoTweak.set_all_ingredient(recipe, ingredients)
  if data.raw.recipe[recipe] then
    if data.raw.recipe[recipe].normal then
      data.raw.recipe[recipe].normal.ingredients = ingredients
    end
    if data.raw.recipe[recipe].expensive then
      data.raw.recipe[recipe].expensive.ingredients = ingredients
    end
    if data.raw.recipe[recipe].ingredients then
      data.raw.recipe[recipe].ingredients = ingredients
    end
  end
end

function momoTweak.add_ingredients(recipe, ingredients)
	for i, ing in pairs(ingredients) do
		bobmods.lib.recipe.add_ingredient(recipe, ing)
	end
end

function momoTweak.find_recipe_from_ingredient(ingredient) 
	for i,recipe in pairs(data.raw.recipe) do
		if recipe.ingredients then
			for j, ing in pairs(recipe.ingredients) do
				local item = {}
				if ing then item = bobmods.lib.item.basic_item(ing) else item.name = "__" end
				if  item.name == ingredient then
					log("MTKL Recipe finder : contain ".. ingredient .. " => " .. recipe.name)
					momoTweak.logRecipe(recipe.name)
				end
			end
		end
	end
	error ("MomoTweak: Find recipe end!!")
end

function momoTweak.find_recipe_from_result(result) 
	for i,recipe in pairs(data.raw.recipe) do
		local results = momoTweak.convert_results(recipe)
		if results then
			for j, res in pairs(results) do
				local item = {}
				if res then item = bobmods.lib.item.basic_item(res) else item.name = "__" end
				if item.name == result then
					log("MTKL Recipe finder : contain ".. result .. " => " .. recipe.name)
					momoTweak.logRecipe(recipe.name)
				end
			end
		end
	end
	error ("MomoTweak: Find recipe end!!")
end

function momoTweak.logRecipe(recipe)
	if data.raw.recipe[recipe] then
		local recipe = data.raw.recipe[recipe]
		log("---------------------------------------------------------------------------------")
		log("Name = " .. recipe.name)
		if recipe.energy_required then log("Enegy_Require = " .. recipe.energy_required) end
		if recipe.category then log("Category = " .. recipe.category) end
		if recipe.ingredients then 
			log("[Ingredients]")
			for i, ing in pairs(recipe.ingredients) do
				local item = bobmods.lib.item.basic_item(ing)
				log("|" .. i .. "| " .. item.name .. " " .. item.amount)
			end
		end
		log("[Results]")
		for i, res in pairs(momoTweak.convert_results(recipe)) do
			log("|".. i .. "| " .. res.name .. " " .. res.amount)
		end
		log("---------------------------------------------------------------------------------")
	end
end

function momoTweak.convert_results(recipePro) 
	local results = {}
	if recipePro.result then
		table.insert(results, bobmods.lib.item.basic_item({recipePro.result, recipePro.result_count}))
		return results
	end
	
	if recipePro.results then
		return recipePro.results
	end
	
	if recipePro.normal then
		if recipePro.normal.result then
			table.insert(results, bobmods.lib.item.basic_item({recipePro.normal.result, recipePro.normal.result_count}))
			return results
		end
		
		if recipePro.normal.results then
			return recipePro.normal.results
		end
	end
	return results
end

function momoTweak.get_result_amount(recipe)
	return momoTweak.convert_results(data.raw.recipe[recipe])[1].amount
end

function momoTweak.genRecipeNameFromResult(result)
	local item = bobmods.lib.item.basic_item(result)
	return "momo-" .. item.name .. "-N" .. item.amount
end

function momoTweak.get_gen_recipe(result)
	return data.raw.recipe[momoTweak.genRecipeNameFromResult(result)]
end

function momoTweak.get_ingredients(recipe)
	local recipePrototype = data.raw.recipe[recipe]
	if (recipePrototype.ingredients) then
		return recipePrototype.ingredients
	else 
		return recipePrototype.expensive.ingredients
	end
end

function momoTweak.get_expensive_ingredients(recipe)
	local recipePrototype = data.raw.recipe[recipe]
	if (recipePrototype.expensive.ingredients) then
		return recipePrototype.expensive.ingredients
	else 
		return recipePrototype.ingredients
	end
end

function momoTweak.assign_ingredients(recipe, ingredients)
	local recipePrototype = data.raw.recipe[recipe]
	if (recipePrototype.expensive) then
		recipePrototype.expensive.ingredients = ingredients
	end
	if (recipePrototype.normal) then
		recipePrototype.normal.ingredients = ingredients
	end
	recipePrototype.ingredients = ingredients
end

function momoTweak.createRecipe(cat ,results, ingredients, energy, tech, extraname)
  local result = bobmods.lib.item.basic_item(results[1])
  local namegen = momoTweak.genRecipeNameFromResult(result)
  local enabled = "false"
  if tech == true then
    enabled = "true"
  end 
  
  if data.raw.recipe[namegen] then namegen = "momo-" .. extraname .. result.name .. "-N" .. result.amount end
  
  if not results[2] then
	-- gen recipe for one result
	  data:extend({{
			  type = "recipe",
			  name = namegen,
			  enabled = enabled,
			  energy_required = energy,
			  category = cat,
			  ingredients = ingredients,
			  results = results,
	  }})
	else
	-- gen more recipe for more result
		data:extend({{
				  type = "recipe",
				  name = namegen,
				  enabled = enabled,
				  energy_required = energy,
				  category = cat,
				  ingredients = ingredients,
				  results = results,
				  main_product = result.name
		  }})
	end
  
  if tech ~= true then
    if data.raw["technology"][tech] then
      bobmods.lib.tech.add_recipe_unlock(tech, namegen)
    else 
	  if tech ~= false then
         log("MTLK :Warning: No tech with name => " .. tostring(tech))
	  end
    end
  end
  
  return namegen
end



function momoTweak.createTech(name, req, units, img)
	local icon = {}
	if img[1] then
		icon[1] = img[1]
	else
		icon[1] = img
	end
	if img[2] then
		icon[2] = img[2]
	else
		icon[2] = 64
	end
	data:extend({
		{ type = "technology",    name = name,    icon = icon[1],    icon_size = icon[2],
		prerequisites = pre,    effects = {},    unit = units, order = "momo-" .. name }
	})
end

function momoTweak.techunit(c, t, ing)
	local map = {
		momoTweak.sci1, 
		momoTweak.sci2, 
		momoTweak.sci3, 
		momoTweak.sciGun, 
		momoTweak.sciProduction,
		momoTweak.sciTech,
		momoTweak.sciLogistic
	}
	local u = {}
	local ingredient = {}
	for i, j in pairs(ing) do
		if math.fmod(i, 2) == 0 then
			ingredient[2] = j
			table.insert(u, ingredient)
		else
			if data.raw.tool[map[j]] then 
				ingredient[1] = map[j]
			else
				ingredient[1] = momoTweak.sci1
			end
		end
	end
	return {count=c, time=t, ingredients=u}
end


function momoTweak.get_tech_of_recipe(recipe)
	for i, tech in pairs(data.raw.technology) do
		if tech.effects then
			for j, effect in pairs(tech.effects) do
				if effect.type == "unlock-recipe" and effect.recipe == recipe then
					return tech.name
				end
			end
		end
	end
	return true
end

function momoTweak.get_techs_of_recipe(recipe)
	local results = {}
	for i, tech in pairs(data.raw.technology) do
		if tech.effects then
			for j, effect in pairs(tech.effects) do
				if effect.type == "unlock-recipe" and effect.recipe == recipe then
					table.insert(results, tech.name)
				end
			end
		end
	end
	return results
end

function momoTweak.get_tech_of_recipe_no_demo(recipe)
	local found = momoTweak.get_techs_of_recipe(recipe)
	for	i, name in pairs(found) do
		if not (string.match(name, "demo")) then
			return name
		end
	end
end

function momoTweak.deepcopy(orig)
	local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in pairs(orig) do
            copy[orig_key] = orig_value
        end
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end


