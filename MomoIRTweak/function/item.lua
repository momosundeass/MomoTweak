momoIRTweak.itemOrder = 0

momoIRTweak.dir.icon = "__MomoIRTweak__/graphics/icons/"
momoIRTweak.dir.iconSize = 32

if (settings.startup["momo-useHighResolution"].value) then
	momoIRTweak.dir.iconSize = 64
else
	momoIRTweak.dir.iconSize = 32
end

momoIRTweak.dir.icon = momoIRTweak.dir.icon .. momoIRTweak.dir.iconSize .. "/"

-- --------------------------------------------- Fast item
function momoIRTweak.FastItem(itemName, itemAmount)
	return {type="item", name=itemName, amount=itemAmount}
end

function momoIRTweak.FastFluid(fluidName, fluidAmount)
	return {type="fluid", name=fluidName, amount=fluidAmount}
end

function momoIRTweak.FastSciencePack(itemName, itemAmount)
	return {itemName, itemAmount}
end
-- --------------------------------------------- Fast item

function momoIRTweak.NewItem(itemName, itemSubgroup, maxStack)
	data:extend({{
		type = "item",
		name = itemName,
		icon = momoIRTweak.dir.icon .. itemName .. ".png",
        icon_size = momoIRTweak.dir.iconSize,
		subgroup = itemSubgroup,
		order = "item[" .. momoIRTweak.itemOrder .. "]",
		stack_size = maxStack
	}})
	momoIRTweak.itemOrder = momoIRTweak.itemOrder + 1
	return data.raw.item[itemName]
end

function momoIRTweak.NewScienceMaterialsItem(itemName)
	return momoIRTweak.NewItem(itemName, momoIRTweak.science.materialSubgroup, 50)
end