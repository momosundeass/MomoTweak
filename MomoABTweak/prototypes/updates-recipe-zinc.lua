function momoTweak.recipe.Zinc()
	local AddIng = momoIRTweak.recipe.SafeAddIngredient
	local ITEM = momoIRTweak.FastItem
	local FLUID = momoIRTweak.FastFluid
	local myItem = momoTweak.item
	local ZINC = myItem.zinc
	local NEW = momoIRTweak.recipe.NewRecipe
	local UnlockAt = momoIRTweak.recipe.UnlockAtRef

	local zinc = ITEM("zinc-plate", 1)
	local zinc2 = ITEM("zinc-plate", 2)
	
	local refTech = "angels-plate-zinc"
	
	local plate = NEW("crafting", ZINC.smallPlate, 1, {
		zinc
	}, 1.25)
	UnlockAt(plate, refTech)
	
	local complex = NEW("crafting", ZINC.complexComponents, 2, {
		ITEM("zinc-plate", 5), 
		ITEM(ZINC.smallComponents, 2),
		ITEM("plastic-bar", 2),
		ITEM("nickel-plate", 2),
	}, 5)
	UnlockAt(complex, refTech)
	
	local smallComponents = NEW("chemical-furnace", ZINC.smallComponents, 2, {
		zinc2,
		FLUID(momoTweak.fluid.ferric, 5),
	}, 3)
	UnlockAt(smallComponents, refTech)
	
	local tube = NEW("mixing-furnace", ZINC.tube, 1, {
		ITEM(ZINC.smallComponents, 3),
		ITEM("brass-alloy", 1)
	}, 3)
	UnlockAt(tube, refTech)
	
	
	AddIng("angels-plating", zinc)
	AddIng("angels-strut", ITEM(ZINC.smallComponents, 2))
	
	AddIng("cable-harness-3", ITEM(ZINC.tube, 1))
	
	AddIng("angels-roller-chain", ITEM(ZINC.smallComponents, 4))
	AddIng("angels-spring", ITEM(ZINC.tube))
	
	AddIng("motor-block-3", ITEM(ZINC.smallComponents, 3))
	AddIng("motor-block-4", ITEM(ZINC.smallComponents, 3))
	AddIng("motor-block-5", ITEM(ZINC.complexComponents, 3))
	
	AddIng(momoTweak.components.cpu, ITEM(ZINC.smallPlate))
	
	AddIng("block-electronics-3", ITEM(ZINC.complexComponents, 4))
	
	AddIng("science-harmonics-analyzer", ITEM(ZINC.smallComponents, 3))
	
	AddIng("cannon-shell", ITEM(ZINC.tube), 1)
	AddIng("explosive-cannon-shell", zinc2)
	AddIng("scatter-cannon-shell", ITEM(ZINC.smallComponents, 5))
	
	AddIng("bob-laser-turret-2", ITEM("zinc-plate", 40))
	AddIng("grinding-wheel", ITEM("zinc-plate", 3))
end