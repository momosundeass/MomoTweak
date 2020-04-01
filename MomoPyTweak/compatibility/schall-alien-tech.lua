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
	
	if (data.raw.item["alien-artifact"]) then
	local recipe = momoIRTweak.recipe.BuildPrototype("momo-alien-artifact", "bio-reactor", "alien-artifact", 2, {
		ITEM("proton-receiver", 45),
		ITEM("resilin", 15),
		ITEM(momoPyTweak.science.packProduction, 2),
		ITEM(momoPyTweak.science.packMilitary, 5),
		momoIRTweak.FastFluid("bacteria-1", 500),
		}, 200)
	
	recipe.subgroup = "intermediate-product"
	data:extend({recipe})
	
	momoIRTweak.technology.AddUnlockEffect(momoPyTweak.science.packUtilityTech, recipe.name)
	
	end
	local miningData = data.raw["mining-drill"]["Schall-uranium-mining-drill"]
	miningData.mining_speed = 3
	miningData.module_specification.module_slots = 6
	miningData.resource_searching_radius = 4.98
	
end
