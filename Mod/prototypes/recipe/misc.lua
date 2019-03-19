-- small-lamp
momoTweak.replace_with_ingredient("small-lamp", "iron-plate", {"glass", 3})

bobmods.lib.recipe.add_ingredient("arithmetic-combinator", {"rubber", 1})
bobmods.lib.recipe.add_ingredient("decider-combinator", {"rubber", 1})
bobmods.lib.recipe.add_ingredient("constant-combinator", {"rubber", 2})

bobmods.lib.recipe.add_ingredient("lab-2", {"rubber", 50})
bobmods.lib.recipe.add_ingredient("lab-2", {"arithmetic-combinator", 10})
bobmods.lib.recipe.add_ingredient("lab-2", {"decider-combinator", 10})

bobmods.lib.recipe.add_ingredient("lab-module", {"rubber", 75})
bobmods.lib.recipe.add_ingredient("lab-module", {"arithmetic-combinator", 15})
bobmods.lib.recipe.add_ingredient("lab-module", {"decider-combinator", 15})


-- ammo
local category = data.raw.recipe["firearm-magazine"].category
momoTweak.createRecipe(category, {{"firearm-magazine", 1}},
	{
		{"lead-plate", 3},
		{"iron-plate", 1}
	}, 1, momoTweak.get_tech_of_recipe("piercing-rounds-magazine"))
	
	
if data.raw.recipe["bi_recipe_basic_dart_magazine"] then
	momoTweak.replace_with_ingredient("bi_recipe_basic_dart_magazine", "wood", {"wood", 2})
end
