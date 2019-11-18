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

	local ingredients = table.deep_copy(data.raw.recipe[SCI.pack2].ingredients)
	local recipe = NewRecipe("crafting", item.spp1.name, 1, ingredients, 4)
	Rep(SCI.pack2, {ITEM(item.spp1.name, 1), ITEM(item.vial.name, 1)})

	-- this need to hard code cause there are demo tech
	Unlock("logistic-science-pack", recipe.name)
	Unlock("demo-science-pack", recipe.name)

	ingredients = table.deep_copy(data.raw.recipe[SCI.packMilitary].ingredients)
	recipe = NewRecipe("advanced-crafting", item.sppMilitary.name, 1, ingredients, 6)
	Rep(SCI.packMilitary, {ITEM(item.sppMilitary.name, 1), ITEM(item.vial.name, 1)})
	Unlock(tech.military, recipe.name)

	ingredients = table.deep_copy(data.raw.recipe[SCI.pack3].ingredients)
	recipe = NewRecipe("advanced-crafting", item.spp2.name, 1, ingredients, 20)
	Rep(SCI.pack3, {ITEM(item.spp2.name, 1), ITEM(item.vial.name, 5)})
	Unlock(tech.pack3, recipe.name)

	ingredients = table.deep_copy(data.raw.recipe[SCI.packProduction].ingredients)
	recipe = NewRecipe("advanced-crafting", item.sppProduction.name, 1, ingredients, 20)
	Rep(SCI.packProduction, {ITEM(item.sppProduction.name, 1), ITEM(item.vial.name, 5)})
	Unlock(tech.production, recipe.name)

	ingredients = table.deep_copy(data.raw.recipe[SCI.packUtility].ingredients)
	recipe = NewRecipe("advanced-crafting", item.spp3.name, 1, ingredients, 20)
	Rep(SCI.packUtility, {ITEM(item.spp3.name, 1), ITEM(item.vial.name, 5)})
	Unlock(tech.utility, recipe.name)


	if (SCI.isHarderPack) then
		AddIng(item.spp1.name, ITEM("transport-belt", 1))
		
		Rem(item.spp2.name, "controller-mk1")
		
		momoIRTweak.recipe.MultipleIngredientsCount(item.spp2.name, 2)
		momoIRTweak.recipe.MultipleResultsCount(item.spp2.name, 2)
		
		AddIng(item.spp2.name, ITEM("computer-mk1", 1))
		AddIng(item.spp2.name, ITEM("inserter", 4))
		
		momoIRTweak.recipe.SetTime(item.spp2.name, 40)
		
		AddIng(item.spp3.name, ITEM("assembling-machine-2", 1))
		AddIng(item.spp3.name, ITEM("advanced-battery", 3))
		AddIng(item.spp3.name, ITEM("uranium-fuel-cell", 1))
		
		AddIng(item.sppMilitary.name, {"pistol", 1})
		
		AddIng(item.sppProduction.name, ITEM("controller-mk2", 3))
		AddIng(item.sppProduction.name, ITEM("junction-box", 2))
		
		AddIng(SCI.packMilitary, ITEM(item.productionBox, 1))
		AddIng(SCI.pack3, ITEM(item.scienceBlueprint1, 5))
		AddIng(SCI.packProduction, ITEM(item.scienceBlueprint2, 5))
		
		AddIng(SCI.packUtility, ITEM(item.scienceBlueprint3, 5))
		AddIng(SCI.packUtility, ITEM(item.gpu, 6))
		
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