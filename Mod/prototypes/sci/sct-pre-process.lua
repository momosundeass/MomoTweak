local ref = data.raw.recipe[momoTweak.sci1].subgroup 
data.raw["item-subgroup"]["momo-science-materials"].group = data.raw["item-subgroup"][ref].group
data.raw["item-subgroup"]["momo-science-materials"].order = "zzz"

local sci_cat = "crafting"
if  data.raw["assembling-machine"]["angels-chemical-plant"] and settings.startup["momo-fix-angels-chemistry-machine"].value then
  sci_cat = "momo-sci-recipe"
end

local item = momoTweak.sci2
local recipe = momoTweak.createRecipe(sci_cat, {{"sct-2", 1}}, 
	momoTweak.deepcopy(momoTweak.get_ingredients(item)), 5, momoTweak.get_techs_of_recipe(item)[2]
)
data.raw.recipe[recipe].subgroup = data.raw.recipe[item].subgroup
bobmods.lib.recipe.add_ingredient(recipe, {"building-pack", 2})
bobmods.lib.recipe.add_ingredient(recipe, {"movement-pack", 3})

item = momoTweak.sciGun
recipe = momoTweak.createRecipe(sci_cat, {{"sct-gun", 1}}, 
	momoTweak.deepcopy(momoTweak.get_ingredients(item)), 8, momoTweak.get_tech_of_recipe(item)
)
data.raw.recipe[recipe].subgroup = data.raw.recipe[item].subgroup
bobmods.lib.recipe.add_ingredient(recipe, {"pre-dark-sci", 1})

item = momoTweak.sci3
recipe = momoTweak.createRecipe(sci_cat, {{"sct-3", 1}}, 
	momoTweak.deepcopy(momoTweak.get_ingredients(item)), 10, momoTweak.get_tech_of_recipe(item)
)
data.raw.recipe[recipe].subgroup = data.raw.recipe[item].subgroup
bobmods.lib.recipe.add_ingredient(recipe, {"bronze-pack", 3})

item = momoTweak.sciProduction
recipe = momoTweak.createRecipe(sci_cat, {{"sct-production", 1}}, 
	momoTweak.deepcopy(momoTweak.get_ingredients(item)), 10, momoTweak.get_tech_of_recipe(item)
)
data.raw.recipe[recipe].subgroup = data.raw.recipe[item].subgroup

item = momoTweak.sciTech
recipe = momoTweak.createRecipe(sci_cat, {{"sct-high", 1}}, 
	momoTweak.deepcopy(momoTweak.get_ingredients(item)), 15, momoTweak.get_tech_of_recipe(item)
)
data.raw.recipe[recipe].subgroup = data.raw.recipe[item].subgroup

item = momoTweak.sciLogistic
recipe = momoTweak.createRecipe(sci_cat, {{"sct-logistic", 1}}, 
	momoTweak.deepcopy(momoTweak.get_ingredients(item)), 10, momoTweak.get_tech_of_recipe("logistic-express")
)
data.raw.recipe[recipe].subgroup = data.raw.recipe[item].subgroup
bobmods.lib.recipe.add_ingredient(recipe, {"building-pack", 5})

log("MTKL => finished sct pre process")