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

function momoIRTweak.GetItemName(tableOrName)
	if (type(tableOrName) == "table") then
		-- Table case
		if (tableOrName.type == "item" or tableOrName.type == "fluid") then
			return tableOrName.name
		elseif (tableOrName[1] and tableOrName[2]) then
			-- case if is {itemname, amount}
			if (type(tableOrName[1]) == "string" and type(tableOrName[2] == "number")) then
				return tableOrName[1]
			else
				return false
			end
		end
		
		-- END: table case
	elseif (type(tableOrName) == "string") then
		return tableOrName
	end
	return false
end

-- --------------------------------------------- Fast item
function momoIRTweak.FastItem(itemName, itemAmount)
	local item = momoIRTweak.GetItemName(itemName)
	if itemAmount == nil then itemAmount = 1 end
	return {type="item", name=item, amount=itemAmount}
end

function momoIRTweak.FastFluid(fluidName, fluidAmount)
	local item = momoIRTweak.GetItemName(fluidName)
	if fluidAmount == nil then fluidAmount = 1 end
	return {type="fluid", name=item, amount=fluidAmount}
end

function momoIRTweak.FastSciencePack(itemName, itemAmount)
	if type(itemName) == "table" then
		itemName = itemName.name
	end
	return {itemName, itemAmount}
end
-- --------------------------------------------- Fast item

function momoIRTweak.ValidateItem(itemName, callback)
	if (data.raw.item[itemName]) then
		callback(data.raw.item[itemName])
	else
		momoIRTweak.Log("no item in validate function with name ".. itemName)
	end
end

function momoIRTweak.ValidateFluid(fluidName, callback)
	if (data.raw.fluid[fluidName]) then
		callback(data.raw.fluid[fluidName])
	else
		momoIRTweak.Log("no item in validate function with name ".. fluidName)
	end
end

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

function momoIRTweak.item.NewItemBaseIconMipmaped(itemName, iconDir, itemSubgroup, maxStack)
	local item = momoIRTweak.item.NewItem(itemName, itemSubgroup, maxStack)
	item.icon = iconDir .. ".png"
	item.icon_size = 64
	item.icon_mipmaps = 4
	return item
end

function momoIRTweak.item.NewItemFixedSize(itemName, iconSize, itemSubgroup, maxStack)
	local item = momoIRTweak.item.NewItem(itemName, itemSubgroup, maxStack)
	item.icon = momoIRTweak.dir.baseIconPath .. iconSize .. "/" .. itemName .. ".png"
	item.icon_size = iconSize
	return item
end

function momoIRTweak.item.ValidateItem(itemName, callback)
	local item = data.raw.item[itemName]
	if item then
		callback(item)
	else
		momoIRTweak.Log("no item with name : " ..  itemName)
	end
end

function momoIRTweak.item.SetSubgroup(itemName, newSubgroup, order)
	momoIRTweak.item.ValidateItem(itemName, function(item) 
		item.subgroup = newSubgroup
		item.order = order
	end)
end

function momoIRTweak.item.SetStackSize(itemName, newStackSize)
	if (data.raw.item[itemName]) then
		data.raw.item[itemName].stack_size = newStackSize
	else
		momoIRTweak.Log("No item with name : " .. itemName .. " to set stack size")
	end
end

function momoIRTweak.item.ResetOrder()
	momoIRTweak.itemOrder = 0
end

function momoIRTweak.item.NewScienceMaterialsItem(itemName)
	return momoIRTweak.item.NewItem(itemName, momoIRTweak.science.materialSubgroup, 50)
end

function momoIRTweak.item.NewScienceMaterialsBaseItem(itemName, dir)
	return momoIRTweak.item.NewItemBaseIcon(itemName, dir, momoIRTweak.science.materialSubgroup, 50)
end