function momoTweak.recipe.Nickel()
	local AddIng = momoIRTweak.recipe.SafeAddIngredient
	local ITEM = momoIRTweak.FastItem
	
	local nickel = ITEM("nickel-plate", 1)
	local nickel2 = ITEM("nickel-plate", 2)
	AddIng("angels-plating", nickel)
	AddIng("angels-strut", nickel2)
	
	AddIng("angels-fluidchamber", nickel)
	AddIng("angels-energycrystal", nickel)
	
	AddIng("angels-servo-motor-3", nickel)
end