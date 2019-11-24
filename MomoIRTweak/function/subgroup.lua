momoIRTweak.subgroups = data.raw["item-subgroup"]

function momoIRTweak.GetSubgroupFromItem(itemName)
	local itemSubgroup = data.raw.item[itemName].subgroup
	return momoIRTweak.subgroups[subgroup]
end


function momoIRTweak.GetSubgroupFromRecipe(recipeName)
	local itemSubgroup = data.raw.recipe[recipeName].subgroup
	return momoIRTweak.subgroups[subgroup]
end