local c = {}

function c.UpdateUnlockRecipes()
	local greenRecipes = {
		"logistic-science-pack-alt1",
		"logistic-science-pack-alt2",
		"logistic-science-pack-alt3",
		"logistic-science-pack-alt4",
	}
	local blueRecipes = {
		"chemical-science-pack-alt1",
		"chemical-science-pack-alt2",
		"chemical-science-pack-alt3",
		"chemical-science-pack-alt4",
	}
	local productionRecipes = {
		"production-science-pack-alt1",
		"production-science-pack-alt2",
		"production-science-pack-alt3",
	}
	local grayRecipes = {
		"military-science-pack-alt1",
		"military-science-pack-alt2",
		"military-science-pack-alt3",
		"military-science-pack-alt4",
	}

	local yellowRecipes = {
		"utility-science-pack-alt1",
		"utility-science-pack-alt2",
		"utility-science-pack-alt3",
	}

	local function SetUnlockAt(recipes, technology) 
		for _, r in pairs(recipes) do
			momoIRTweak.technology.AddUnlockEffect(technology, r)			
			momoIRTweak.recipe.ValidateRecipe(r, function(recipe) 
				recipe.enabled = false
			end)
		end
	end

	SetUnlockAt(greenRecipes, "logistic-science-pack")
	SetUnlockAt(blueRecipes, "chemical-science-pack")
	SetUnlockAt(productionRecipes, "production-science-pack")
	SetUnlockAt(grayRecipes, "military-science-pack")
	SetUnlockAt(yellowRecipes, "utility-science-pack")

end

return c