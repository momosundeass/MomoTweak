if not momoABTweak then momoABTweak = {} end
if not momoABTweak.settings then momoABTweak.settings = {} end
if not momoABTweak.mods then momoABTweak.mods = {} end

require("function.helper")
require("function.subgroup")
require("function.item")
require("function.recipe")
require("function.technology")
momoIRTweak.InitItemsLib("__MomoPyTweak__/graphics/icons/", true)


momoABTweak.settings.electronics = settings.startup["mm-use-electronics"].value

if (mods["Clowns-Science"]) then
	momoABTweak.mods.clownScience = true
end

