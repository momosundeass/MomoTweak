function momoTweak.recipe.Cobalt()
	local AddIng = momoIRTweak.recipe.SafeAddIngredient
	local ITEM = momoIRTweak.FastItem
	local FLUID = momoIRTweak.FastFluid
	local myItem = momoTweak.item
	local COBALT = myItem.cobalt
	local NEW = momoIRTweak.recipe.NewRecipe
	local UnlockAt = momoIRTweak.recipe.UnlockAtRef
	
	local refTech = "angels-plate-cobalt"
	
	local smallComponents = NEW("chemical-furnace", COBALT.smallComponents, 2, {
		ITEM("cobalt-plate", 2),
		FLUID(momoTweak.fluid.ferric, 5),
	}, 3)
	UnlockAt(smallComponents, refTech)
	
	local tube = NEW("mixing-furnace", COBALT.tube, 1, {
		ITEM(COBALT.smallComponents, 3),
		ITEM("brass-alloy", 1)
	}, 3)
	UnlockAt(tube, refTech)
	
	
	AddIng("cable-harness-4", ITEM(COBALT.tube, 1))
	AddIng("cable-harness-5", ITEM(COBALT.tube, 1))
end