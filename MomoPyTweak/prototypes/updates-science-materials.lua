
--- using
local ITEM = momoIRTweak.FastItem
local NewRecipe = momoIRTweak.recipe.NewRecipe
local sci = momoPyTweak.science
local AddIng = momoIRTweak.recipe.SaveAddIngredient
local FindTechnology = momoIRTweak.technology.FindAllFromRecipe
local UnlockEffect = momoIRTweak.technology.AddUnlockEffect

function momoPyTweak.updates.ScienceMaterials()
	local function UnlockRecipe(techName, recipe)
		UnlockEffect(techName, recipe.name)
	end

    --- red
	NewRecipe("crafting", momoPyTweak.item.pack1, 3, {
		ITEM("iron-stick", 1)
	}, 1.5).enabled = true
	
	--- green
	UnlockRecipe("coal-processing-1", 
		NewRecipe("crafting", momoPyTweak.item.pack2, 2, {
			ITEM(sci.pack1, 1)
		}, 4))
	
	--- blue
	UnlockRecipe("fine-electronics", 
		NewRecipe("advanced-crafting", momoPyTweak.item.pack3, 4, {
			ITEM(sci.pack2, 1),
			ITEM(sci.pack1, 1),
		}, 8))
	
	--- military
	UnlockRecipe("military-science-pack", 
		NewRecipe("advanced-crafting", momoPyTweak.item.packMilitary, 3, {
			ITEM(sci.pack1, 2)
		}, 6))
	
	--- production
	UnlockRecipe("diamond-mining", 
		NewRecipe("advanced-crafting", momoPyTweak.item.packProduction, 4, {
			ITEM(sci.pack2, 2),
			ITEM(sci.packMilitary, 1),
		}, 12))
	
	--- utility
	UnlockRecipe("nano-tech", 
		NewRecipe("advanced-crafting", momoPyTweak.item.packUtility, 3, {
			ITEM(sci.pack3, 2),
			ITEM(sci.packMilitary, 1),
		}, 18))
	
	AddIng(sci.pack1, ITEM(momoPyTweak.item.pack1, 1))
	AddIng(sci.pack2, ITEM(momoPyTweak.item.pack2, 1))
	AddIng(sci.pack3, ITEM(momoPyTweak.item.pack3, 1))
	AddIng(sci.packMilitary, ITEM(momoPyTweak.item.packMilitary, 1))
	AddIng(sci.packProduction, ITEM(momoPyTweak.item.packProduction, 1))
	AddIng(sci.packUtility, ITEM(momoPyTweak.item.packUtility, 1))
end