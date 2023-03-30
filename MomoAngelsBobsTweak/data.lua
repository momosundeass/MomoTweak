if not momoABTweak then momoABTweak = {} end
if not momoABTweak.mods then momoABTweak.mods = {} end
if not momoABTweak.updates then momoABTweak.updates = {} end


require("function.helper")
require("function.subgroup")
require("function.item")
require("function.recipe")
require("function.technology")
momoIRTweak.InitItemsLib("__MomoPyTweak__/graphics/icons/", true)

if (mods["Clowns-Science"]) then
	momoABTweak.mods.clownScience = true
end