function momoTweak.data.CreateItems()
	local NewItem = momoIRTweak.item.NewItem
	local NewItemFixedSize = momoIRTweak.item.NewItemFixedSize
	local Subgroup = momoIRTweak.GetSubgroupFromItem
	
	momoIRTweak.CreateSubgroup("momo-science-components", "zz", "angels-tech")
	local refSubgroup = "momo-science-components"
	momoTweak.item.platePack = NewItemFixedSize("plate-pack", 32, refSubgroup, 200)
end