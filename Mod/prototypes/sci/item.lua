-- sci component
-- electronics sci

local ICON = "__MomoTweak__/graphics/icons/"
local subgroup = data.raw.item["iron-stick"].subgroup
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
momoTweak.newsciItem("red-sci")
momoTweak.newsciItem("building-pack")
momoTweak.newsciItem("pre-dark-sci")
momoTweak.newsciItem("product-sci")
momoTweak.newsciItem("cyan-sci")
momoTweak.newsciItem("pre-high-sci")

momoTweak.newsciItem("green-sci")
momoTweak.newsciItem("movement-pack")
momoTweak.newsciItem("bronze-pack")
momoTweak.newsciItem("dark-chip")
momoTweak.newsciItem("pre-cyan-sci")
momoTweak.newsciItem("cpy")
momoTweak.newsciItem("logistic-express")
momoTweak.newsciItem("py-nxag-matrix")
momoTweak.newsciItem("py-superconductor")


momoTweak.newsciItem("plate-pack-1")