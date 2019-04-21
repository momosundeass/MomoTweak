local ref = data.raw.recipe[momoTweak.sci1].subgroup 
data.raw["item-subgroup"]["momo-science-materials"].group = data.raw["item-subgroup"][ref].group
data.raw["item-subgroup"]["momo-science-materials"].order = "zzz"

local sci_cat = momoTweak.getSciCategory()

-- sci 1
		-- {"sct-t1-ironcore", 1},
		-- {"sct-t1-magnet-coils", 2}

local item = momoTweak.sci2
local recipe = momoTweak.createRecipe(sci_cat, {{"sct-2", 1}}, 
	{
		{"sct-t2-instruments", 1},
		{"sct-t2-reaction-nodes", 1}
	}
	5, momoTweak.get_tech_of_recipe_no_demo(item)
)
data.raw.recipe[recipe].subgroup = data.raw.recipe[item].subgroup
bobmods.lib.recipe.add_ingredient(recipe, {"building-pack", 2})
bobmods.lib.recipe.add_ingredient(recipe, {"movement-pack", 3})

item = momoTweak.sciGun
recipe = momoTweak.createRecipe(sci_cat, {{"sct-gun", 1}}, 
	{
		{"sct-mil-plating", 1},
		{"sct-mil-circuit3", 1}
	}, 8, momoTweak.get_tech_of_recipe(item)
)
data.raw.recipe[recipe].subgroup = data.raw.recipe[item].subgroup
bobmods.lib.recipe.add_ingredient(recipe, {"pre-dark-sci", 1})

item = momoTweak.sci3
recipe = momoTweak.createRecipe(sci_cat, {{"sct-3", 1}}, 
	{
		{"sct-t3-femto-lasers",   1},
		{"sct-t3-atomic-sensors", 1}  
	}, 10, momoTweak.get_tech_of_recipe(item)
)
data.raw.recipe[recipe].subgroup = data.raw.recipe[item].subgroup
bobmods.lib.recipe.add_ingredient(recipe, {"bronze-pack", 3})

item = momoTweak.sciProduction
recipe = momoTweak.createRecipe(sci_cat, {{"sct-production", 1}}, 
	{
		{"sct-prod-bioprocessor", 1},
		{"sct-prod-overclocker" , 1}
	}, 10, momoTweak.get_tech_of_recipe(item)
)
data.raw.recipe[recipe].subgroup = data.raw.recipe[item].subgroup

item = momoTweak.sciTech
recipe = momoTweak.createRecipe(sci_cat, {{"sct-high", 1}}, 
	{
		{"sct-htech-capbank" , 1},
		{"sct-htech-injector", 1}, 
		{"sct-htech-random"  , 1}
	}, 15, momoTweak.get_tech_of_recipe(item)
)
data.raw.recipe[recipe].subgroup = data.raw.recipe[item].subgroup

item = momoTweak.sciLogistic
recipe = momoTweak.createRecipe(sci_cat, {{"sct-logistic", 1}}, 
	{
		{"sct-logistic-cargo-unit" , 1},
		{"sct-logistic-memory-unit", 1}
	}, 10, momoTweak.sciLogistic_unlockTech
)
data.raw.recipe[recipe].subgroup = data.raw.recipe[item].subgroup
bobmods.lib.recipe.add_ingredient(recipe, {"building-pack", 5})

log("MTKL => finished sct pre process")