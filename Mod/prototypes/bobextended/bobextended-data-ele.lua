local itemref = data.raw.item[momoTweak.ele.board[1]]
local itemgroup = data.raw["item-subgroup"][itemref.subgroup].group

data:extend({
{
	type="item-subgroup",
	name= "momo-electronics",
	group= itemgroup,
	order= "e-a0"
}
})

local ICON = "__MomoTweak__/graphics/icons/electronics/"
local subgroup = "momo-electronics"

momoTweak.elePrefix = "momo-electronics-"
local count = 1
function momoTweak.newElecItem(Name, Size) 
  local iconname = string.sub(Name, string.len(momoTweak.elePrefix) + 1)
  data:extend({
    {
      type = "item",
      name = Name,
      icon = ICON .. iconname .. ".png",
      icon_size = 32,
      subgroup = subgroup,
      order = "f" .. count .. "[" .. Name .. "]",
      stack_size = Size
    }
  })
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

momoTweak.ele.memory.c = momoTweak.elePrefix .. "advanced-wire"
momoTweak.newElecItem(momoTweak.ele.memory.c, 400)

momoTweak.ele.memory.c = momoTweak.elePrefix .. "coil"
momoTweak.newElecItem(momoTweak.ele.memory.c, 400)





