if not momo then momo = {} end
if not momo.mods then momo.mods = {} end
if not momo.settings then momo.settings = {} end
if not momo.updates then momo.updates = {} end


require("function.helper")
require("function.subgroup")
require("function.item")
require("function.recipe")
require("function.technology")
momoIRTweak.InitItemsLib("__MomoPyTweak__/graphics/icons/", true)

momo.mods.bobinserter = mods["bobinserters"]

momo.settings.science = settings.startup["momo-science"].value
momo.settings.inserter = settings.startup["momo-inserter"].value


