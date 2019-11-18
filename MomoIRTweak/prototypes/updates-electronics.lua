
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
			ITEM("tin-rivet", 2)
		}, 3).enabled = isUnlock
		
		
		momoIRTweak.recipe.NewRecipe("advanced-crafting", eles.pcb2.name, 2, {
			ITEM(eles.pcb1.name, 2),
			ITEM("k-silicon-wafer", 2),
			ITEM("tin-plate", 3),
			ITEM("tin-rivet", 2)
		}, 1).enabled = isUnlock
		
		momoIRTweak.recipe.NewRecipe("advanced-crafting", eles.pcb3.name, 1, {
			ITEM(eles.pcb1.name, 2), 
			ITEM(eles.pcb2.name, 1),
			ITEM("gold-foil", 1),
			ITEM("solder", 2),
			ITEM("chromium-rivet", 1)
		}, 1).enabled = isUnlock
		
		AddIng("controller-mk1", ITEM(eles.pcb1.name, 8))
		AddIng("controller-mk2", ITEM(eles.pcb2.name, 6))
		AddIng("controller-mk2", ITEM("plastic-bar", 3))
		
		AddIng("controller-mk3", ITEM(eles.pcb3.name, 4))
		AddIng("controller-mk3", ITEM("plastic-bar", 5))
		AddIng("controller-mk3", ITEM("solder", 4))
		
		AddIng("computer-mk2", ITEM("plastic-bar", 8))
		AddIng("computer-mk2-2", ITEM("plastic-bar", 8))
		
		AddIng("computer-mk3", ITEM("solder", 8))
		AddIng("computer-mk3-2", ITEM("solder", 8))
		
		AddIng("k-ram", ITEM("solder", 1))
		
		AddIng("menarite-processor", ITEM("sapphire-gem", 1))
		
		local tech = momoIRTweak.technology.FindFromRecipe("controller-mk1")
		momoIRTweak.technology.AddUnlockEffect(tech, eles.pcb1.name)
		
		tech = momoIRTweak.technology.FindFromRecipe("controller-mk2")
		momoIRTweak.technology.AddUnlockEffect(tech, eles.pcb2.name)
		
		tech = momoIRTweak.technology.FindFromRecipe("controller-mk3")
		momoIRTweak.technology.AddUnlockEffect(tech, eles.pcb3.name)
		--- 
	end

end