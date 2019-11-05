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

if not momoIRTweak.item then momoIRTweak.item = {} end

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


function momoIRTweak.item.NewScienceMaterialsItem(itemName)
	return momoIRTweak.item.NewItem(itemName, momoIRTweak.science.materialSubgroup, 50)
end