-- using

function momoIRTweak.item.InitElectronics()
	local NewBase = momoIRTweak.item.NewItemBaseIcon
	local NewItem = momoIRTweak.item.NewItem
	local Subgroup = momoIRTweak.GetSubgroupFromItem
	local refSubgroup = momoIRTweak.subgroups["intermediate-product"]
	local eles = momoIRTweak.electronics

	eles.irSubgroup = "deadlock-electronics"
	eles.momoSubgroup = "momo-electronics"

	data:extend({{
		type = "item-subgroup",
		name = eles.irSubgroup,
		group = refSubgroup.group,
		order = "0"
	}})

	local electronic1 = momoIRTweak.dir.baseIcon .. "electronic-circuit"
	local electronic2 = momoIRTweak.dir.baseIcon .. "advanced-circuit"
	local electronic3 = momoIRTweak.dir.baseIcon .. "processing-unit"

	eles.pcb1 = NewBase("momo-pcb1", electronic1, eles.irSubgroup, 200)
	eles.pcb2 = NewBase("momo-pcb2", electronic2, eles.irSubgroup, 200)
	eles.pcb3 = NewBase("momo-pcb3", electronic3, eles.irSubgroup, 200)

end