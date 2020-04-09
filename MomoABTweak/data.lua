if not momoTweak then momoTweak = {} end
if not momoTweak.settings then momoTweak.settings = {} end
if not momoTweak.mods then momoTweak.mods = {} end
if not momoTweak.require then momoTweak.require = {} end
if not momoTweak.compatibility then momoTweak.compatibility = {} end

momoTweak.settings.isLoadBobExtended = true

momoTweak.mods.angelBio = mods["angelsbioprocessing"]
momoTweak.mods.msp = mods["MoreSciencePacks"]
momoTweak.mods.undergroundPipePack = mods["underground-pipe-pack"]

--- Init IR lib
require("function.helper")
require("function.subgroup")
require("function.item")
require("function.recipe")
require("function.technology")
momoIRTweak.Init("AB")
momoIRTweak.InitItemsLib("__MomoABTweak__/graphics/icons/", false)

require("naming")

data:extend({{
  	type = "custom-input",
  	name = "momo-debug",
  	key_sequence =  "CONTROL + SHIFT + F2",
  	consuming = "script-only"
}})

