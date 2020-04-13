
function momoTweak.updates.HarderElectronics()
	local ITEM = momoIRTweak.FastItem
	local FLUID = momoIRTweak.FastFluid
	local AddIng = momoIRTweak.recipe.SafeAddIngredient
	local Replace = momoIRTweak.recipe.ReplaceIngredient
	local Rem = momoIRTweak.recipe.RemoveIngredient
	local ele = momoTweak.electronics
	local components = momoTweak.components
	local SetTime = momoIRTweak.recipe.SetTime
	local wire = momoTweak.wire
	local NEW = momoIRTweak.recipe.NewRecipe
	local UnlockAt = momoIRTweak.recipe.UnlockAtRef
	local bobComponenets = momoTweak.bob.components
	
	AddIng(ele.red, ITEM(momoTweak.circuit.grey, 1))
	AddIng(ele.green, ITEM(ele.red, 1))
	AddIng(ele.orange, ITEM(ele.green, 1))
	AddIng(ele.blue, ITEM(ele.orange, 1))
	AddIng(ele.yellow, ITEM(ele.blue, 1))
	
	SetTime(ele.red, 3)
	SetTime(ele.green, 6)
	SetTime(ele.orange, 9)
	SetTime(ele.blue, 12)
	SetTime(ele.yellow, 20)
	
	
	Replace(components.transistor, "iron-plate", "copper-plate")
	AddIng(components.transistor, ITEM(wire.tin, 2))
	
	AddIng(ele.orange, ITEM(components.resistor, 1))
	AddIng(components.microchip, FLUID("liquid-sulfuric-acid", 20))
	AddIng(components.microchip, ITEM("angels-wire-silver", 4))
	
	Rem(components.transformer, "iron-plate")
	
	AddIng(components.cpu, ITEM("angels-wire-platinum", 2))
	AddIng(components.cpu, FLUID("liquid-sulfuric-acid", 20))
	
	local recipe = NEW("electronics", bobComponenets.resistor, 1, {
		ITEM(components.resistor, 2),
		ITEM("iron-plate", 1)
	}, 1.5)
	UnlockAt(recipe.name, components.transistor)
	
	recipe = NEW("electronics", bobComponenets.transistor, 1, {
		ITEM(components.transistor, 2),
		ITEM("solid-carbon", 2),
		ITEM("nickel-plate", 1)
	}, 3)
	UnlockAt(recipe.name, components.microchip)
	
	recipe = NEW("electronics", bobComponenets.microchip, 1, {
		ITEM(components.microchip, 2),
		ITEM(wire.gold, 2),
		ITEM("silicon-wafer", 2)
	}, 5)
	UnlockAt(recipe.name, components.transformer)
	
	recipe = NEW("electronics", bobComponenets.cpu, 1, {
		ITEM(components.cpu, 2),
		ITEM("angels-coil-glass-fiber", 2),
		ITEM("silicon-wafer", 2),
		ITEM(wire.gold, 2),
	}, 9)
	UnlockAt(recipe.name, components.cpu)
	
	
	
	
	
	
	
	AddIng(ele.green, ITEM(bobComponenets.resistor, 1))
	Rem(ele.green, components.resistor)
	
	AddIng(ele.orange, ITEM(bobComponenets.resistor, 1))
	AddIng(ele.orange, ITEM(bobComponenets.transistor, 1))
	Rem(ele.orange, components.resistor)
	Rem(ele.orange, components.transistor)
	
	AddIng(ele.blue, ITEM(bobComponenets.resistor, 3))
	AddIng(ele.blue, ITEM(bobComponenets.transistor, 2))
	AddIng(ele.blue, ITEM(bobComponenets.microchip, 2))
	Rem(ele.blue, components.resistor)
	Rem(ele.blue, components.transistor)
	Rem(ele.blue, components.microchip)
	
	AddIng(ele.yellow, ITEM(bobComponenets.resistor, 3))
	AddIng(ele.yellow, ITEM(bobComponenets.transistor, 3))
	AddIng(ele.yellow, ITEM(bobComponenets.microchip, 4))
	AddIng(ele.yellow, ITEM(components.transformer, 2))
	Rem(ele.yellow, components.resistor)
	Rem(ele.yellow, components.transistor)
	Rem(ele.yellow, components.microchip)
end