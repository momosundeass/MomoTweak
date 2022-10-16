if not momoPipeTweak then momoPipeTweak = {} end
if not momoPipeTweak.recipes then momoPipeTweak.recipes = {} end
if not momoPipeTweak.subgroups then momoPipeTweak.subgroups = {} end
if not momoPipeTweak.mods then momoPipeTweak.mods = {} end

require("function.helper")
require("function.subgroup")
require("function.item")
require("function.recipe")
require("function.technology")

momoPipeTweak.mods.SpaceEx = mods["space-exploration"]