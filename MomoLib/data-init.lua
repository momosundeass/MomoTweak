DEBUG = false
if not MomoLib then 
	MomoLib = {} 
else
	MomoLib.Log("MomoLib already loaded.")
	return
end

if not MomoLib.helper then require("helper") end
if not MomoLib.prototype then require("prototype") end
if not MomoLib.icon then require("icon") end
if not MomoLib.subgroup then MomoLib.subgroup = {} end
MomoLib.subgroups = data.raw["item-subgroup"]
if not MomoLib.item then require("item") end
if not MomoLib.recipe then require("recipe") end
if not MomoLib.technology then require("technology") end
if not MomoLib.entity then require("entity") end
if not MomoLib.machine then require("machine") end
if not MomoLib.order then require("order") end
if not MomoLib.category then require("category") end
if not MomoLib.effect then require("effect") end

MomoLib.ModName = ""
MomoLib.state = "data"

function MomoLib.MakeIngredient(name, amount, probFloat01) 
	local tbl = MomoLib._ConcatAmount({type="item", name=name.name or name}, amount)
	if probFloat01 then tbl["probability"] = probFloat01 end
	return tbl
end
function MomoLib.MakeFluidIngredient(name, amount) return MomoLib._ConcatAmount({type="fluid", name=name.name or name}, amount) end
function MomoLib.MakeResearchIngredient(name, amount) return {name.name or name, amount or 1} end

---@private
function MomoLib._ConcatAmount(ingsTable, amount)
	if amount == nil then amount = 1 end
	if type(amount) == "table" then 
		ingsTable["amount_min"] = amount[1]
		ingsTable["amount_max"] = amount[2]
	return ingsTable end
	ingsTable["amount"] = amount
	return ingsTable 
end

---@param extend? boolean
function MomoLib.subgroup.New(name, group, order, extend)
	local obj = {
		type = "item-subgroup",
		name = name,
		group = group,
		order = order
	}
	if extend or false then data:extend{obj} end
	return obj
end

function MomoLib.subgroup.ChangeItem(name, newSubgroup, order, alsoRecipe)
	MomoLib.GetIngredient(name, function(item)
		MomoLib.item.SUBGROUP(item, newSubgroup, order)
	end)
	if alsoRecipe then
		MomoLib.subgroup.ChangeRecipe(name, newSubgroup, order)
	end
end
function MomoLib.subgroup.ChangeRecipe(name, newSubgroup, order, alsoItem)
	MomoLib.GetRecipe(name, function(recipePro)
		recipePro.subgroup = newSubgroup
		recipePro.order = order == "auto" and MomoLib.order.Auto(newSubgroup) or order
	end)
	
	if alsoItem then
		MomoLib.subgroup.ChangeItem(name, newSubgroup, order)
	end
end

function MomoLib.ChangeGroup(targetGroup, newGroup, prefix)
	for named, subgroup in pairs(MomoLib.subgroups) do
		if subgroup.group == targetGroup then
			subgroup.group = newGroup
			if (prefix ~= nil) then
				subgroup.order = prefix .. subgroup.order
			end
		end
	end
end

---@param subgroup string|{name:string, [any]:any}
---@param newGroup string
---@param order? string
function MomoLib.SetGroup(subgroup, newGroup, order)
	local prototype
	if type(subgroup) == "string" then
		local name = tostring(subgroup)
		prototype = data.raw["item-subgroup"][name]
	else
		prototype = subgroup
	end
	if prototype ~= nil then 
		prototype.group = newGroup
		if order == "auto" then
			prototype.order = MomoLib.order.Auto(newGroup)
		else
			prototype.order = order or prototype.order
		end
	else
		MoLog("[SetGroup] No subgroup with name " + tostring(subgroup))
	end
end

---@param size? integer
---@return {[1]:string, [2]:number, icon:string, icon_size:integer}|string icon 
function MomoLib.Graphics(path, size) 
	if size == nil then
		return "__" .. MomoLib.ModName .. "__/graphics/" .. path 
	end
	local icon = "__" .. MomoLib.ModName .. "__/graphics/" .. path
	return {icon, size, icon = icon, icon_size = size} 
end

function MomoLib.Log(str)
	local toLog = tostring(str)
	if type(str) == "table" then
		toLog = MomoLib.TableToString(str)
	end
	log("MomoLib : " .. toLog)
	return str
end

function MoErr(str) if DEBUG then error(MomoLib.ToString(str)) end end
function MoLog(str) return MomoLib.Log(str) end 
