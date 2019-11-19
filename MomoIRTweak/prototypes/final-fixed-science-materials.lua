local table = require('__stdlib__/stdlib/utils/table')
function momoIRTweak.finalFixes.ScienceMaterials()
	-- using 
	local AddIng = momoIRTweak.recipe.AddOrUpdateIngredient
	local Rep = momoIRTweak.recipe.ReplaceAllIngredient
	local Rem = momoIRTweak.recipe.RemoveIngredient
	local ITEM = momoIRTweak.FastItem
	local item = momoIRTweak.item
	local NewRecipe = momoIRTweak.recipe.NewRecipe
	local Unlock = momoIRTweak.technology.AddUnlockEffect

	local SCI = momoIRTweak.science
	local tech = momoIRTweak.technology
	local eles = momoIRTweak.electronics

	local logistic   = momoIRTweak.recipe.SaveGetResultAmount(SCI.pack2)
	local milAmount  = momoIRTweak.recipe.SaveGetResultAmount(SCI.packMilitary)
	local chemAmount = momoIRTweak.recipe.SaveGetResultAmount(SCI.pack3)
	local production = momoIRTweak.recipe.SaveGetResultAmount(SCI.packProduction)
	local utility    = momoIRTweak.recipe.SaveGetResultAmount(SCI.packUtility)
	
	local ingredients = table.deep_copy(data.raw.recipe[SCI.pack2].ingredients)
	local recipe = NewRecipe("crafting", item.spp1, 1, ingredients, 4)
	
	Rep(SCI.pack2, {
		ITEM(item.spp1.name, 1), 
		ITEM(item.vial.name, logistic)
	})

	-- this need to hard code cause there are demo tech
	Unlock("logistic-science-pack", recipe.name)
	Unlock("demo-science-pack", recipe.name)

	ingredients = table.deep_copy(data.raw.recipe[SCI.packMilitary].ingredients)
	recipe = NewRecipe("advanced-crafting", item.sppMilitary, 1, ingredients, 6)
	
	Rep(SCI.packMilitary, {
		ITEM(item.sppMilitary.name, 1), 
		ITEM(item.vial.name, milAmount)
	})
	Unlock(tech.military, recipe.name)

	ingredients = table.deep_copy(data.raw.recipe[SCI.pack3].ingredients)
	recipe = NewRecipe("advanced-crafting", item.spp2, 1, ingredients, 20)
	Rep(SCI.pack3, {
		ITEM(item.spp2.name, 1), 
		ITEM(item.vial.name, chemAmount)
	})
	Unlock(tech.pack3, recipe.name)

	ingredients = table.deep_copy(data.raw.recipe[SCI.packProduction].ingredients)
	recipe = NewRecipe("advanced-crafting", item.sppProduction, 1, ingredients, 20)
	
	Rep(SCI.packProduction, {
		ITEM(item.sppProduction.name, 1), 
		ITEM(item.vial.name, production)
	})
	Unlock(tech.production, recipe.name)

	ingredients = table.deep_copy(data.raw.recipe[SCI.packUtility].ingredients)
	recipe = NewRecipe("advanced-crafting", item.spp3, 1, ingredients, 20)
	Rep(SCI.packUtility, {
		ITEM(item.spp3.name, 1), 
		ITEM(item.vial.name, utility)
	})
	Unlock(tech.utility, recipe.name)


	if (SCI.isHarderPack) then		
		--- ===========================================================================
		--- logistic ==================================================================
		AddIng(item.spp1.name, ITEM("transport-belt", logistic))
		--- logistic ==================================================================
		
		--- ===========================================================================
		--- chemical ==================================================================
		local computerPerSciencePack = 0.1
		
		Rem(item.spp2.name, "controller-mk1")
		local com1Amount = math.floor(1 / (chemAmount * computerPerSciencePack)
		local sciCom1 = NewRecipe("advanced-crafting", item.scienceComputer1, com1Amount), {
			ITEM("computer-mk1", 1)
		}, com1Amount * 2.2)
		Unlock(tech.pack3, sciCom1.name)
		
		AddIng(item.spp2.name, ITEM(sciCom1, 1))
		AddIng(item.spp2.name, ITEM("inserter", chemAmount * 2))
		
		AddIng(SCI.pack3, ITEM(item.scienceBlueprint1, chemAmount * 2))
		--- chemical ==================================================================
		
		--- ===========================================================================
		--- utility ===================================================================
		local com2Amount = math.floor(1 / (utility * computerPerSciencePack)
		local sciCom2 = NewRecipe("advanced-crafting", item.scienceComputer2, com2Amount), {
			ITEM("computer-mk2", 1)
			ITEM("assembling-machine-2", 1)
		}, com2Amount * 2.2)
		Unlock(tech.utility, sciCom2.name)
		
		AddIng(item.spp3.name, ITEM(sciCom2, 1))
		AddIng(item.spp3.name, ITEM("advanced-battery", utility * 2))
		AddIng(item.spp3.name, ITEM("uranium-fuel-cell", utility * 1))
		
		AddIng(SCI.packUtility, ITEM(item.scienceBlueprint3, utility * 3))
		AddIng(SCI.packUtility, ITEM(item.gpu, utility * 2))
		--- utility ===================================================================
		
		--- ===========================================================================
		--- military ==================================================================
		AddIng(item.sppMilitary.name, {"pistol", milAmount})
		AddIng(SCI.packMilitary, ITEM(item.productionBox, milAmount))
		--- military ==================================================================
		
		--- ===========================================================================
		--- production ================================================================
		AddIng(item.sppProduction.name, ITEM("controller-mk2", production * 3))
		AddIng(item.sppProduction.name, ITEM("junction-box", production * 2))
		
		AddIng(SCI.packProduction, ITEM(item.scienceBlueprint2, production * 3))
		--- production ================================================================
		
		AddIng("k-experimental-data", ITEM("imersite-glass", 6))
		
		---- k data
		AddIng(SCI.k1, ITEM("bronze-plate", 2))
		
		AddIng(SCI.k2, ITEM(item.gpu, 1))
		AddIng(SCI.k2, ITEM("glass-plate", 3))
		
		AddIng(SCI.kMilitary, ITEM(item.gpu, 1))
		
		AddIng(SCI.k3, ITEM(item.gpu, 2))
		AddIng(SCI.k3, ITEM(momoIRTweak.machine.pumpjack, 1))
		
		AddIng(SCI.kProductionUtility, ITEM(item.gpu, 6))
		AddIng(SCI.kProductionUtility, ITEM(momoIRTweak.machine.assembler3, 1))
		
		AddIng(SCI.kMatter, ITEM(item.gpu, 4))
		
		AddIng(SCI.kSpace, ITEM(item.gpu, 6))
		
		if (eles.isHarder) then
			AddIng(SCI.kEmpty, ITEM(eles.pcb2, 1))
			AddIng(SCI.kProductionUtility, ITEM("controller-mk3", 1))
			AddIng(SCI.kMatter, ITEM("controller-mk3", 1))
			AddIng(SCI.kSpace, ITEM("controller-mk3", 2))
		end
		
	end
end