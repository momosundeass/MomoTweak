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
	
momoTweak.eleExtendPrefix = "momo-electronics-"

local ICON = "__MomoTweak__/graphics/icons/electronics/"
local subgroup = "momo-electronics"

function momoTweak.newElecItem(Name, Size) 
  data:extend({
    {
      type = "item",
      name = momoTweak.eleExtendPrefix .. Name,
      icon = ICON .. Name .. ".png",
      icon_size = 32,
      subgroup = subgroup,
      order = "f[" .. Name .. "]",
      stack_size = Size
    }
  })
end

momoTweak.newElecItem("memory-a", 600)
momoTweak.newElecItem("memory-b", 400)
momoTweak.newElecItem("memory-c", 200)