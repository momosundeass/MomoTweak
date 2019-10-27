-- using 
local Rep = momoIRTweak.ReplaceIngredients
local ITEM = momoIRTweak.FastItem
local item = momoIRTweak.item

local table = require('__stdlib__/stdlib/utils/table')

local SCI = momoIRTweak.science
local ingredients = table.deep_copy(data.raw.recipe[SCI.pack2].ingredients)
local recipe = momoIRTweak.NewRecipe("crafting", item.spp1.name, 1, ingredients, 4)
Rep(SCI.pack2, {ITEM(item.spp1.name, 1), ITEM(item.vial.name, 1)})

-- this need to hard code cause there are demo tech
momoIRTweak.AddUnlockEffect("logistic-science-pack", recipe.name)
momoIRTweak.AddUnlockEffect("demo-science-pack", recipe.name)

ingredients = table.deep_copy(data.raw.recipe[SCI.packMilitary].ingredients)
recipe = momoIRTweak.NewRecipe("advanced-crafting", item.sppMilitary.name, 1, ingredients, 6)
Rep(SCI.packMilitary, {ITEM(item.sppMilitary.name, 1), ITEM(item.vial.name, 1)})
local tech = momoIRTweak.FindTechnologyFromRecipe(SCI.packMilitary)
momoIRTweak.AddUnlockEffect(tech, recipe.name)

ingredients = table.deep_copy(data.raw.recipe[SCI.pack3].ingredients)
recipe = momoIRTweak.NewRecipe("advanced-crafting", item.spp2.name, 1, ingredients, 20)
Rep(SCI.pack3, {ITEM(item.spp2.name, 1), ITEM(item.vial.name, 5)})
tech = momoIRTweak.FindTechnologyFromRecipe(SCI.pack3)
momoIRTweak.AddUnlockEffect(tech, recipe.name)

ingredients = table.deep_copy(data.raw.recipe[SCI.packProduction].ingredients)
recipe = momoIRTweak.NewRecipe("advanced-crafting", item.sppProduction.name, 1, ingredients, 20)
Rep(SCI.packProduction, {ITEM(item.sppProduction.name, 1), ITEM(item.vial.name, 5)})
tech = momoIRTweak.FindTechnologyFromRecipe(SCI.packProduction)
momoIRTweak.AddUnlockEffect(tech, recipe.name)

ingredients = table.deep_copy(data.raw.recipe[SCI.packUtility].ingredients)
recipe = momoIRTweak.NewRecipe("advanced-crafting", item.spp3.name, 1, ingredients, 20)
Rep(SCI.packUtility, {ITEM(item.spp3.name, 1), ITEM(item.vial.name, 5)})
tech = momoIRTweak.FindTechnologyFromRecipe(SCI.packUtility)
momoIRTweak.AddUnlockEffect(tech, recipe.name)