-- sci component
-- electronics sci
local refsubgroup = data.raw["item-subgroup"][data.raw.item["iron-stick"].subgroup]
data:extend({
	{
		type = "item-subgroup",
		name = "momo-science-materials",
		group = refsubgroup.group,
		order = refsubgroup.order .. "1"
	}
})

local subgroup = "momo-science-materials"
local ICON = "__MomoTweak__/graphics/icons/"

function momoTweak.newsciItem(Name) 
  data:extend({
    {
      type = "item",
      name = Name,
      icon = ICON .. Name .. ".png",
      icon_size = 32,
      subgroup = subgroup,
      order = "f[" .. Name .. "]",
      stack_size = 200
    }
  })
end

momoTweak.newsciItem("momo-vial")  --1

momoTweak.newsciItem("red-sci")
momoTweak.newsciItem("building-pack")
momoTweak.newsciItem("pre-dark-sci")
momoTweak.newsciItem("product-sci")
momoTweak.newsciItem("cyan-sci")
momoTweak.newsciItem("pre-high-sci") -- 6

momoTweak.newsciItem("green-sci")
momoTweak.newsciItem("movement-pack")
momoTweak.newsciItem("bronze-pack")
momoTweak.newsciItem("dark-chip") -- 10
momoTweak.newsciItem("pre-cyan-sci")
momoTweak.newsciItem("cpy")
momoTweak.newsciItem("logistic-express")
momoTweak.newsciItem("py-nxag-matrix")
momoTweak.newsciItem("py-superconductor") -- 15

momoTweak.newsciItem("plate-pack-1")


if (momoTweak.mods.sct or momoTweak.py.coal) then
	momoTweak.newsciItem("sct-2")
	momoTweak.newsciItem("sct-gun")
	momoTweak.newsciItem("sct-3")
	momoTweak.newsciItem("sct-production")
	momoTweak.newsciItem("sct-logistic")
	momoTweak.newsciItem("sct-high")
end

