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
momoTweak.settings.technologyTimeMultiple = settings.startup["momo-technologiesTimeMultiplier"].value

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
require("naming-machine")
require("prototypes.data-item")
require("prototypes.bobextended.bobextended-data")

momoTweak.data.CreateItems()
momoTweak.data.BobExtendedData()

function momoTweak.data.ElectronicsSwapIcon()
	local angelsProto = data.raw.item[momoTweak.components.resistor]
	local bobsProto = data.raw.item[momoTweak.bob.components.resistor]
	local angelsIcon = angelsProto.icon
	local bobsIcon = bobsProto.icon
	local angelsSize = angelsProto.icon_size
	local bobsSize = bobsProto.icon_size
	
	angelsProto.icon = bobsIcon
	angelsProto.icon_size = bobsSize
	bobsProto.icon = angelsIcon
	bobsProto.icon_size = angelsSize
	
	angelsProto = data.raw.item[momoTweak.components.transistor]
	bobsProto = data.raw.item[momoTweak.bob.components.transistor]
	angelsIcon = angelsProto.icon
	bobsIcon = bobsProto.icon
	
	angelsProto.icon = bobsIcon
	angelsProto.icon_size = bobsSize
	bobsProto.icon = angelsIcon
	bobsProto.icon_size = angelsSize
end
momoTweak.data.ElectronicsSwapIcon()
