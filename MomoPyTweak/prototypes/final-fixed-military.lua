function momoPyTweak.finalFixes.Military()
	-- using 
	local ITEM = momoIRTweak.FastItem

	local recipe = data.raw.recipe["ammo-initial"]
	recipe.results = nil
	recipe.result = "firearm-magazine"
	recipe.result_count = 5
	momoIRTweak.recipe.SetResultCount("firearm-magazine", 6)
	
	
	momoIRTweak.recipe.AddOrUpdateIngredient("piercing-rounds-magazine", ITEM("lead-plate", 6))
	momoIRTweak.recipe.SetResultCount("piercing-rounds-magazine", 3)
end