if not momoTweak.compatibility.bioIndustries then momoTweak.compatibility.bioIndustries = {} end

function momoTweak.compatibility.bioIndustries.FixDuplicateProductionSciencePack()
	local recipeName = "bi_recipe_production_science_pack"
	momoIRTweak.recipe.ValidateRecipe(recipeName, function(recipe) 
		local techName = momoIRTweak.technology.FindFromRecipe(recipeName)
		momoIRTweak.technology.RemoveUnlockEffect(techName, recipeName)
	end)
end
