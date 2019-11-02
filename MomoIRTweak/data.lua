if not momoIRTweak then momoIRTweak = {} end
if not momoIRTweak.dir then momoIRTweak.dir = {} end
if not momoIRTweak.item then momoIRTweak.item = {} end
if not momoIRTweak.science then momoIRTweak.science = {} end
if not momoIRTweak.electronics then momoIRTweak.electronics = {} end
if not momoIRTweak.technology then momoIRTweak.technology = {} end
if not momoIRTweak.machine then momoIRTweak.machine = {} end

require("function.helper")
require("function.subgroup")
require("function.item")
require("function.recipe")
require("function.technology")

require("naming")

-- flag to make mod only dump data to log
momoIRTweak.DumpOnly = false

-- load settings
momoIRTweak.science.isHarderPack = settings.startup["momo-harderSciencePackRecipe"].value
momoIRTweak.electronics.isHarder = settings.startup["momo-harderElectronics"].value

--- subgroup
momoIRTweak.science.materialSubgroup = "momo-science-materials"
local refSubgroup = data.raw["item-subgroup"]["intermediate-product"]
data:extend({{
	type = "item-subgroup",
	name = momoIRTweak.science.materialSubgroup,
	group = refSubgroup.group,
	order = refSubgroup.order .. "zzzz"
}})

--- debug key
data:extend({{
  	type = "custom-input",
  	name = "momo-debug",
  	key_sequence =  "CONTROL + SHIFT + F2",
  	consuming = "script-only"
}})

if not (momoIRTweak.DumpOnly) then
	require("prototypes.items.science-materials")
	require("prototypes.items.electronics")
end