function momoTweak.data.CreateItems()
	local NewItem = momoIRTweak.item.NewItem
	local NewItemFixedSize = momoIRTweak.item.NewItemFixedSize
	local NewItemBaseIcon = momoIRTweak.item.NewItemBaseIconMipmaped
	local Subgroup = momoIRTweak.GetSubgroupFromItem
	
	momoIRTweak.CreateSubgroup("momo-science-components", "0-1", "angels-components")
	local refSubgroup = "momo-science-components"
	momoTweak.item.platePack = NewItemFixedSize("plate-pack", 32, refSubgroup, 200)
	
	momoIRTweak.CreateSubgroup("momo-electronic-components", "0-2", "angels-components")
	refSubgroup = "momo-electronic-components"
	momoTweak.item.electronics1 = NewItemFixedSize("momo-electronic-mk1", 32, refSubgroup, 200)
	momoTweak.item.electronics2 = NewItemFixedSize("momo-electronic-mk2", 32, refSubgroup, 200)
	momoTweak.item.electronics3 = NewItemFixedSize("momo-electronic-mk3", 32, refSubgroup, 200)
	momoTweak.item.electronics4 = NewItemFixedSize("momo-electronic-mk4", 32, refSubgroup, 200)
	momoTweak.item.electronics5 = NewItemFixedSize("momo-electronic-mk5", 32, refSubgroup, 200)
	
	momoIRTweak.CreateSubgroup("momo-msp-components", "zz2", "angels-tech")
	refSubgroup = "momo-msp-components"
	momoTweak.item.msp1 = NewItemBaseIcon("momo-msp1", "__base__/graphics/icons/automation-science-pack", refSubgroup, 50)
	momoTweak.item.msp2 = NewItemBaseIcon("momo-msp2", "__base__/graphics/icons/logistic-science-pack", refSubgroup, 50)
	momoTweak.item.msp3 = NewItemBaseIcon("momo-msp3", "__base__/graphics/icons/chemical-science-pack", refSubgroup, 50)
	momoTweak.item.msp4 = NewItemBaseIcon("momo-msp4", "__base__/graphics/icons/production-science-pack", refSubgroup, 50)
	momoTweak.item.msp5 = NewItemBaseIcon("momo-msp5", "__base__/graphics/icons/utility-science-pack", refSubgroup, 50)
	momoTweak.item.msp6 = NewItemBaseIcon("momo-msp6", "__base__/graphics/icons/space-science-pack", refSubgroup, 50)
end