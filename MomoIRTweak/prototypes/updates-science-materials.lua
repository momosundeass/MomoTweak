function momoIRTweak.updates.ScienceMaterials()
--- using
	local AddIng = momoIRTweak.recipe.AddOrUpdateIngredient
	local Rep = momoIRTweak.recipe.ReplaceAllIngredient
	local Rem = momoIRTweak.recipe.RemoveIngredient
	local ITEM = momoIRTweak.FastItem
	local item = momoIRTweak.item
	local NewRecipe = momoIRTweak.recipe.NewRecipe
	local Unlock = momoIRTweak.technology.AddUnlockEffect

	local tech = momoIRTweak.technology
	local sci = momoIRTweak.science
	local eles = momoIRTweak.electronics

	tech.military = momoIRTweak.technology.FindFromRecipe(sci.packMilitary)
	tech.pack3 = momoIRTweak.technology.FindFromRecipe(sci.pack3)
	tech.production = momoIRTweak.technology.FindFromRecipe(sci.packProduction)
	tech.utility = momoIRTweak.technology.FindFromRecipe(sci.packUtility)

	local recipe = {}
	if (sci.isHarderPack) then
		recipe = momoIRTweak.recipe.NewRecipe("smelting-2", "momo-science-vial", 2, {
			momoIRTweak.FastItem("glass-ingot", 5)
		}, 26.6)
	else
		recipe = momoIRTweak.recipe.NewRecipe("smelting", "momo-science-vial", 3, {
			momoIRTweak.FastItem("glass-ingot", 5)
		}, 26.6)
	end
	recipe.enabled = true

	if (sci.isHarderPack) then
		recipe = NewRecipe("advanced-crafting", item.productionBox.name, 1, {
			ITEM("stone-brick", 2),
			ITEM("tin-tube", 1),
			ITEM("rubber-natural", 1)
		}, 6)
		Unlock(tech.military, recipe.name)
		
		recipe = NewRecipe("advanced-crafting", item.productionBox2.name, 2, {
			ITEM(item.productionBox.name, 6),
			ITEM("stone-wall", 7),
			ITEM("bronze-chassis-small", 1),
			ITEM("tin-plate", 6)
		}, 22)
		Unlock(tech.production, recipe.name)
		
		recipe = NewRecipe("advanced-crafting", item.scienceBlueprint1.name, 3, {
			ITEM(item.productionBox, 2),
			ITEM("glass-plate", 6),
			ITEM("electronic-circuit", 1)
		}, 20)
		Unlock(tech.pack3, recipe.name)
		
		recipe = NewRecipe("advanced-crafting", item.scienceBlueprint2.name, 5, {
			ITEM(item.productionBox2, 3),
			ITEM("gold-foil", 5),
			ITEM("advanced-battery", 3),
			ITEM("magnetron", 2)
		}, 20)
		Unlock(tech.production, recipe.name)
		
		recipe = NewRecipe("advanced-crafting", item.scienceBlueprint3.name, 3, {
			ITEM(item.productionBox2, 5),
			ITEM("k-ram", 6),
			ITEM("k-processor", 3),
			ITEM("glass-cable-heavy", 4),
			ITEM("laser", 2)
		}, 40)
		Unlock(tech.production, recipe.name)
		
		recipe = NewRecipe("advanced-crafting", item.gpu.name, 1, {
			ITEM("k-silicon-wafer", 4),
			ITEM("steel-chassis-small", 1),
			ITEM("gold-cable", 2),
			ITEM("k-ram", 2),
			ITEM("k-circuit-board", 1),
		}, 40)
		local techController = momoIRTweak.technology.FindFromRecipe("controller-mk3")
		Unlock(techController, recipe.name) 
		
		
		if (eles.isHarder) then
			AddIng(item.scienceBlueprint1.name, ITEM(eles.pcb1, 3))
			AddIng(item.scienceBlueprint2.name, ITEM(eles.pcb2, 3))
			AddIng(item.scienceBlueprint3.name, ITEM(eles.pcb3, 5))
			
			AddIng(item.gpu.name, ITEM(eles.pcb2, 1))
		end
	end
end