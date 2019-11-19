-- using

function momoIRTweak.item.AddItems()
	local NewItem = momoIRTweak.item.NewItem
	local NewItemFixedSize = momoIRTweak.item.NewItemFixedSize
	local Subgroup = momoIRTweak.GetSubgroupFromItem
	
	
	local refSubgroup = "pure"
	momoIRTweak.item.packedCopper = NewItemFixedSize("momo-packed-copper-powder", 32, refSubgroup, 50)
	momoIRTweak.item.packedIron = NewItemFixedSize("momo-packed-iron-powder", 32, refSubgroup, 50)
end