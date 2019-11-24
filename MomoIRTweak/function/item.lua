momoIRTweak.itemOrder = 0

if not momoIRTweak.dir then momoIRTweak.dir = {} end
if not momoIRTweak.item then momoIRTweak.item = {} end

momoIRTweak.dir.baseIconPath = ""
momoIRTweak.dir.icon = ""
momoIRTweak.dir.iconSize = 32
momoIRTweak.dir.baseIcon = "__base__/graphics/icons/"

function momoIRTweak.InitItemsLib(iconLocation, isHighRes)
	momoIRTweak.dir.baseIconPath = iconLocation 
	momoIRTweak.dir.icon = iconLocation
	if (isHighRes) then
		momoIRTweak.dir.iconSize = 64
	else
		momoIRTweak.dir.iconSize = 32
	end
	momoIRTweak.dir.icon = momoIRTweak.dir.icon .. momoIRTweak.dir.iconSize .. "/"
end

-- --------------------------------------------- Fast item
function momoIRTweak.FastItem(itemName, itemAmount)
	if type(itemName) == "table" then
		itemName = itemName.name
	end
	if itemAmount == nil then
		itemAmount = 1
	end
	return {type="item", name=itemName, amount=itemAmount}
end

function momoIRTweak.FastFluid(fluidName, fluidAmount)
	if type(fluidName) == "table" then
		fluidName = fluidName.name
	end
	if fluidAmount == nil then
		fluidAmount = 1
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

function momoIRTweak.item.CastToBasic(item) 
	local typeItem = "item"
	if item.type then typeItem = item.type end
	local name = ""
	if item.name then name = item.name else name = item[1] end
	local amount = 0
	if item.amount then amount = item.amount else amount = item[2] end

	return {type=typeItem, name=name, amount=amount}
end

function momoIRTweak.item.NewItem(itemName, itemSubgroup, maxStack)
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

function momoIRTweak.item.NewItemBaseIcon(itemName, iconDir, itemSubgroup, maxStack)
	local item = momoIRTweak.item.NewItem(itemName, itemSubgroup, maxStack)
	item.icon = iconDir .. ".png"
	item.icon_size = 32
	return item
end

function momoIRTweak.item.NewItemFixedSize(itemName, iconSize, itemSubgroup, maxStack)
	local item = momoIRTweak.item.NewItem(itemName, itemSubgroup, maxStack)
	item.icon = momoIRTweak.dir.baseIconPath .. iconSize .. "/" .. itemName .. ".png"
	item.icon_size = 32
	return item
end


function momoIRTweak.item.NewScienceMaterialsItem(itemName)
	return momoIRTweak.item.NewItem(itemName, momoIRTweak.science.materialSubgroup, 50)
end

function momoIRTweak.item.NewScienceMaterialsBaseItem(itemName, dir)
	return momoIRTweak.item.NewItemBaseIcon(itemName, dir, momoIRTweak.science.materialSubgroup, 50)
end