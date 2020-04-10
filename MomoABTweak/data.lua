momoTweak = {}
momoTweak.data = {}
momoTweak.updates = {}
momoTweak.finalFixes = {}
momoTweak.settings = {}
momoTweak.mods = {}
momoTweak.require = {} 
momoTweak.compatibility = {}
momoTweak.compatibility.msp = {}


momoTweak.recipe = {}
momoTweak.item = {}
momoTweak.extended = {}

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
require("prototypes.data-item")
require("prototypes.bobextended.bobextended-data")

momoTweak.data.CreateItems()
momoTweak.data.BobExtendedData()

