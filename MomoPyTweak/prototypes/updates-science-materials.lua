
--- using
local ITEM = momoIRTweak.FastItem
local NewRecipe = momoIRTweak.recipe.NewRecipe
local sci = momoPyTweak.science
local AddIng = momoIRTweak.recipe.SaveAddIngredient
local GetResultAmount = momoIRTweak.recipe.SafeGetResultAmount
local FindTechnology = momoIRTweak.technology.FindAllFromRecipe
local UnlockEffect = momoIRTweak.technology.AddUnlockEffect
local tech = momoIRTweak.technology

function momoPyTweak.updates.ScienceMaterials()
	local function UnlockRecipe(techName, recipe)
		UnlockEffect(techName, recipe.name)
	end

    --- red
	NewRecipe("crafting", momoPyTweak.item.pack1, 3, {
		ITEM("iron-stick", 1)
	}, 1.5).enabled = true
	
	--- green
	data.raw.technology[sci.pack2Tech].enabled = true
	tech.SetPrerequire(sci.pack2Tech, {"coal-processing-1"})
	tech.RemoveAllUnlockEffect(sci.pack2)
	UnlockEffect(sci.pack2Tech, sci.pack2)
	UnlockRecipe(sci.pack2Tech, 
		NewRecipe("crafting", momoPyTweak.item.pack2, 2, {
			ITEM("inserter", 1),
			ITEM(sci.pack1, 1),
			ITEM(momoPyTweak.item.pack1, 3)
		}, 4))
	
	--- blue
	data.raw.technology[sci.pack3Tech].enabled = true
	tech.SetPrerequire(sci.pack3Tech, {"fine-electronics"})
	tech.RemoveAllUnlockEffect(sci.pack3)
	UnlockEffect(sci.pack3Tech, sci.pack3)
	UnlockRecipe(sci.pack3Tech, 
		NewRecipe("advanced-crafting", momoPyTweak.item.pack3, 4, {
			ITEM(sci.pack2, 1),
			ITEM(sci.pack1, 1),
			ITEM("fast-transport-belt", 2)
		}, 8))
	
	--- military
	UnlockRecipe("military-science-pack", 
		NewRecipe("advanced-crafting", momoPyTweak.item.packMilitary, 4, {
			ITEM(sci.pack1, 2),
			ITEM("pistol", 1),
		}, 6))
	
	--- production
	data.raw.technology[sci.packProductionTech].enabled = true
	tech.SetPrerequire(sci.packProductionTech, {"diamond-mining"})
	tech.RemoveAllUnlockEffect(sci.packProduction)
	UnlockEffect(sci.packProductionTech, sci.packProduction)
		
	UnlockRecipe(sci.packProductionTech, 
		NewRecipe("advanced-crafting", momoPyTweak.item.packProduction, 5, {
			ITEM(sci.pack2, 3),
			ITEM(sci.packMilitary, 1),
			ITEM("electric-furnace", 1),
		}, 12))
	
	--- utility
	data.raw.technology[sci.packUtilityTech].enabled = true
	tech.SetPrerequire(sci.packUtilityTech, {"nano-tech"})
	tech.RemoveAllUnlockEffect(sci.packUtility)

	UnlockRecipe(sci.packUtilityTech, 
		NewRecipe("advanced-crafting", momoPyTweak.item.packUtility, 3, {
			ITEM(sci.pack3, 2),
			ITEM(sci.packMilitary, 2),
			ITEM("express-transport-belt", 2),
			}, 18))

	if (momoPyTweak.settings.inserter) then
		AddIng(momoPyTweak.item.packUtility.name, ITEM(momoPyTweak.item.stackInserter, 2))
	end
	
	AddIng(sci.pack1, ITEM(momoPyTweak.item.pack1, GetResultAmount(sci.pack1)))
	AddIng(sci.pack2, ITEM(momoPyTweak.item.pack2, GetResultAmount(sci.pack2)))
	AddIng(sci.pack3, ITEM(momoPyTweak.item.pack3, GetResultAmount(sci.pack3)))
	AddIng(sci.packMilitary, ITEM(momoPyTweak.item.packMilitary, GetResultAmount(sci.packMilitary)))
	AddIng(sci.packProduction, ITEM(momoPyTweak.item.packProduction, GetResultAmount(sci.packProduction)))
	AddIng("random-science-pack", ITEM(momoPyTweak.item.packProduction, GetResultAmount("random-science-pack")))
	AddIng(sci.packUtility, ITEM(momoPyTweak.item.packUtility, GetResultAmount(sci.packUtility)))
end

function momoPyTweak.updates.ScienceMaterialsAL()
	AddIng(momoPyTweak.alScience.pyPack, ITEM(momoPyTweak.item.pack3, GetResultAmount(momoPyTweak.alScience.pyPack)))
	AddIng(momoPyTweak.alScience.pyPack, ITEM(momoPyTweak.item.pack2, GetResultAmount(momoPyTweak.alScience.pyPack)))
	
	local alRecipe = momoPyTweak.alScience.recipe
	
	AddIng(alRecipe.pack2, ITEM(momoPyTweak.item.pack2, GetResultAmount(alRecipe.pack2)))
	AddIng(alRecipe.pack3, ITEM(momoPyTweak.item.pack3, GetResultAmount(alRecipe.pack3)))
	AddIng(alRecipe.packProduction, ITEM(momoPyTweak.item.packProduction, GetResultAmount(alRecipe.packProduction)))
	AddIng(alRecipe.packUtility, ITEM(momoPyTweak.item.packUtility, GetResultAmount(alRecipe.packUtility)))
end

-- due to py remove utility science pack from their tech in final fixes
function momoPyTweak.finalFixes.AddUtilitySciencePackToTechnology()
	UnlockEffect(sci.packUtilityTech, sci.packUtility)
end