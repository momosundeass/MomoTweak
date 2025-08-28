if not MomoLib then 
	MomoLib = {} 
else
	MomoLib.Log("MomoLib already loaded.")
	return
end

if not MomoLib.helper then require("helper") end
if not MomoLib.icon then require("icon") end
if not MomoLib.subgroup then MomoLib.subgroup = {} end
MomoLib.subgroups = data.raw["item-subgroup"]
if not MomoLib.item then require("item") end
if not MomoLib.recipe then require("recipe") end
if not MomoLib.technology then require("technology") end
if not MomoLib.machine then require("machine") end
if not MomoLib.prototype then require("prototype") end
if not MomoLib.order then require("order") end
if not MomoLib.category then require("category") end
if not MomoLib.effect then require("effect") end


MomoLib.ModName = ""
MomoLib.state = "data"

function MomoLib.GetPrototype(category, name, onValid, isLog)
	if isLog == nil then isLog = true end
	if type(name) == "table" then name = name.name or name[1] end
	if type(category) ~= "string" then 
		if isLog then MomoLib.Log("category:" .. type(category) .. " isn't string") end
		return false 
	end
	if type(name) ~= "string" then
		if isLog then MomoLib.Log("name:" .. type(name) .. " isn't string or a table with name in category " .. category) end
		return false
	end
	if data.raw[category][name] ~= nil then 
		if onValid ~= nil then
			onValid(data.raw[category][name], category) 
		end return true
	end
	if isLog then MomoLib.Log("No [" .. name .. "] with category [".. category .."]") end
	return false 
end
function MomoLib.GetPrototypes(category, names, onEachValid, isLog)
	local any = true
	for _, n in pairs(names) do
		if not MomoLib.GetPrototype(category, n, onEachValid, isLog) then any = false end
	end
	return any
end

function MomoLib.GetItem(name, onValid) return MomoLib.GetPrototype("item", name, function(p) MomoLib._OnValidWrapObject("item", onValid, p) end) end
function MomoLib.GetFluid(name, onValid) return MomoLib.GetPrototype("fluid", name, onValid) end
function MomoLib.GetIngredient(name, onValid) 
	if MomoLib.GetPrototype("item", name, onValid, false) then return true end
	if MomoLib.GetPrototype("tool", name, onValid, false) then return true end
	if MomoLib.GetPrototype("module", name, onValid, false) then return true end
	if MomoLib.GetPrototype("fluid", name, onValid, false) then return true end
	if MomoLib.GetPrototype("repair-tool", name, onValid, false) then return true end
	if MomoLib.GetPrototype("ammo", name, onValid, false) then return true end
	if MomoLib.GetPrototype("projectile", name, onValid, false) then return true end
	if MomoLib.GetPrototype("gun", name, onValid, false) then return true end
	if MomoLib.GetPrototype("rail-planner", name, onValid, false) then return true end
	return false
end

function MomoLib.GetRecipe(name, onValid) return MomoLib.GetPrototype("recipe", name, function(p) MomoLib._OnValidWrapObject("recipe", onValid, p) end) end
function MomoLib.GetTechnology(name, onValid, isLog) return MomoLib.GetPrototype("technology", name, function(p) MomoLib._OnValidWrapObject("technology", onValid, p) end, isLog) end

function MomoLib.MakeIngredient(name, amount, probFloat01) 
	local tbl = MomoLib._ConcatAmount({type="item", name=name}, amount)
	if probFloat01 then tbl["probability"] = probFloat01 end
	return tbl
end
function MomoLib.MakeFluidIngredient(name, amount) return MomoLib._ConcatAmount({type="fluid", name=name}, amount) end
function MomoLib.MakeResearchIngredient(name, amount) return {name, amount} end

function MomoLib._ConcatAmount(ingsTable, amount)
	if amount == nil then amount = 1 end
	if type(amount) == "table" then 
		ingsTable["amount_min"] = amount[1]
		ingsTable["amount_max"] = amount[2]
	return ingsTable end
	ingsTable["amount"] = amount
	return ingsTable 
end

function MomoLib._OnValidWrapObject(category, onValid, prototype)
	if onValid == nil then return end
	onValid(MomoLib[category]:FromPrototype(prototype))
end

function MomoLib.WrapObject(momoCategory, prototype)
	return MomoLib[momoCategory]:FromPrototype(prototype)
end

function MomoLib.subgroup.New(name, group, order)
	return {
		type = "item-subgroup",
		name = name,
		group = group,
		order = order
	}
end

function MomoLib.subgroup.ChangeItem(name, newSubgroup, order, alsoRecipe)
	MomoLib.GetItem(name, function(itemPro)
		itemPro.subgroup = newSubgroup
		itemPro.order = order
	end)
	
	if alsoRecipe then
		MomoLib.subgroup.ChangeRecipe(name, newSubgroup, order)
	end
end
function MomoLib.subgroup.ChangeRecipe(name, newSubgroup, order, alsoItem)
	MomoLib.GetRecipe(name, function(recipePro)
		recipePro.subgroup = newSubgroup
		recipePro.order = order
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

function MomoLib.Log(str)
	local toLog = tostring(str)
	if type(str) == "table" then
		toLog = MomoLib.TableToString(str)
	end
	log("MomoLib : " .. toLog)
	return str
end

function MomoLib.Graphics(path, size) 
	if size == nil then
		return "__" .. MomoLib.ModName .. "__/graphics/" .. path 
	end
	local icon = "__" .. MomoLib.ModName .. "__/graphics/" .. path
	return {icon, size, icon = icon, icon_size = size} 
end

function MoErr(str) if DEBUG then error(MomoLib.ToString(str)) end end
function MoLog(str) return MomoLib.Log(str) end 
