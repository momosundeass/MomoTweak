if not momoPyTweak               then momoPyTweak = {} end
if not momoPyTweak.dir           then momoPyTweak.dir = {} end
if not momoPyTweak.item          then momoPyTweak.item = {} end
if not momoPyTweak.science       then momoPyTweak.science = {} end
if not momoPyTweak.electronics   then momoPyTweak.electronics = {} end
if not momoPyTweak.technology    then momoPyTweak.technology = {} end
if not momoPyTweak.machine       then momoPyTweak.machine = {} end
if not momoPyTweak.updates       then momoPyTweak.updates = {} end
if not momoPyTweak.finalFixes    then momoPyTweak.finalFixes = {} end
if not momoPyTweak.compatibility then momoPyTweak.compatibility = {} end

require("function.helper")
require("function.subgroup")
require("function.item")
require("function.recipe")
require("function.technology")
momoIRTweak.InitItemsLib("__MomoPyTweak__/graphics/icons/", true)

require("naming")

-- flag to make mod only dump data to log
momoPyTweak.DumpOnly = true

--- subgroup
momoPyTweak.science.materialSubgroup = "momo-science-materials"
local refSubgroup = data.raw["item-subgroup"]["intermediate-product"]
data:extend({{
	type = "item-subgroup",
	name = momoPyTweak.science.materialSubgroup,
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

if not (momoPyTweak.DumpOnly) then

end