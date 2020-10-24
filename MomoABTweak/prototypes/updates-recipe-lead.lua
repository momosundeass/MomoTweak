function momoTweak.recipe.Lead()
	local AddIng = momoIRTweak.recipe.SafeAddIngredient
	local ITEM = momoIRTweak.FastItem
	local FLUID = momoIRTweak.FastFluid
	local myItem = momoTweak.item
	local LEAD = myItem.lead
	local NEW = momoIRTweak.recipe.NewRecipe
	local UnlockAt = momoIRTweak.recipe.UnlockAtRef

	local plate = NEW("crafting-machine", LEAD.smallPlate, 2, {
		ITEM("lead-plate", 1)
	}, 3)
	local tube = NEW("chemical-furnace", LEAD.tube, 1, {
		ITEM("lead-plate", 2),
		FLUID(momoTweak.gas.air, 30)
	}, 3)
	
	UnlockAt(plate, "science-force-analyzer")
	UnlockAt(tube, "science-force-analyzer")

	AddIng("cable-harness-2", ITEM(LEAD.tube))
end