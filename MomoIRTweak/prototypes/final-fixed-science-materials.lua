-- using 
local Rep = momoIRTweak.ReplaceIngredients
local ITEM = momoIRTweak.FastItem
local item = momoIRTweak.item

local table = require('__stdlib__/stdlib/utils/table')

local SCI = momoIRTweak.science
local ingredients = table.deep_copy(data.raw.recipe[SCI.pack2].ingredients)
local recipe = momoIRTweak.NewRecipe("crafting", item.spp1.name, 1, ingredients, 4)
recipe.enabled = true
Rep(SCI.pack2, {ITEM(item.spp1.name, 1), ITEM(item.vial.name, 1)})

ingredients = table.deep_copy(data.raw.recipe[SCI.packMilitary].ingredients)
recipe = momoIRTweak.NewRecipe("advanced-crafting", item.sppMilitary.name, 1, ingredients, 6)
recipe.enabled = true
Rep(SCI.packMilitary, {ITEM(item.sppMilitary.name, 1), ITEM(item.vial.name, 1)})

ingredients = table.deep_copy(data.raw.recipe[SCI.pack3].ingredients)
recipe = momoIRTweak.NewRecipe("advanced-crafting", item.spp2.name, 1, ingredients, 20)
recipe.enabled = true
Rep(SCI.pack3, {ITEM(item.spp2.name, 1), ITEM(item.vial.name, 5)})

ingredients = table.deep_copy(data.raw.recipe[SCI.packProduction].ingredients)
recipe = momoIRTweak.NewRecipe("advanced-crafting", item.sppProduction.name, 1, ingredients, 20)
recipe.enabled = true
Rep(SCI.packProduction, {ITEM(item.sppProduction.name, 1), ITEM(item.vial.name, 5)})

ingredients = table.deep_copy(data.raw.recipe[SCI.packUtility].ingredients)
recipe = momoIRTweak.NewRecipe("advanced-crafting", item.spp3.name, 1, ingredients, 20)
recipe.enabled = true
Rep(SCI.packUtility, {ITEM(item.spp3.name, 1), ITEM(item.vial.name, 5)})