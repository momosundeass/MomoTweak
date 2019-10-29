-- using
local NewBase = momoIRTweak.NewItemBaseIcon
local NewItem = momoIRTweak.NewItem
local Subgroup = momoIRTweak.GetSubgroupFromItem

local refSubgroup = momoIRTweak.subgroups["intermediate-product"]
if not momoIRTweak.eletronics then momoIRTweak.eletronics = {} end
local eles = momoIRTweak.eletronics

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