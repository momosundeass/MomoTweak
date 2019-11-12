
function momoIRTweak.updates.Electronics()
	if (momoIRTweak.electronics.isHarder) then
		--using 
		local eles = momoIRTweak.electronics
		local ITEM = momoIRTweak.FastItem
		local AddIng = momoIRTweak.recipe.AddIngredient
		
		
		local isUnlock = false
		momoIRTweak.recipe.NewRecipe("crafting", eles.pcb1.name, 3, {
			ITEM("wood-beam", 3),
			ITEM("copper-cable", 1),
			ITEM("tin-rivet", 1)
		}, 3).enabled = isUnlock
		
		
		momoIRTweak.recipe.NewRecipe("advanced-crafting", eles.pcb2.name, 1, {
			ITEM(eles.pcb1.name, 1),
			ITEM("k-silicon-wafer", 1),
			ITEM("tin-plate", 1),
			ITEM("tin-rivet", 1)
		}, 1).enabled = isUnlock
		
		momoIRTweak.recipe.NewRecipe("advanced-crafting", eles.pcb3.name, 1, {
			ITEM(eles.pcb2.name, 1),
			ITEM(eles.pcb1.name, 1), 
			ITEM("gold-foil", 1),
			ITEM("glass-cable", 1),
			ITEM("chromium-rivet", 1)
		}, 1).enabled = isUnlock
		
		AddIng("controller-mk1", ITEM(eles.pcb1.name, 8))
		AddIng("controller-mk2", ITEM(eles.pcb2.name, 6))
		AddIng("controller-mk3", ITEM(eles.pcb3.name, 4))
		
		local tech = momoIRTweak.technology.FindFromRecipe("controller-mk1")
		momoIRTweak.technology.AddUnlockEffect(tech, eles.pcb1.name)
		
		tech = momoIRTweak.technology.FindFromRecipe("controller-mk2")
		momoIRTweak.technology.AddUnlockEffect(tech, eles.pcb2.name)
		
		tech = momoIRTweak.technology.FindFromRecipe("controller-mk3")
		momoIRTweak.technology.AddUnlockEffect(tech, eles.pcb3.name)
		--- 
	end

end