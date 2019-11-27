momoIRTweak.subgroups = data.raw["item-subgroup"]
momoIRTweak.subgroupOrder = 1


function momoIRTweak.NewSubgroup(name, group, order)
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

function momoIRTweak.GetSubgroupFromItem(itemName)
	local itemSubgroup = data.raw.item[itemName].subgroup
	return momoIRTweak.subgroups[subgroup]
end

function momoIRTweak.GetSubgroupFromRecipe(recipeName)
	local itemSubgroup = data.raw.recipe[recipeName].subgroup
	return momoIRTweak.subgroups[subgroup]
end