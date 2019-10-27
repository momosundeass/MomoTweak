momoIRTweak.itemOrder = 0

function momoIRTweak.FastItem(itemName, itemAmount)
	return {type="item", name=itemName, amount=itemAmount}
end

function momoIRTweak.FastFluid(fluidName, fluidAmount)
	return {type="fluid", name=fluidName, amount=fluidAmount}
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
		order = "item[" .. momoIRTweak.itemOrder .. "]",
		stack_size = maxStack
	}})
	momoIRTweak.itemOrder = momoIRTweak.itemOrder + 1
	return data.raw.item[itemName]
end

local ICON = "__MomoIRTweak__/graphics/icons/"
function momoIRTweak.NewScienceMaterialsItem(itemName)
	return momoIRTweak.NewItem(itemName, momoIRTweak.science.materialSubgroup, 50)
end