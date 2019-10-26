if not momoIRTweak then momoIRTweak = {} end
require("function.helper")
require("function.item")
require("function.recipe")
require("function.technology")

-- flag to make mod only dump data to log
momoIRTweak.DumpOnly = false

if not momoIRTweak.science then momoIRTweak.science = {} end
momoIRTweak.science.pack1 = "automation-science-pack"
momoIRTweak.science.pack2 = "logistic-science-pack"
momoIRTweak.science.pack3 = "chemical-science-pack"
momoIRTweak.science.packMilitary = "military-science-pack"
momoIRTweak.science.packProduction = "production-science-pack"
momoIRTweak.science.packUtility = "utility-science-pack"

momoIRTweak.science.materialSubgroup = "momo-science-materials"

if not momoIRTweak.item then momoIRTweak.item = {} end

data:extend({{
  	type = "custom-input",
  	name = "momo-debug",
  	key_sequence =  "CONTROL + SHIFT + F2",
  	consuming = "script-only"
}})

local refSubgroup = data.raw["item-subgroup"]["intermediate-product"]
data:extend({{
	type = "item-subgroup",
	name = momoIRTweak.science.materialSubgroup,
	group = refSubgroup.group,
	order = refSubgroup.order .. "zzzz"
}})



if not (momoIRTweak.DumpOnly) then
	require("prototypes.data-science-materials")
end