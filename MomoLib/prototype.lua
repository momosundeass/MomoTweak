---@class Prototype
---@field type string
---@field name string
---@field order string
---@field subgroup string
---@field group string
---@field enabled boolean
---@field hidden boolean
---@field hidden_in_factoriopedia boolean
---@field localised_name string|table
---@field icon string
---@field icon_size integer
---@field icons {icon:string, icon_size:number}[]


function MomoLib.GetPrototype(category, name, onValid, isLog)
	if isLog == nil then isLog = true end
	if type(name) == "table" then name = name.name or name[1] end
	if type(category) ~= "string" then 
		if isLog then MomoLib.Log("category:" .. type(category) .. " isn't string") end
		return false 
	end
	if type(name) ~= "string" then
		if isLog then MomoLib.Log("name:"..type(name).." isn't string or a table with name in category " .. category) end
		return false
	end
	if data.raw[category][name] ~= nil then 
		if onValid ~= nil then
			onValid(data.raw[category][name], category) 
		end return true
	end
	if isLog then 
		MomoLib.Log("No ["..name.."] with category ["..category.."]") 
	end
	return false 
end
function MomoLib.GetPrototypes(category, names, onEachValid, isLog)
	local any = true
	for _, n in pairs(names) do
		if not MomoLib.GetPrototype(category, n, onEachValid, isLog) then any = false end
	end
	return any
end

---@param name string
---@param onValid? fun(prototype:Item)
---@return boolean
function MomoLib.GetItem(name, onValid) return MomoLib.GetPrototype("item", name, function(p) MomoLib._OnValidWrapObject("item", onValid, p) end) end

---@param name string
---@param onValid? fun(prototype:Item)
---@return boolean
function MomoLib.GetFluid(name, onValid) return MomoLib.GetPrototype("fluid", name, onValid) end

---@param name string
---@param onValid? fun(prototype:Item)
---@return boolean
function MomoLib.GetIngredient(name, onValid) 
	if MomoLib.GetPrototype("item", name, onValid, false) then return true end
	if MomoLib.GetPrototype("tool", name, onValid, false) then return true end
	if MomoLib.GetPrototype("module", name, onValid, false) then return true end
	if MomoLib.GetPrototype("fluid", name, onValid, false) then return true end
	if MomoLib.GetPrototype("repair-tool", name, onValid, false) then return true end
	if MomoLib.GetPrototype("ammo", name, onValid, false) then return true end
	if MomoLib.GetPrototype("projectile", name, onValid, false) then return true end
	if MomoLib.GetPrototype("gun", name, onValid, false) then return true end
	if MomoLib.GetPrototype("capsule", name, onValid, false) then return true end
	if MomoLib.GetPrototype("rail-planner", name, onValid, false) then return true end
	MomoLib.Log("No ingredient with name "..name)
	return false
end

---@param name string
---@param onValid? fun(prototype:Recipe)
---@return boolean
function MomoLib.GetRecipe(name, onValid) return MomoLib.GetPrototype("recipe", name, function(p) MomoLib._OnValidWrapObject("recipe", onValid, p) end) end

---@param name string
---@param onValid? fun(prototype:Technology)
---@return boolean
function MomoLib.GetTechnology(name, onValid, isLog) return MomoLib.GetPrototype("technology", name, function(p) MomoLib._OnValidWrapObject("technology", onValid, p) end, isLog) end

---@private
function MomoLib._OnValidWrapObject(category, onValid, prototype)
	if onValid == nil then return end
	onValid(MomoLib[category]:FromPrototype(prototype))
end

---@param momoCategory string
---@param prototypeName string
---@return Item|Technology|Recipe|Prototype
function MomoLib.WrapObject(momoCategory, prototypeName)
	return MomoLib[momoCategory]:FromPrototype(prototypeName)
end

---@return nil|table
function MomoLib.Raw(category, prototypeName)
	local cat = data.raw[category]
	if cat then
		return cat[prototypeName]
	end
	return nil
end
