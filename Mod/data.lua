if not momoTweak then momoTweak = {} end
if not momoTweak.settings then momoTweak.settings = {} end
if not momoTweak.mods then momoTweak.mods = {} end
if not momoTweak.require then momoTweak.require = {} end

momoTweak.settings.isLoadBobExtended = true

momoTweak.mods.sct = mods["ScienceCostTweakerM"]
momoTweak.mods.angelBio = mods["angelsbioprocessing"]
momoTweak.mods.msp = mods["MoreSciencePacks"]

if not momoTweak.py then momoTweak.py = {} end

--- Init IR lib
require("function.helper")
require("function.subgroup")
require("function.item")
require("function.recipe")
require("function.technology")
momoIRTweak.InitItemsLib("__MomoTweak__/graphics/icons/", false)

require("function")
require("const-name")
-- still dont support py yet
-- require("pycom.init")
require("prototypes.sci.item")
require("prototypes.bobextended.bobextended-data")
require("prototypes.angel-bio")

if momoTweak.settings.isLoadBobExtended then
	momoTweak.require.BobExtendedData()
end
-- check for aai before all burner ass
momoTweak.burner = "assembling-machine-0"
if data.raw["assembling-machine"]["burner-assembling-machine"] then
	momoTweak.burner = "burner-assembling-machine"
else
	-- Burner assembler should provided by bob assembly mod
	-- require("prototypes.burner-assembler") 
end

if (momoTweak.mods.angelBio) then
	momoTweak.angelBio.Data()
end

data:extend({{
    type = "recipe-category",
    name = "momo-sci-recipe"
}})

data:extend({{
  	type = "custom-input",
  	name = "momo-debug",
  	key_sequence =  "CONTROL + SHIFT + F2",
  	consuming = "script-only"
}})

function momoTweak.GetScienceCraftingCategory()
	if  data.raw["assembling-machine"]["angels-chemical-plant"] and settings.startup["momo-fix-angels-chemistry-machine"].value then
		return "momo-sci-recipe"
	else
		return "crafting"
	end
end
