function momoPyTweak.compatibility.FixSchallUraniumMining()
	momoIRTweak.recipe.ValidateRecipe("Schall-uranium-mining-drill", function(recipe) 
		recipe.enabled = false
	end)
end