if not momo2k2 then momo2k2 = {} end
if not momo2k2.mods then momo2k2.mods = {} end

require("function.helper")
require("function.subgroup")
require("function.item")
require("function.recipe")
require("function.technology")

momo2k2.functions = momoIRTweak
momo2k2.Rep = momo2k2.functions.recipe.ReplaceIngredient
momo2k2.Add = momo2k2.functions.recipe.SafeAddIngredient
momo2k2.Set = momo2k2.functions.recipe.ReplaceAllIngredient

momo2k2.mods.K2 = mods["Krastorio2"]
momo2k2.mods.K248 = mods["248k"]
momo2k2.mods.pipe = mods["underground-pipe-pack"]
momo2k2.mods.naturalGas = mods["bzgas"]

momoIRTweak.Init("NoMoreUseless")