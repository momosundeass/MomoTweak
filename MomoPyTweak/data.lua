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
if not momoPyTweak.mods          then momoPyTweak.mods = {} end


require("function.helper")
require("function.subgroup")
require("function.item")
require("function.recipe")
require("function.technology")
momoIRTweak.InitItemsLib("__MomoPyTweak__/graphics/icons/", true)

require("naming")
momoPyTweak.mods.bobInserter = mods["bobinserters"]

-- flag to make mod only dump data to log
momoPyTweak.DumpOnly = false

--- subgroup
momoPyTweak.science.materialSubgroup = "momo-science-materials"
local refSubgroup = momoIRTweak.subgroups["science-pack"]
data:extend({{
	type = "item-subgroup",
	name = momoPyTweak.science.materialSubgroup,
	group = refSubgroup.group,
	order = refSubgroup.order .. "zzzz"
}})

momoIRTweak.subgroups["science-pack"].order = "a1"
momoIRTweak.subgroups["intermediate-product"].order = "a2"

--- debug key
data:extend({{
  	type = "custom-input",
  	name = "momo-debug",
  	key_sequence =  "CONTROL + SHIFT + F2",
  	consuming = "script-only"
}})

require("prototypes.electric-pole")
require("prototypes.underground-belt")

require("prototypes.item.science-materials")

if not (momoPyTweak.DumpOnly) then
	
	momoPyTweak.CreateScienceMaterials()
	
	if (settings.startup["momo-electricPole"].value) then
		momoPyTweak.BuffElectricPole()
	end
	
	if (settings.startup["momo-undergroundBelt"].value) then
		momoPyTweak.BuffUndergroundBelt()
	end

	-- Todo
	-- disable long inserter when bobinserter present
	-- adjest tile for underground belt include recipe
	-- tiered recipe for sciecne pack
	-- adjust module effect
	
end