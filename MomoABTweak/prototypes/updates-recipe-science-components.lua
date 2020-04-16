local ITEM = momoIRTweak.FastItem
local NEW = momoIRTweak.recipe.NewRecipe
local AddIng = momoIRTweak.recipe.SafeAddIngredient
local Unlock = momoIRTweak.recipe.UnlockAtRef
local Replace = momoIRTweak.recipe.ReplaceIngredient
local myItem = momoTweak.item

function momoTweak.recipe.CreateScienceComponentsRecipe()
	local platePack = NEW("crafting-machine", myItem.platePack.name, 1, {
		ITEM(myItem.lead.smallPlate.name, 2),
		ITEM("tin-plate", 3),
		ITEM("iron-plate", 1)
	}, 6)
	
	Unlock(platePack.name, "science-force-analyzer")
	
	local e1 = NEW("electronics", momoTweak.item.electronics1.name, 3, {
		ITEM("lead-plate", 2),
		ITEM(momoTweak.circuit.red, 1),
		ITEM(momoTweak.electronics.red, 3),
		ITEM("solder", 3),
	}, 4)
	Unlock(e1.name, momoTweak.science.red)
	
	local e2 = NEW("electronics", momoTweak.item.electronics2.name, 3, {
		ITEM("tinned-copper-cable", 2),
		ITEM(momoTweak.bob.components.resistor, 1),
		ITEM(momoTweak.circuit.green, 1),
		ITEM(momoTweak.electronics.green, 3),
		ITEM("solder", 3),
	}, 8)
	Unlock(e2.name, momoTweak.science.green)
	
	local e3 = NEW("electronics", momoTweak.item.electronics3.name, 2, {
		ITEM(momoTweak.bob.components.microchip, 2),
		ITEM(momoTweak.bob.components.resistor, 2),
		ITEM(momoTweak.circuit.orange, 1),
		ITEM(momoTweak.electronics.orange, 2),
		ITEM("solder", 3),
	}, 12)
	Unlock(e3.name, momoTweak.science.orange)
	
	local e4 = NEW("electronics", momoTweak.item.electronics4.name, 2, {
		ITEM(momoTweak.bob.components.microchip, 2),
		ITEM(momoTweak.bob.components.transformer, 2),
		ITEM(momoTweak.circuit.blue, 1),
		ITEM(momoTweak.electronics.blue, 2),
		ITEM("solder", 3),
	}, 12)
	Unlock(e4.name, momoTweak.science.blue)
	
	local e5 = NEW("electronics", momoTweak.item.electronics5.name, 2, {
		ITEM(momoTweak.bob.components.transformer, 2),
		ITEM(momoTweak.bob.components.cpu, 2),
		ITEM(momoTweak.circuit.yellow, 1),
		ITEM(momoTweak.electronics.yellow, 2),
		ITEM("solder", 3),
	}, 12)
	Unlock(e5.name, momoTweak.science.yellow)
end
	
function momoTweak.recipe.ScienceComponentsRecipeUpdate()
	AddIng("science-force-analyzer", ITEM(myItem.platePack, 2))
	
	Replace(momoTweak.science.red, momoTweak.electronics.red, ITEM(myItem.electronics1, 1))
	Replace(momoTweak.science.green, momoTweak.electronics.green, ITEM(myItem.electronics2, 1))
	Replace(momoTweak.science.orange, momoTweak.electronics.orange, ITEM(myItem.electronics3, 1))
	Replace(momoTweak.science.blue, momoTweak.electronics.blue, ITEM(myItem.electronics4, 1))
	Replace(momoTweak.science.yellow, momoTweak.electronics.yellow, ITEM(myItem.electronics5, 1))
end