if not momoTweak then momoTweak = {} end
if not momoTweak.settings then momoTweak.settings = {} end
if not momoTweak.mods then momoTweak.mods = {} end

momoTweak.settings.isLoadBobExtended = true

momoTweak.mods.sct = mods["ScienceCostTweakerM"]
momoTweak.mods.angelBio = mods["angelsbioprocessing"]

require("function")
require("const-name")
require("pycom.init")
require("prototypes.sci.item")

if momoTweak.settings.isLoadBobExtended then
	require("prototypes.bobextended.bobextended-data")
end
-- check for aai before all burner ass
momoTweak.burner = "assembling-machine-0"
if data.raw["assembling-machine"]["burner-assembling-machine"] then
	momoTweak.burner = "burner-assembling-machine"
else
	require("prototypes.burner-assembler")
end

if (momoTweak.mods.angelBio) then
	require("prototypes.angel-bio")
end

data:extend({{
    type = "recipe-category",
    name = "momo-sci-recipe"
}})

function momoTweak.GetScienceCraftingCategory()
	if  data.raw["assembling-machine"]["angels-chemical-plant"] and settings.startup["momo-fix-angels-chemistry-machine"].value then
		return "momo-sci-recipe"
	else
		return "crafting"
	end
end

data:extend({{
  	type = "custom-input",
  	name = "momo-debug",
  	key_sequence =  "CONTROL + SHIFT + F2",
  	consuming = "script-only"
}})

