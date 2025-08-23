local funcs = {}

funcs.isNewTechnology = true
function funcs:_New(tab)
   tab = tab or {}
   setmetatable(tab, self)
   self.__index = self
   return tab
end
function funcs:FromPrototype(tab)
	local obj = funcs:_New(tab)
	obj.isNewTechnology = false
	return obj
end

function funcs.AddRecipe(name, recipeName)
	MomoLib.GetTechnology(name, function(proto)
		if proto.effects == nil then
			proto.effects = {}
		end
		
		proto.effects[#proto.effects + 1] = {type = "unlock-recipe", recipe = recipeName}
	end)
end

function funcs.RemoveRecipe(name, recipeName)
	MomoLib.GetTechnology(name, function(proto)
		if proto.effects == nil then return end
		
		for i, eff in pairs(proto.effects) do
			if eff.type == "unlock-recipe" and eff.recipe == recipeName then
				table.remove(proto.effects, i)
			return end
		end
	end)
end

function funcs.RemoveAllRecipe(recipeName)
	for _, t in pairs(data.raw.technology) do
		if t.effects == nil then goto continue end
		for i, eff in pairs(t.effects) do
			if eff.type == "unlock-recipe" and eff.recipe == recipeName then
				table.remove(t.effects, i)
			return end
		end
		::continue::
	end	
end

function funcs.AddRequired(name, required)
	MomoLib.GetTechnology(name, function(proto)
		if MomoLib.GetTechnology(required, nil) then
			table.insert(proto.prerequisites, required)
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


function funcs.Clone(name, newName)
	local newTech = funcs:_New(MomoLib.ClonePrototype(data.raw.technology[name], newName, function(p) end))
	return newTech
end

function funcs:TIME(timePerCount)
	self.unit.time = timePerCount
return self end

function funcs:COUNT(count)
	self.unit.count = count
return self end

function funcs:INGREDIENTS(ings)
	self.unit.ingredients = ings
return self end

function funcs:EFFECTS(effects)
	if effects == nil then effects = {} end
	self.effects = effects
return self end

function funcs:PRE(pres)
	self.prerequisites = pres
return self end

function funcs:Extend()
	data:extend{self}
end

MomoLib.technology = funcs