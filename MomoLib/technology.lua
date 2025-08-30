local funcs = {}

funcs.isNewTechnology = true
function funcs:_New(tbl)
	tbl = tbl or {}
	setmetatable(tbl, self)
	self.__index = self
	return tbl
end

function funcs:FromPrototype(tbl)
	local obj = funcs:_New(tbl)
	obj.isNewTechnology = false
	return obj
end

function funcs.AddRecipe(name, recipeName)
	MomoLib.GetTechnology(name, function(proto)
		if proto.effects == nil then
			proto.effects = {}
		end

		proto.effects[#proto.effects + 1] = { type = "unlock-recipe", recipe = recipeName }
	end)
end

function funcs.RemoveRecipe(name, recipeName)
	MomoLib.GetTechnology(name, function(proto)
		if proto.effects == nil then return end

		for i, eff in pairs(proto.effects) do
			if eff.type == "unlock-recipe" and eff.recipe == recipeName then
				table.remove(proto.effects, i)
				return
			end
		end
	end)
end

function funcs.RemoveAllRecipe(recipeName)
	for _, t in pairs(data.raw.technology) do
		if t.effects == nil then goto continue end
		for i, eff in pairs(t.effects) do
			if eff.type == "unlock-recipe" and eff.recipe == recipeName then
				table.remove(t.effects, i)
				return
			end
		end
		::continue::
	end
end


---@return table prototype "technology prototype"
function funcs.FindUnlock(itemName)
	for _, r in pairs(MomoLib.recipe.AllFromResult(itemName)) do
		for _, t in pairs(data.raw.technology) do
			if t.effects == nil then goto next_tech end
			for i, eff in pairs(t.effects) do
				if eff.type == "unlock-recipe" and eff.recipe == r then
					return funcs:FromPrototype(t)
				end
			end
			::next_tech::
		end
	end
	return nil
end

function funcs.AddRequired(name, required)
	MomoLib.GetTechnology(name, function(proto)
		for _, t in pairs(type(required) == "table" and required or { required }) do
			if MomoLib.GetTechnology(t, nil) then
				table.insert(proto.prerequisites, t)
			end
		end
	end)
end

function funcs.SetRequired(name, requires)
	MomoLib.GetTechnology(name, function(proto)
		requires = MomoLib.ToTable(requires)
		local newReqs = {}
		for _, t in pairs(requires) do
			if MomoLib.GetTechnology(t, nil) then
				table.insert(newReqs, t)
			end
		end
		proto.prerequisites = newReqs
	end)
end

function funcs.SetIngredients(name, ingredients)
    MomoLib.GetTechnology(name, function(p) p:INGREDIENTS(ingredients) end)
end

function funcs.GetIngredient(tech, ingredient)
	local ingredientName = ingredient
	if type(ingredient) == "table" then
		ingredientName = ingredient.name or ingredient[1]
	end
	local prototype = tech
	if type(tech) == "string" then
		MomoLib.GetTechnology(tech, function(proto) prototype = proto end)
	end

	if prototype.unit and prototype.unit.ingredients then
		for _, ing in pairs(prototype.unit.ingredients) do
			if ing[1] == ingredientName then
				return ing
			end
		end
	end
	return nil
end

function funcs.RemoveIngredient(tech, ingredientName)
	if type(ingredientName) == "table" then ingredientName = ingredientName.name or ingredientName[1] end
	local prototype = tech
	if type(tech) == "string" then MomoLib.GetTechnology(tech, function(proto) prototype = proto end) end
	if prototype.unit == nil or prototype.unit.ingredients == nil then return end
 	for i, ing in ipairs(prototype.unit.ingredients) do
		if ing[1] == ingredientName then
			table.remove(prototype.unit.ingredients, i)
			break
		end
	end
end

function funcs.MakeProductivity(fromTech, recipes, sciencePackOrder, extend)
	if type(fromTech) == "string" then MomoLib.GetTechnology(fromTech, function(p) fromTech = p end) end
	if type(recipes) ~= "table" then recipes = { recipes } end
	local itemName
	for _, rn in pairs(recipes) do
		if MomoLib.GetRecipe(rn, function (p) itemName = p.main_product or p.results[1].name or p.results[1][1] end) then
	    break end
	end
	if itemName == nil then error("No result with from recipes in trying to create productivity tech from tech:" .. fromTech.name) end
	local item
	MomoLib.GetIngredient(itemName, function(p) item = p end)
	local techs = {}
	local startSciencePackIndex = nil
	for i, sp in MomoLib.ReversePairs(sciencePackOrder) do
		if funcs.GetIngredient(fromTech, sp) then
			startSciencePackIndex = i
			goto found
		end
	end
	::found::
	if startSciencePackIndex == nil then startSciencePackIndex = 1 end
	local preReq = fromTech
	local nameSurfix = "-productivity"
	local level = 1
	for i = startSciencePackIndex, #sciencePackOrder + extend, 1 do
		local newName = item.name .. nameSurfix .. "-" .. tostring(level)
		if MomoLib.GetTechnology(newName, function()end, false) then
			nameSurfix = "-t2-productivity"
		    newName = item.name .. nameSurfix .. "-" .. tostring(level)
		end
		local tech = funcs.Clone(fromTech.name, newName)
		tech:EFFECTS{}
		for _, r in pairs(recipes) do
			tech:PRODUCTIVITY(r)
		end
		tech:INGREDIENTS{}
		for j = 1, i, 1  do
			if (j <= #sciencePackOrder) then
				tech:ADDINGREDIENT(MomoLib.MakeResearchIngredient(sciencePackOrder[j], 1)) 
			end
		end
		tech.unit.count = fromTech.unit.count * i
		if (i > #sciencePackOrder) then 
			local dif = (i - #sciencePackOrder) + 1
			tech.unit.count = tech.unit.count * i * (dif^4.8)
		end
		tech:PRE{preReq.name}
		tech.upgrade = true
		tech.localised_name = {"", {item.type .. "-name." .. item.name}, " : " , {"description.technology" .. nameSurfix}}
		MomoLib.icon.Assign(tech, { MomoLib.icon.FromIngredientWithSize(item), MomoLib.icon.ProductivityIcon() }) 
		tech.order = (fromTech.order or "productivity-") .. "z" .. i
		table.insert(techs, tech)
		preReq = tech
		level = level + 1
	end
	data:extend(techs)
	return techs
end

function funcs.Clone(sourceName, newName)
	local newTech = funcs:_New(MomoLib.ClonePrototype(data.raw.technology[sourceName], newName, function(p) end))
	return newTech
end

function funcs:PRODUCTIVITY(recipes, amount)
	if type(recipes) ~= "table" then recipes = { recipes } end
	if amount == nil then amount = 0.10 end
	if self.effects == nil then self.effects = {} end
	for _, recipe in pairs(recipes) do
		self.effects[#self.effects + 1] = { type = "change-recipe-productivity", use_icon_overlay_constant = true, recipe = recipe, change = amount }
	end
end

function funcs:TIME(timePerCount)
	if self.unit == nil then self.unit = {} end
	self.unit.time = timePerCount
	return self
end

function funcs:COUNT(count)
	if self.unit == nil then self.unit = {} end
	self.unit.count = count
	return self
end

function funcs:INGREDIENTS(ings)
	if self.unit == nil then self.unit = {} end
	self.unit.ingredients = ings
	return self
end

function funcs:ADDINGREDIENT(ing)
	if self.unit == nil then self.unit = {} end
	table.insert(self.unit.ingredients, ing)
	return self
end

function funcs:EFFECTS(effects)
	if effects == nil then effects = {} end
	self.effects = effects
	return self
end

function funcs:RECIPE(recipes)
	if self.effects == nil then self.effects = {} end
	for _, recipe in pairs(recipes) do
		self.effects[#self.effects + 1] = { type = "unlock-recipe", recipe = recipe }
	end
	return self
end

function funcs:PRE(pres)
	self.prerequisites = pres
	return self
end

function funcs:Extend()
	data:extend { self }
end

MomoLib.technology = funcs
