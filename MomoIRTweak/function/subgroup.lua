momoIRTweak.subgroups = data.raw["item-subgroup"]
momoIRTweak.subgroupOrder = 1
if not momoIRTweak.subgroup then momoIRTweak.subgroup = {} end


function momoIRTweak.NewSubgroup(name, group, order)
	data:extend({{
		type = "item-subgroup",
		name = name,
		group = group,
		order = order
	}})
end

function momoIRTweak.CreateSubgroup(name, order, group)
	data:extend({{
		type = "item-subgroup",
		name = name,
		group = group,
		order = order
	}})
end

function momoIRTweak.GetSubgroupOrder()
	local order = "a" .. (10000 + momoIRTweak.subgroupOrder)
	momoIRTweak.subgroupOrder = momoIRTweak.subgroupOrder + 1
	return order
end

function momoIRTweak.ChangeSubgroupItemAndRecipe(itemName, newSubgroup, order)
	momoIRTweak.ValidateItem(itemName, function(itemPro)
		itemPro.subgroup = newSubgroup
		itemPro.order = order
	end)
	
	momoIRTweak.recipe.ValidateRecipe(itemName, function(recipePro)
		recipePro.subgroup = newSubgroup
		recipePro.order = order
	end)
end

function momoIRTweak.GetSubgroupFromItem(itemName)
	local itemSubgroup = data.raw.item[itemName].subgroup
	return momoIRTweak.subgroups[subgroup]
end

function momoIRTweak.GetSubgroupFromRecipe(recipeName)
	local itemSubgroup = data.raw.recipe[recipeName].subgroup
	return momoIRTweak.subgroups[subgroup]
end

function momoIRTweak.subgroup.MergeSubgroup(recipes, newSubgroup)
	local order = 0
	for	_, recipe in pairs(recipes) do
		momoIRTweak.recipe.SetSubgroup(recipe, newSubgroup, order)
		order = order + 1
	end
end

function momoIRTweak.subgroup.MergeRecipeItemSubgroup(items, newSubgroup)
	local order = 0
	for	_, item in pairs(items) do
		momoIRTweak.ChangeSubgroupItemAndRecipe(item, newSubgroup, order)
		order = order + 1
	end
end

function momoIRTweak.ChangeGroup(targetGroup, newGroup)
	for named, subgroup in pairs(momoIRTweak.subgroups) do
		if subgroup.group == targetGroup then
			subgroup.group = newGroup
		end
	end
end