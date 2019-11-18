function momoTweak.require.SctPreProcess()
	local recipes = momoTweak.sct.recipe

	momoTweak.add_ingredients(recipes["sct-2"], {
		{"sct-t2-instruments", 1},
		{"sct-t2-reaction-nodes", 1},
		{"building-pack", 1},
		{"movement-pack", 2},
	})
		
	momoTweak.add_ingredients(recipes["sct-gun"], {
		{"sct-mil-plating", 1},
		{"sct-mil-circuit3", 1},
		{"pre-dark-sci", 1}
	})

	momoTweak.add_ingredients(recipes["sct-3"], {
		{"sct-t3-femto-lasers",   1},
		{"sct-t3-atomic-sensors", 1},
		{"bronze-pack", 3}
	})
		
	momoTweak.add_ingredients(recipes["sct-production"], {
		{"sct-prod-bioprocessor", 1},
		{"sct-prod-overclocker" , 1}
	})

	momoTweak.add_ingredients(recipes["sct-high"], {
		{"sct-htech-capbank" , 1},
		{"sct-htech-injector", 1}, 
		{"sct-htech-random"  , 1}
	})
end

function momoTweak.sct.PostProcessRecipe() 
	bobmods.lib.recipe.remove_ingredient(momoTweak.sciLogistic, "sct-logistic")
	momoTweak.add_ingredients(momoTweak.genRecipeNameFromResult({"logistic-express", 1}), {
		{"movement-pack", 3},
		{"fast-inserter", 2}
	})
end