momoIRTweak.itemOrder = 0

momoIRTweak.dir.icon = "__MomoIRTweak__/graphics/icons/"
momoIRTweak.dir.iconSize = 32

momoIRTweak.dir.baseIcon = "__base__/graphics/icons/"

if (settings.startup["momo-useHighResolution"].value) then
	momoIRTweak.dir.iconSize = 64
else
	momoIRTweak.dir.iconSize = 32
end

momoIRTweak.dir.icon = momoIRTweak.dir.icon .. momoIRTweak.dir.iconSize .. "/"

-- --------------------------------------------- Fast item
function momoIRTweak.FastItem(itemName, itemAmount)
	if type(itemName) == "table" then
		itemName = itemName.name
	end
	return {type="item", name=itemName, amount=itemAmount}
end

function momoIRTweak.FastFluid(fluidName, fluidAmount)
	if type(fluidName) == "table" then
		fluidName = fluidName.name
	end
	return {type="fluid", name=fluidName, amount=fluidAmount}
end

function momoIRTweak.FastSciencePack(itemName, itemAmount)
	if type(itemName) == "table" then
		itemName = itemName.name
	end
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

function momoIRTweak.NewItemBaseIcon(itemName, iconDir, itemSubgroup, maxStack)
	local item = momoIRTweak.NewItem(itemName, itemSubgroup, maxStack)
	item.icon = iconDir .. ".png"
	item.icon_size = 32
	return item
end


function momoIRTweak.NewScienceMaterialsItem(itemName)
	return momoIRTweak.NewItem(itemName, momoIRTweak.science.materialSubgroup, 50)
end