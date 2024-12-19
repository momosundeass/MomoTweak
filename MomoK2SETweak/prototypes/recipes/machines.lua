function momoK2SETweak.recipes.Machines()
	local recipe = momoIRTweak.recipe
	local ITEM = momoIRTweak.FastItem
	
	
	
	recipe.ReplaceIngredient("se-pulveriser", "iron-plate",  ITEM("kr-crusher", 1))
	
	recipe.ReplaceIngredient("kr-fuel-refinery", "iron-gear-wheel",  ITEM("fuel-processor", 1))
	recipe.ReplaceIngredient("se-fuel-refinery", "pipe",             ITEM("kr-fuel-refinery", 2))
	
	recipe.ReplaceIngredient("se-space-assembling-machine", "electric-engine-unit", ITEM("assembling-machine-3", 1))
end