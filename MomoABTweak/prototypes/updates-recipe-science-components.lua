function momoTweak.recipe.ScienceComponents()
	local ITEM = momoIRTweak.FastItem
	local NEW = momoIRTweak.recipe.NewRecipe
	local AddIng = momoIRTweak.recipe.SafeAddIngredient
	local Unlock = momoIRTweak.recipe.UnlockAtRef
	
	local platePack = NEW("crafting-machine", momoTweak.item.platePack.name, 2, {
		ITEM("lead-plate", 3),
		ITEM("tin-plate", 1)
	}, 6)
	Unlock(platePack.name, "science-force-analyzer")
	
	AddIng("science-force-analyzer", ITEM(platePack.name, 2))
	
end