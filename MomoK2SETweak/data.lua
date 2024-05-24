if not momoK2SETweak then momoK2SETweak = {} end
if not momoK2SETweak.recipes then momoK2SETweak.recipes = {} end
if not momoK2SETweak.mods then momoK2SETweak.mods = {} end

require("function.helper")
require("function.item")
require("function.recipe")
require("function.technology")

momoK2SETweak.mods.SpaceEx = mods["space-exploration"]
momoK2SETweak.mods.K2 = mods["Krastorio2"]
momoK2SETweak.mods.BobInserter = mods["bobinserters"]
momoK2SETweak.mods.SmartInserter = mods["Smart_Inserters"]

momoK2SETweak.smartInserter = momoK2SETweak.mods.BobInserter or momoK2SETweak.mods.SmartInserter

momoK2SETweak.mods.AdvancedPipe = mods["underground-pipe-pack"]
momoK2SETweak.mods.TransportDrones = mods["Transport_Drones"]