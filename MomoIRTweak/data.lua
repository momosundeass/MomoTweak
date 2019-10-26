if not momoIRTweak then momoIRTweak = {} end
require("function.item")
require("function.recipes")

if not momoIRTweak.science then momoIRTweak.science = {} end
momoIRTweak.science.pack1 = "automation-science-pack"
momoIRTweak.science.pack2 = "logistic-science-pack"
momoIRTweak.science.pack3 = "chemical-science-pack"
momoIRTweak.science.packMilitary = "military-science-pack"
momoIRTweak.science.packProduction = "production-science-pack"
momoIRTweak.science.packUtility = "utility-science-pack"

data:extend({{
  	type = "custom-input",
  	name = "momo-debug",
  	key_sequence =  "CONTROL + SHIFT + F2",
  	consuming = "script-only"
}})

local sciencePackSubgroupName = data.raw.tool[momoIRTweak.science.pack1].subgroup
local refSubgroup = data.raw["item-subgroup"][sciencePackSubgroupName]
data:extend({{
	type = "item-subgroup",
	name = "momo-science-materials",
	group = refSubgroup.group,
	order = refSubgroup.order .. "zzzz"
}})
