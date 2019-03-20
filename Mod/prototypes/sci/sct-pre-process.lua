local ref = data.raw.recipe[momoTweak.sci1].subgroup 
data.raw["item-subgroup"]["momo-science-materials"].group = data.raw["item-subgroup"][ref].group
data.raw["item-subgroup"]["momo-science-materials"].order = "zzz"

local sci_cat = "crafting"
if  data.raw["assembling-machine"]["angels-chemical-plant"] and settings.startup["momo-fix-angels-chemistry-machine"].value then
  sci_cat = "momo-sci-recipe"
end


local item = momoTweak.sci2
-- data.raw.item["sct-2"].subgroup = data.raw.item[item].subgroup
local recipe = momoTweak.createRecipe(sci_cat, {{"sct-2", 1}}, 
	momoTweak.deepcopy(momoTweak.get_ingredients(item)), 5, momoTweak.get_techs_of_recipe(item)[2]
)

bobmods.lib.recipe.add_ingredient(recipe, {"building-pack", 2})
bobmods.lib.recipe.add_ingredient(recipe, {"movement-pack", 3})

item = momoTweak.sciGun
-- data.raw.item["sct-gun"].subgroup = data.raw.item[item].subgroup
recipe = momoTweak.createRecipe(sci_cat, {{"sct-gun", 1}}, 
	momoTweak.deepcopy(momoTweak.get_ingredients(item)), 8, momoTweak.get_tech_of_recipe(item)
)
bobmods.lib.recipe.add_ingredient(recipe, {"pre-dark-sci", 1})

item = momoTweak.sci3
-- data.raw.item["sct-3"].subgroup = data.raw.item[item].subgroup
recipe = momoTweak.createRecipe(sci_cat, {{"sct-3", 1}}, 
	momoTweak.deepcopy(momoTweak.get_ingredients(item)), 10, momoTweak.get_tech_of_recipe(item)
)
bobmods.lib.recipe.add_ingredient(recipe, {"bronze-pack", 3})

item = momoTweak.sciProduction
-- data.raw.item["sct-production"].subgroup = data.raw.item[item].subgroup
recipe = momoTweak.createRecipe(sci_cat, {{"sct-production", 1}}, 
	momoTweak.deepcopy(momoTweak.get_ingredients(item)), 10, momoTweak.get_tech_of_recipe(item)
)

item = momoTweak.sciTech
-- data.raw.item["sct-high"].subgroup = data.raw.item[item].subgroup
recipe = momoTweak.createRecipe(sci_cat, {{"sct-high", 1}}, 
	momoTweak.deepcopy(momoTweak.get_ingredients(item)), 15, momoTweak.get_tech_of_recipe(item)
)

item = momoTweak.sciLogistic
-- data.raw.item["sct-logistic"].subgroup = data.raw.item[item].subgroup
recipe = momoTweak.createRecipe(sci_cat, {{"sct-logistic", 1}}, 
	momoTweak.deepcopy(momoTweak.get_ingredients(item)), 10, momoTweak.get_tech_of_recipe("logistic-express")
)
bobmods.lib.recipe.add_ingredient(recipe, {"building-pack", 5})

log("MTKL => finished sct pre process")