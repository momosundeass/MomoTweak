---@class Item : Prototype
---@field auto_recycle boolean
---@field place_result string
local funcs = {}
funcs.isNew = true
funcs.isEmpty = true

---@return Item
function funcs:_New(tbl)
   tbl = tbl or {}
   setmetatable(tbl, self)
   self.__index = self
   tbl.isEmpty = false
   return tbl
end
---@return Item
function funcs:FromPrototype(tblorname)
	if type(tblorname) == "string" then MomoLib.GetIngredient(tblorname, function (p) tblorname = p end) end
	local obj = funcs:_New(tblorname)
	obj.isNew = false
	obj.isEmpty = false
	return obj
end

---@param itemType? string default at "item"
---@param color? table required when type is "fluid"
---@return Item
function funcs.Create(name, icon, stackSize, itemType, color)
	itemType = itemType or "item"
	local prototype = {
		type = itemType,
		name = name,
		stack_size = stackSize or 100,
	}
	if itemType == "fluid" then
		if color == nil then error("new fluid requires color") end
		prototype.base_color = color
		prototype.flow_color = color
		prototype.default_temperature = 25
		
	end
	MomoLib.icon.Assign(prototype, icon)
	local item = funcs:_New(prototype)
	item:Extend()
	return item
end

function funcs.NoRecycle(name)
	if type(name) == "table" then name = name.name end
	MomoLib.GetItem(name, function(p)  
		p.auto_recycle = false
		MomoLib.recipe.DeExtend(p.name .. "-recycling")
	end)
end

function funcs.Disable(name)
	funcs.DisableRecipe(name)
	MomoLib.GetItem(name, function(item)
		item.enabled = false
		item.hidden = true
		item.hidden_in_factoriopedia = true
	end)
end

function funcs.DisableRecipe(name)
	MomoLib.GetItem(name, function(item)
		item.order = "z"
		item.subgroup = "other"
		for _, recipe in pairs(MomoLib.recipe.AllFromResult(item)) do
		 	MomoLib.recipe.Remove(recipe)
		end

	end)
end

function funcs.RocketProduct(name, results)
	MomoLib.GetIngredient(name.name or name, function (p) 
		p.rocket_launch_products = results
		p.send_to_orbit_mode = "automated"
	end)
end

---@param effs table use 'MomoLib.NewEffect()' or see 'MomoLib.effect.lua'
---@return Item
function funcs:MODULEEFFECT(effs)
	if self.type ~= "module" then error("change effect required 'module' for : " .. self.name) end
	self.effect = effs
return self end

---@return Item
function funcs:NORECYCLE()
	funcs.NoRecycle(self.name)
return self end
---@return Item
function funcs:SUBGROUP(subgroup, order)
	self.subgroup = subgroup
	if order ~= nil then self.order = order == "auto" and MomoLib.order.Auto(subgroup) or order end
	if self.place_result ~= nil then
		local entity = MomoLib.entity.GetPrototype(self.place_result)
		if entity then 
			entity.subgroup = subgroup
			entity.order = self.order
		end
	end
return self end

---@return Item
function funcs:SUPERHOT()
	self.default_temperature = 1000000
    self.max_temperature = 10000000
    self.heat_capacity = "25J"
return self end
---@return Item
function funcs:ROCKETPRODUCT(results)
	self.rocket_launch_products = results
	self.send_to_orbit_mode = "automated"
return self end

---@return Item
function funcs:FUEL(energy, result, category)
	self.fuel_value = energy
	self.burnt_result = result.name or result
	if category then
		self.fuel_category = category
	end
return self end

function funcs:Extend()
	data:extend{self}
end

MomoLib.item = funcs