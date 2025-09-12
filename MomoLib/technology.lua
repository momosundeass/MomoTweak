---@class Technology : Prototype
---@field upgrade boolean
---@field prerequisites string[]|nil
---@field effects table[]|nil
local funcs = {}

funcs.isNewTechnology = true

---@return Technology
function funcs:_New(tbl)
	tbl = tbl or {}
	setmetatable(tbl, self)
	self.__index = self
	return tbl
end

---@return Technology
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

---@return Technology|nil prototype "technology prototype"
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

---@param requires string|string[]
function funcs.AddRequired(name, requires, ...)
	MomoLib.GetTechnology(name, function(prototype)
		---@type string[]
		local tbl = type(requires) == "table" and requires or { requires }
		for _, req in pairs(tbl) do
			if MomoLib.GetTechnology(req, nil) and not funcs.AlreadyRequired(prototype, req) then
				table.insert(prototype.prerequisites, req)
			end
		end
	end)
end

---@return boolean
function funcs.AlreadyRequired(tech, pre)
	if type(tech) == "string" then
		if not MomoLib.GetTechnology(tech, function (p) tech = p end) then return false end
	end
	if tech.prerequisites ~= nil then
		for _, p in pairs(tech.prerequisites) do
			if p == pre then return true end
		end
	end
	return false
end

function funcs.SetRequired(name, requires, ...)
	MomoLib.GetTechnology(name, function(proto)
		proto:PRE(requires)
	end)
end

---@param requires string|string[]
function funcs.RemoveRequired(name, requires, ...)
		MomoLib.GetTechnology(name, function(prototype)
			if prototype.prerequisites == nil then return end
			---@type string[]
			local tbl = type(requires) == "table" and requires or { requires }
			MomoLib.RemoveObj(prototype.prerequisites, tbl)
	end)
end

function funcs.SetIngredients(name, ingredients)
    MomoLib.GetTechnology(name, function(p) p:INGREDIENTS(ingredients) end)
end

function funcs.AddIngredient(name, ing)
	MomoLib.GetTechnology(name, function(p) p:ADDINGREDIENT(ing) end)
end

---@return table<string, number>|nil
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

---@param sciencePackOrder string[] array of science pack name
---@param useFromTechIcon? boolean
---@return Technology[] ordered array of technologies
function funcs.MakeProductivity(fromTech, recipes, sciencePackOrder, additionLevel, useFromTechIcon)
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
	for i = startSciencePackIndex, #sciencePackOrder + additionLevel, 1 do
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
			tech.unit.count = tech.unit.count * i * (dif^MomoLib.HardInfiniteTechnologyPower)
		end
		tech:PRE{preReq.name}
		tech.upgrade = true
		tech.localised_name = {"", {item.type .. "-name." .. item.name}, " : " , {"description.technology" .. nameSurfix}}
		if useFromTechIcon then
			MomoLib.icon.Assign(tech, MomoLib.icon.GetIcons(fromTech, {MomoLib.icon.ProductivityIcon()})) 
		else
			MomoLib.icon.Assign(tech, { MomoLib.icon.FromIngredientWithSize(item), MomoLib.icon.ProductivityIcon() }) 
		end
		tech.order = (fromTech.order or "productivity-") .. "z" .. i
		table.insert(techs, tech)
		preReq = tech
		level = level + 1
	end
	data:extend(techs)
	return techs
end

---@param prototype table table of technology prototype
---@param mathExpression string see https://lua-api.factorio.com/latest/types/MathExpression.html
function funcs.Infinity(prototype, mathExpression)
	prototype.max_level = "infinite"
	prototype.unit = prototype.unit or {}
	prototype.unit.count_formula = mathExpression
	prototype.unit.count = nil
end

---@param sourceName string
---@param newName string
---@return Technology newTechnology new technology prototype without extend
function funcs.Clone(sourceName, newName)
	local tech = data.raw.technology[sourceName]  
	if not tech then error("No source technology with name "..sourceName) end
	local newTech = funcs:_New(MomoLib.ClonePrototype(tech, newName, function(p) end))
	return newTech
end

---@return Technology
function funcs:PRODUCTIVITY(recipes, amount)
	if type(recipes) ~= "table" then recipes = { recipes } end
	if amount == nil then amount = 0.10 end
	if self.effects == nil then self.effects = {} end
	for _, recipe in pairs(recipes) do
		self.effects[#self.effects + 1] = { type = "change-recipe-productivity", use_icon_overlay_constant = true, recipe = recipe, change = amount }
	end
return self end

---@return Technology
function funcs:TIME(timePerCount)
	if self.unit == nil then self.unit = {} end
	self.unit.time = timePerCount
return self end

---@return Technology
function funcs:COUNT(count)
	if self.unit == nil then self.unit = {} end
	self.unit.count = count
return self end

---@return Technology
function funcs:INGREDIENTS(ings)
	if self.unit == nil then self.unit = {} end
	if type(ings[1]) == "string" then 
		local casted = {}
		for _, ing in ipairs(ings) do
			casted[#casted+1] = MomoLib.MakeResearchIngredient(ing)
		end
		ings = casted
	end
	self.unit.ingredients = ings
return self end

---@return Technology
function funcs:ADDINGREDIENT(ing)
	if self.unit == nil then self.unit = {} end
	table.insert(self.unit.ingredients, ing)
return self end

---@param effects? table an array of Modifier see https://lua-api.factorio.com/latest/types/Modifier.html
---@return Technology
function funcs:EFFECTS(effects)
	if effects == nil then effects = {} end
	if not MomoLib.IsArray(effects) and effects.type then effects = {effects} end 
	self.effects = effects
return self end

---@function only working with Modifier with "modifier" value
---@return Technology
function funcs:EFFECTAMOUNT(amount)
	if not self.effects then return self end 
	for _, e in pairs(self.effects) do
		if e.modifier then
			e.modifier = amount
		end
	end
return self end

---@return Technology
function funcs:RECIPE(recipes)
	if self.effects == nil then self.effects = {} end
	for _, recipe in pairs(recipes) do
		self.effects[#self.effects + 1] = { type = "unlock-recipe", recipe = recipe }
	end
return self end

---@return Technology
function funcs:PRE(requires)
	requires = MomoLib.ToTable(requires)
	local newReqs = {}
	for _, t in pairs(requires) do
		if MomoLib.GetTechnology(t, nil) then
			table.insert(newReqs, t)
		end
	end
	self.prerequisites = newReqs
return self end

---@return Technology
function funcs:ICON(icon)
	MomoLib.icon.Assign(self, icon)
return self end

function funcs:Extend()
	data:extend { self }
end

MomoLib.HardInfiniteTechnologyPower = 4.8
MomoLib.InfiniteTechnologyPower = 2.2
MomoLib.technology = funcs
