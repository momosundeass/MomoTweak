---@class Recipe : Prototype
---@field auto_recycle boolean
---@field main_product string
---@field ingredients table
---@field results table
---@field category string
local funcs = {}
if not MomoLib.recipes then MomoLib.recipes = {} end
funcs.isNewRecipe = true

---@return Recipe
function funcs:_New(tbl)
	tbl = tbl or {}
	setmetatable(tbl, self)
	self.__index = self
	return tbl
end

---@return Recipe
function funcs:FromPrototype(tbl)
	local obj = funcs:_New(tbl)
	obj.isNewRecipe = false
	return obj
end

---@return Recipe
function funcs.SafeAddIngredients(recipeName, ingredients)
	if type(recipeName) == "table" and recipeName.name then recipeName = recipeName.name end
	local prototype = {}
	MomoLib.GetRecipe(recipeName, function(proto)
		funcs._AddToRecipes(recipeName)
		if not MomoLib.IsArray(ingredients) then
			local temp = ingredients
			ingredients = { temp }
		end

		for _, ing in pairs(ingredients) do
			funcs._AddIngredientsIfExist(proto, ing)
		end
		prototype = proto
	end)
	return prototype
end

---@return Recipe
function funcs.ReplaceIngredient(recipeName, ingName, newIng)
	if not MomoLib.IsArray(ingName) then ingName = { ingName } end
	for _, i in pairs(ingName) do
		local n = i
		if type(i) == "table" and i.name then n = i.name end
		funcs.RemoveIngredient(recipeName, n)
	end

	if not MomoLib.IsArray(newIng) then newIng = { newIng } end
	local recipe
	for _, i in pairs(newIng) do
		recipe = funcs.SafeAddIngredients(recipeName, i)
	end
	return recipe
end

function funcs.RemoveIngredient(recipeName, ingName, isPostProcessingMode)
	funcs._RemoveFromRecipe("ingredients", recipeName, ingName, isPostProcessingMode)
end

---@private
function funcs._RemoveFromRecipe(key, recipeName, ingName, isPostProcessingMode)
	if type(recipeName) == "table" and recipeName.name then recipeName = recipeName.name end
	MomoLib.GetRecipe(recipeName, function(proto)
		if not isPostProcessingMode then funcs._AddToRecipes(recipeName) end
		local normals = {}
		MomoLib.Foreach(proto[key], function(ing)
			normals[#normals + 1] = funcs.NormalizedIngredient(ing)
		end)

		for i, ing in pairs(normals) do
			if ing.name == ingName then
				table.remove(proto[key], i)
				return
			end
		end
	end)
end

---@return Recipe
function funcs.SetIngredients(recipeName, ingredients)
	if type(recipeName) == "table" and recipeName.name then recipeName = recipeName.name end
	local prototype = {}
	MomoLib.GetRecipe(recipeName, function(proto)
		funcs._AddToRecipes(recipeName)
		proto.ingredients = ingredients
		prototype = proto
	end)
	return prototype
end

function funcs.ReplaceProduct(recipeName, productNameToReplace, product)
	funcs.RemoveResult(recipeName, productNameToReplace)
	funcs.AddProduct(recipeName, product)
end

---@return Recipe
function funcs.SetProducts(recipeName, products, overrideMainProduct)
	if type(recipeName) == "table" and recipeName.name then recipeName = recipeName.name end
	local prototype
	MomoLib.GetRecipe(recipeName, function(proto)
		funcs._AddToRecipes(recipeName)
		proto.results = products
		if overrideMainProduct ~= nil and overrideMainProduct then
			proto.main_product = products[1].name
		end
		prototype = proto
	end)
	return prototype
end

function funcs.AddProduct(recipeName, product)
	if type(recipeName) == "table" and recipeName.name then recipeName = recipeName.name end
	MomoLib.GetRecipe(recipeName, function(proto)
		funcs._AddToRecipes(recipeName)
		if not MomoLib.IsArray(product) then
			product = { product }
		end
		proto.main_product = proto.results[1].name
		for _, res in pairs(product) do
			if res.amount == nil then res.amount = 1 end
			proto.results[#proto.results + 1] = res
		end
	end)
end

function funcs.SetProductAmount(recipeName, amount)
	if type(recipeName) == "table" and recipeName.name then recipeName = recipeName.name end
	MomoLib.GetRecipe(recipeName, function(proto)
		funcs._AddToRecipes(recipeName)
		if proto.results[1] ~= nil then
			proto.results[1].amount = amount
		end
	end)
end

function funcs.RemoveResult(recipeName, resultName, isPostProcessingMode)
	funcs._RemoveFromRecipe("results", recipeName, resultName, isPostProcessingMode)
end

function funcs._AddIngredientsIfExist(prototype, ingredient)
	local normals = {}
	MomoLib.Foreach(prototype.ingredients, function(ing)
		normals[#normals + 1] = funcs.NormalizedIngredient(ing)
	end)
	local contain = false
	MomoLib.Foreach(normals, function(ing)
		if ing.name == ingredient.name then
			ing.amount = ing.amount + ingredient.amount
			prototype.ingredients = normals
			contain = true
		end
	end)
	if contain then return end
	normals[#normals + 1] = ingredient
	prototype.ingredients = normals
end

function funcs.NormalizedIngredient(ing)
	if #ing == 2 then
		return MomoLib.MakeIngredient(ing[1], ing[2])
	end
	return ing
end

function funcs.AllFromResult(item)
	local itemName = item
	if type(item) == "table" then itemName = item.name end
	if not MomoLib.GetIngredient(itemName) then return {} end
	local recipes = {}
	MomoLib.Foreach(data.raw.recipe, function(recipe)
		if recipe.results then
			for _, result in ipairs(recipe.results) do
				if result.name == itemName then
					recipes[#recipes + 1] = recipe.name
					break
				end
			end
		end
	end)
	return recipes
end

function funcs.SetTime(recipe, _time)
	if type(recipe) == "table" and recipe.type == "recipe" then
		recipe.energy_required = _time
		return
	end

	MomoLib.GetRecipe(recipe, function(proto)
		proto.energy_required = _time
	end)
end

---@param categories (string|string[]) [1] can be false to skip setting main category 
function funcs.SetCategory(recipe, categories)
	local prototype
	if type(recipe) == "string" or (type(recipe) == "table" and recipe.type ~= "recipe") then 
		MomoLib.GetRecipe(recipe, function(p) prototype = p end)
	else
		prototype = recipe
	end

---@diagnostic disable-next-line: assign-type-mismatch
	if not MomoLib.IsArray(categories) then categories = { categories } end
	if (categories[1] ~= nil and categories[1] ~= false) then
		prototype.category = categories[1]
	end
	if #categories > 1 then
---@diagnostic disable-next-line: param-type-mismatch
		table.remove(categories, 1)
		prototype.additional_categories = categories
	end
end

---@return Recipe
function funcs.New(ingredients, results, name)
	local recipeIngredients = (MomoLib.IsArray(ingredients) and ingredients or { ingredients })
	local recipeResults = results
	if not MomoLib.IsArray(results) then
		recipeResults = { results }
	end
	local recipeName = name or MomoLib.First(recipeResults).name
	funcs._AddToRecipes(recipeName)
	local recipe = MomoLib.recipe:_New {
		type = "recipe",
		enabled = false,
		name = recipeName,
		results = recipeResults,
		ingredients = recipeIngredients,
		auto_recycle = false
	}
	if #recipeResults > 1 then
		recipe.main_product = MomoLib.First(recipeResults).name
	end
	if funcs.AlwaysProductivity then
		recipe:PRODUCTIVITY()
	end
	return recipe
end

function funcs.NewRecycle(item, results)
	if (MomoLib.GetItem(item, function(p)
			data.raw.item[item].auto_recycle = false
		end)) then
		local recipe = funcs.New({ MomoLib.MakeIngredient(item, 1) }, results, item .. "-recycle")
		recipe.category = "recycling"
		recipe.auto_recycle = true
		recipe.enabled = true
		recipe.hidden = true
		recipe.hidden_in_factoriopedia = true
		recipe.isNewRecipe = true
		return recipe
	end
	return funcs.New(MomoLib.MakeIngredient(item, 1), results, item .. "-recycle")
end

function funcs.ToRecycle(recipePrototype, hidden_in_factoriopedia)
	if type(recipePrototype) == "string" then
		if not MomoLib.GetRecipe(recipePrototype, function(p) recipePrototype = p end) then
			MomoLib.Log(recipePrototype .. " is not recipe, to recycle failed")
			return
		end
	end
	if #recipePrototype.ingredients > 1 then
		MomoLib.Log(recipePrototype.name .. " contain more than 1 ingredient, to recycle failed")
		return
	end

	if MomoLib.GetIngredient(recipePrototype.ingredients[1].name, function(ing) ing.auto_recycle = false end) then
		recipePrototype.category = "recycling"
		recipePrototype.auto_recycle = true
		recipePrototype.enabled = true
		recipePrototype.hidden = true

		if hidden_in_factoriopedia == nil then hidden_in_factoriopedia = true end
		recipePrototype.hidden_in_factoriopedia = hidden_in_factoriopedia
	end
end

function funcs.NoRecycle(recipe)
	if type(recipe) == "table" then recipe = recipe.name end
	MomoLib.GetRecipe(recipe, function(p)
		p.auto_recycle = false
		MomoLib.recipe.DeExtend(p.name .. "-recycling")
	end)
end

function funcs.Remove(name)
	MomoLib.GetRecipe(name, function(proto)
		funcs._AddToRecipes(name)
		proto.enabled = false
		proto.hidden = true
		proto.hidden_in_factoriopedia = true
		proto.order = "z"
		proto.subgroup = "other"
		MomoLib.technology.RemoveAllRecipe(name)
	end)
end

function funcs.DeExtend(name)
	if (MomoLib.GetRecipe(name)) then
		funcs.Remove(name)
		data.raw.recipe[name] = nil
		MomoLib.recipes[name] = nil
	end
end

---@private
function funcs._AddToRecipes(name)
	if not MomoLib.recipes[name] then
		MomoLib.recipes[name] = true
	end
end

function funcs.PostProcessMissingItem()
	local missingItemCount = 0
	for recipeName, _ in pairs(MomoLib.recipes) do
		local recipe = data.raw.recipe[recipeName]
		for _, ing in pairs(recipe.ingredients) do
			if ing and not MomoLib.GetIngredient(ing.name) then
				missingItemCount = missingItemCount + 1
				funcs.RemoveIngredient(recipeName, ing.name, true)
			end
		end
		for _, result in pairs(recipe.results) do
			if result and not MomoLib.GetIngredient(result.name) then
				missingItemCount = missingItemCount + 1
				funcs.RemoveResult(recipeName, result.name, true)
			end
		end
	end
	MomoLib.Log("Total missing item in recipes : " .. missingItemCount)
end

function funcs:Extend()
	data:extend { self }
end

---@return Recipe
function funcs:CATEGORY(category)
	funcs.SetCategory(self, category)
	return self
end

---@return Recipe
function funcs:ADDCATEGORY(categories)
	if self.additional_categories == nil then self.additional_categories = {} end
	if type(categories) ~= "table" then categories = { categories } end
	for _, c in pairs(categories) do
		table.insert(self.additional_categories, c)
	end
	return self
end

---@return Recipe
function funcs:TIME(energy_required)
	self.energy_required = energy_required
	return self
end

---@param icon string[]|{name:string}|{icon:string, icon_size:integer}[]
---@return Recipe
function funcs:ICON(icon)
	if MomoLib.IsArray(icon) and #icon == 2 and type(icon[2]) ~= "number" then
		self.icons = MomoLib.icon.MakeLayeredItemIcon(icon[1], icon[2])
	elseif type(icon) == "table" and icon.name and MomoLib.GetIngredient(icon.name, function(p)
			MomoLib.icon.Assign(self, MomoLib.icon.FromPrototype(p))
		end) then
		-- processed when ingredients on valid
	else
		MomoLib.icon.Assign(self, icon)
	end
	return self
end

---@return Recipe
function funcs:SUBGROUP(subgroup, order)
	self.subgroup = subgroup
	if order ~= nil then
		if order == "auto" then order = MomoLib.order.Auto(subgroup) end
		self.order = order
	end

	return self
end

---@param updateTechPrereqs? boolean -- TODO: implement this
---@return Recipe
function funcs:UNLOCK(technologies, updateTechPrereqs)
	if type(technologies) == "string" then
		MomoLib.technology.AddRecipe(technologies, self.name)
		return self
	end
	if MomoLib.IsArray(technologies) then
		for _, t in pairs(technologies) do
			MomoLib.technology.AddRecipe(t.name or t, self.name)
		end
	else
		MomoLib.technology.AddRecipe(technologies.name, self.name)
	end
	return self
end

---@return Recipe
function funcs:PRODUCTIVITY(isAllow)
	if isAllow == nil then isAllow = true end
	self.allow_productivity = isAllow
return self end

---@return Recipe
function funcs:INTERMEDIATE()
	self:PRODUCTIVITY(true)
	self.allow_decomposition = true
	self.allow_as_intermediate = true
	self.allow_intermediates = true
return self end

---@return Recipe
function funcs:SPEED(isAllow)
	if isAllow == nil then isAllow = true end
	self.allow_speed = isAllow
return self end

---@return Recipe
function funcs:CONSUMPTION(isAllow)
	if isAllow == nil then isAllow = true end
	self.allow_consumption = isAllow
return self end

---@param tbl table ingredients
---@param additive? boolean is additive to ingredient
---@return Recipe
function funcs:INGREDIENTS(tbl, additive)
	additive = additive or false 
	if additive then
		funcs.SafeAddIngredients(self.name, tbl)
	else
		self.SetIngredients(self.name, tbl)
	end
return self end

---@return Recipe
function funcs:AMOUNT(amount)
	self.SetProductAmount(self.name, amount)
return self end

---@return Recipe
function funcs:ADDPRODUCT(products)
	funcs.AddProduct(self.name, products)
return self end

---@return Recipe
function funcs:HIDDEN(player)
	self.hide_from_player_crafting = player or true 
return self end

---@return Recipe
function funcs:NORECYCLE()
	funcs.NoRecycle(self)
return self end

---@return Recipe
function funcs:RECYCLEABLE()
	self.auto_recycle = true
return self end

funcs.AlwaysProductivity = false
MomoLib.recipe = funcs
