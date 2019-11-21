
function momoIRTweak.updates.Electronics()
	if (momoIRTweak.electronics.isHarder) then
		--using 
		local eles = momoIRTweak.electronics
		local ITEM = momoIRTweak.FastItem
		local AddIng = momoIRTweak.recipe.AddIngredient
		local Rem = momoIRTweak.recipe.RemoveIngredient
		local AddIngOrUpdate = momoIRTweak.recipe.AddOrUpdateIngredient
		
		local isUnlock = false
		momoIRTweak.recipe.NewRecipe("crafting", eles.pcb1.name, 3, {
			ITEM("wood-beam", 3),
			ITEM("copper-cable", 1),
			ITEM("tin-rivet", 2)
		}, 3).enabled = isUnlock
		
		
		momoIRTweak.recipe.NewRecipe("advanced-crafting", eles.pcb2.name, 2, {
			ITEM(eles.pcb1.name, 2),
			ITEM("gold-foil", 1),
			ITEM("tin-plate", 3),
			ITEM("tin-rivet", 2)
		}, 1).enabled = isUnlock
		
		momoIRTweak.recipe.NewRecipe("advanced-crafting", eles.pcb3.name, 1, {
			ITEM(eles.pcb1.name, 2), 
			ITEM(eles.pcb2.name, 1),
			ITEM("steel-plate", 1),
			ITEM("gold-foil", 2),
			ITEM("solder", 5),
			ITEM("chromium-rivet", 2)
		}, 1).enabled = isUnlock
		
		AddIng("k-silicon", ITEM("tin-gravel", 3))
		AddIng("k-silicon-wafer", ITEM("glass-ingot", 2))
		
		momoIRTweak.recipe.SaveAddIngredient("advanced-circuit", ITEM("k-silicon-wafer", 2))
		
		momoIRTweak.recipe.SaveAddIngredient("processing-unit", ITEM("k-circuit-board", 2))
		momoIRTweak.recipe.SaveAddIngredient("processing-unit", ITEM("glass-cable", 3))
		momoIRTweak.recipe.SaveAddIngredient("processing-unit", ITEM("solder", 3))
		
		AddIng("controller-mk1", ITEM(eles.pcb1.name, 8))
		
		AddIng("controller-mk2", ITEM(eles.pcb2.name, 6))
		AddIng("controller-mk2", ITEM("plastic-bar", 10))
		
		AddIng("controller-mk3", ITEM(eles.pcb3.name, 4))
		AddIng("controller-mk3", ITEM("plastic-bar", 5))
		AddIng("controller-mk3", ITEM("solder", 8))
		
		AddIng("computer-mk2", ITEM("plastic-bar", 12))
		AddIng("computer-mk2-2", ITEM("plastic-bar", 12))
		
		AddIng("computer-mk3", ITEM("solder", 8))
		AddIng("computer-mk3-2", ITEM("solder", 8))
		
		AddIng("k-circuit-board", ITEM("steel-plate", 1))
		
		
		AddIng("k-processor", ITEM("chromium-rivet", 3))
		AddIng("k-ram", ITEM("solder", 2))
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