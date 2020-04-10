function momoTweak.updates.HarderElectronics()
	local ITEM = momoIRTweak.FastItem
	local AddIng = momoIRTweak.recipe.SafeAddIngredient
	local ele = momoTweak.electronics
	local SetTime = momoIRTweak.recipe.SetTime
	
	AddIng(ele.red, ITEM(momoTweak.circuit.grey, 1))
	AddIng(ele.green, ITEM(ele.red, 1))
	AddIng(ele.orange, ITEM(ele.green, 1))
	AddIng(ele.blue, ITEM(ele.orange, 1))
	AddIng(ele.yellow, ITEM(ele.blue, 1))
	
	SetTime(ele.red, 3)
	SetTime(ele.green, 6)
	SetTime(ele.orange, 9)
	SetTime(ele.blue, 12)
	SetTime(ele.red, 15)
	SetTime(ele.yellow, 20)
end