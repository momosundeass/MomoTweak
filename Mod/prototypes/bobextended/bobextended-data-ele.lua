function momoTweak.require.ExtendedDataElectronics()
	local itemref = data.raw.item[momoTweak.ele.board[1]]
	local itemgroup = data.raw["item-subgroup"][itemref.subgroup].group

	data:extend({{
		type="item-subgroup",
		name= "momo-electronics-1",
		group= itemgroup,
		order= "e-a0"
	},{
		type="item-subgroup",
		name= "momo-electronics-2",
		group= itemgroup,
		order= "e-a1"
	},{
		type="item-subgroup",
		name= "momo-electronics-3",
		group= itemgroup,
		order= "e-a2"
	}})

	local ICON = "__MomoTweak__/graphics/icons/electronics/"
	local subgroup = "momo-electronics-1"

	momoTweak.elePrefix = "momo-electronics-"
	local count = 1

	function momoTweak.newElecItem(Name, Size) 
		local iconname = string.sub(Name, string.len(momoTweak.elePrefix) + 1)
		data:extend({{
			type = "item",
			name = Name,
			icon = ICON .. iconname .. ".png",
			icon_size = 32,
			subgroup = subgroup,
			order = "f" .. count,
			stack_size = Size
		}})
		count = count + 1
	end

	function momoTweak.newElecItem64(Name, Size) 
		local iconname = string.sub(Name, string.len(momoTweak.elePrefix) + 1)
		data:extend({{
			type = "item",
			name = Name,
			icon = ICON .. iconname .. ".png",
			icon_size = 64,
			subgroup = subgroup,
			order = "f[" .. count .. "]",
			stack_size = Size
		}})
		count = count + 1
	end

	momoTweak.ele.memory = {}

	momoTweak.ele.memory.a = momoTweak.elePrefix .. "memory-a"
	momoTweak.newElecItem(momoTweak.ele.memory.a, 600)

	momoTweak.ele.memory.a2 = momoTweak.elePrefix .. "memory-a-2"
	momoTweak.newElecItem(momoTweak.ele.memory.a2, 600)

	momoTweak.ele.memory.a3 = momoTweak.elePrefix .. "memory-a-3"
	momoTweak.newElecItem(momoTweak.ele.memory.a3, 600)

	momoTweak.ele.memory.b = momoTweak.elePrefix .. "memory-b"
	momoTweak.newElecItem(momoTweak.ele.memory.b, 400)

	momoTweak.ele.memory.c = momoTweak.elePrefix .. "memory-c"
	momoTweak.newElecItem(momoTweak.ele.memory.c, 200)

	momoTweak.ele.misc = {}

	momoTweak.ele.misc.adv_wire = momoTweak.elePrefix .. "advanced-wire"
	momoTweak.newElecItem(momoTweak.ele.misc.adv_wire, 400)

	momoTweak.ele.misc.coil = momoTweak.elePrefix .. "coil"
	momoTweak.newElecItem(momoTweak.ele.misc.coil, 400)

	local ele = momoTweak.ele
	subgroup = "momo-electronics-2"

	count = 0
	ele.controller = {}
	ele.controller.a = momoTweak.elePrefix .. "control-a-red"
	momoTweak.newElecItem64(ele.controller.a, 500)

	ele.controller.b = momoTweak.elePrefix .. "control-b-gray"
	momoTweak.newElecItem64(ele.controller.b, 500)

	ele.controller.c = momoTweak.elePrefix .. "control-c-blue"
	momoTweak.newElecItem64(ele.controller.c, 500)

	ele.controller.d = momoTweak.elePrefix .. "control-d-green"
	momoTweak.newElecItem64(ele.controller.d, 500)

	ele.junction = {}

	ele.junction.a = momoTweak.elePrefix .. "junction-red"
	momoTweak.newElecItem64(ele.junction.a, 500)

	ele.junction.b = momoTweak.elePrefix .. "junction-green"
	momoTweak.newElecItem64(ele.junction.b, 500)
end

