function momoTweak.recipe.ScienceComponents()
	local ITEM = momoIRTweak.FastItem
	local NEW = momoIRTweak.recipe.NewRecipe
	local AddIng = momoIRTweak.recipe.SafeAddIngredient
	local Unlock = momoIRTweak.recipe.UnlockAtRef
	local Replace = momoIRTweak.recipe.ReplaceIngredient
	local myItem = momoTweak.item
	
	local platePack = NEW("crafting-machine", myItem.platePack.name, 1, {
		ITEM(myItem.lead.smallPlate.name, 2),
		ITEM("tin-plate", 3),
		ITEM("iron-plate", 1)
	}, 6)
	
	local leadSmallPlate = NEW("crafting-machine", myItem.lead.smallPlate.name, 2, {
		ITEM("lead-plate", 1)
	}, 3)
	
	
	Unlock(leadSmallPlate.name, "science-force-analyzer")
	Unlock(platePack.name, "science-force-analyzer")
	
	AddIng("science-force-analyzer", ITEM(platePack.name, 2))
	
	local e1 = NEW("electronics", momoTweak.item.electronics1.name, 2, {
		ITEM("lead-plate", 2),
		ITEM(momoTweak.circuit.red, 1),
		ITEM(momoTweak.electronics.red, 2),
		ITEM("solder", 2),
	}, 4)
	Unlock(e1.name, momoTweak.science.red)
	Replace(momoTweak.science.red, momoTweak.electronics.red, ITEM(e1.name, 1))
	
	local e2 = NEW("electronics", momoTweak.item.electronics2.name, 2, {
		ITEM("tinned-copper-cable", 4),
		ITEM(momoTweak.bob.components.resistor, 1),
		ITEM(momoTweak.circuit.green, 1),
		ITEM(momoTweak.electronics.green, 2),
		ITEM("solder", 3),
	}, 8)
	Unlock(e2.name, momoTweak.science.green)
	Replace(momoTweak.science.green, momoTweak.electronics.green, ITEM(e2.name, 1))
	
	local e3 = NEW("electronics", momoTweak.item.electronics3.name, 2, {
		ITEM(momoTweak.bob.components.microchip, 2),
		ITEM(momoTweak.bob.components.resistor, 2),
		ITEM(momoTweak.circuit.orange, 1),
		ITEM(momoTweak.electronics.orange, 2),
		ITEM("solder", 3),
	}, 12)
	Unlock(e3.name, momoTweak.science.orange)
	Replace(momoTweak.science.orange, momoTweak.electronics.orange, ITEM(e3.name, 1))
	
	local e4 = NEW("electronics", momoTweak.item.electronics4.name, 2, {
		ITEM(momoTweak.bob.components.microchip, 2),
		ITEM(momoTweak.components.transformer, 2),
		ITEM(momoTweak.circuit.blue, 1),
		ITEM(momoTweak.electronics.blue, 2),
		ITEM("solder", 3),
	}, 12)
	Unlock(e4.name, momoTweak.science.blue)
	Replace(momoTweak.science.blue, momoTweak.electronics.blue, ITEM(e4.name, 1))
	
	local e5 = NEW("electronics", momoTweak.item.electronics5.name, 2, {
		ITEM(momoTweak.components.transformer, 2),
		ITEM(momoTweak.bob.components.cpu, 2),
		ITEM(momoTweak.circuit.yellow, 1),
		ITEM(momoTweak.electronics.yellow, 2),
		ITEM("solder", 3),
	}, 12)
	Unlock(e5.name, momoTweak.science.yellow)
	Replace(momoTweak.science.yellow, momoTweak.electronics.yellow, ITEM(e5.name, 1))
end