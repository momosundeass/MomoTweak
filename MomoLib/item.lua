-- item
local funcs = {}
funcs.isNew = true
funcs.isEmpty = true

function funcs:_New(tab)
   tab = tab or {}
   setmetatable(tab, self)
   self.__index = self
   tab.isEmpty = false
   return tab
end
function funcs:FromPrototype(tab)
	local obj = funcs:_New(tab)
	obj.isNew = false
	obj.isEmpty = false
	return obj
end

function funcs.Create(name, icon, stackSize, itemType)
	itemType = itemType or "item"
	local prototype = {
		type = itemType,
		name = name,
		stack_size = stackSize or 100,
	}
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
		for _, recipe in pairs(MomoLib.recipe.AllFromResult(item)) do
		 	MomoLib.recipe.Remove(recipe)
		end

	end)
end

function funcs:NORECYCLE()
	funcs.NoRecycle(self.name)
	return self
end

function funcs:SUBGROUP(subgroup, order)
	self.subgroup = subgroup
	if order ~= nil then self.order = order end
	return self
end

function funcs:Extend()
	data:extend{self}
end
MomoLib.item = funcs