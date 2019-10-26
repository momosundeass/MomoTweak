function momoIRTweak.FastItem(itemName, itemAmount)
	return {type="item", name=itemName, amount=itemAmount}
end

function momoIRTweak.FastSciencePack(itemName, itemAmount)
	return {itemName, itemAmount}
end

local ICON = "__MomoIRTweak__/graphics/icons/"
function momoIRTweak.NewItem(itemName, itemSubgroup, maxStack)
	data:extend({{
		type = "item",
		name = itemName,
		icon = ICON .. itemName .. ".png",
        icon_size = 32,
		subgroup = itemSubgroup,
		order = "item[" .. itemName .. "]",
		stack_size = maxStack
	}})
end

local ICON = "__MomoIRTweak__/graphics/icons/"
function momoIRTweak.NewScienceMaterialsItem(itemName)
	data:extend({{
		type = "item",
		name = itemName,
		icon = ICON .. itemName .. ".png",
        icon_size = 32,
		subgroup = itemSubgroup,
		order = "item[" .. itemName .. "]",
		stack_size = 50
	}})
end