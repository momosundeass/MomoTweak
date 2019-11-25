function momoPyTweak.finalFixes.Military()
	local recipe = data.raw.recipe["ammo-initial"]
	recipe.results = nil
	recipe.result = "firearm-magazine"
	recipe.result_count = 5
	momoIRTweak.recipe.SetResultCount("firearm-magazine", 6)
	momoIRTweak.recipe.SetResultCount("piercing-rounds-magazine", 2)
end