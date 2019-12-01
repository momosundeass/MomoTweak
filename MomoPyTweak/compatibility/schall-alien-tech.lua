function momoPyTweak.compatibility.SchallUraniumMining()
	local ITEM = momoIRTweak.FastItem

	momoIRTweak.recipe.ValidateRecipe("Schall-uranium-mining-drill", function(recipe)
		recipe.enabled = false
		momoIRTweak.recipe.ReplaceAllIngredient(recipe.name, {
			ITEM("electric-mining-drill", 1),
			ITEM("processing-unit", 10),
			ITEM("volumetric-capacitor", 30),
			ITEM("electric-engine-unit", 20),
			ITEM("uranium-238", 100)
		})
		
		if (momoPyTweak.settings.miner) then
			momoIRTweak.recipe.ReplaceIngredient(recipe.name, "electric-mining-drill", ITEM("momo-express-miner", 1))
		end
	end)
	
	local miningData = data.raw["mining-drill"]["Schall-uranium-mining-drill"]
	miningData.mining_speed = 3
	miningData.module_specification.module_slots = 6
	miningData.resource_searching_radius = 4.98
	
end
