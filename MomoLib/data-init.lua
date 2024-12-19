if not MomoLib then 
	MomoLib = {} 
else return end

if not MomoLib.helper then require("helper") end
if not MomoLib.subgroup then MomoLib.subgroup = {} end
MomoLib.subgroups = data.raw["item-subgroup"]
if not MomoLib.recipe then require("recipe") end
if not MomoLib.technology then require("technology") end


function MomoLib.prototype(category, name, onValid)
	if data.raw[category][name] then 
		onValid(data.raw[category][name]) 
		return true
	end
	return false 
end

function MomoLib.GetItem(name, onValid) return MomoLib.prototype("item", name, onValid) end
function MomoLib.GetRecipe(name, onValid) return MomoLib.prototype("recipe", name, onValid) end
function MomoLib.GetTechnology(name, onValid) return MomoLib.prototype("technology", name, onValid) end

function MomoLib.MakeIngredient(name, amount) 
	if amount == nil then amount = 1 end
	return {type="item", name=name, amount=amount}
end
function MomoLib.MakeFluidIngredient(name, amount) 
	if amount == nil then amount = 1 end
	return {type="fluid", name=name, amount=amount}
end

function MomoLib.subgroup.ChangeItem(name, newSubgroup, order)
	MomoLib.GetItem(name, function(itemPro)
		itemPro.subgroup = newSubgroup
		itemPro.order = order
	end)
end
function MomoLib.subgroup.ChangeRecipe(name, newSubgroup, order)
	MomoLib.GetRecipe(name, function(recipePro)
		recipePro.subgroup = newSubgroup
		recipePro.order = order
	end)
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
	log("MomoLib : " .. str)
end
