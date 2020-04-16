function momoTweak.recipe.Alloy()
	local AddIng = momoIRTweak.recipe.SafeAddIngredient
	local ITEM = momoIRTweak.FastItem
	
	--- brass
	local brass = ITEM("brass-alloy", 1)
	local brass2 = ITEM("brass-alloy", 2)
	local brass3 = ITEM("brass-alloy", 3)
	local brass6 = ITEM("brass-alloy", 6)
	
	AddIng("angels-bracket", brass)
	AddIng("angels-acceleratorcoil", brass2)
	AddIng("angels-servo-motor-4", brass)
	AddIng("angels-servo-motor-5", brass3)
	AddIng("grate-titanium", brass2)
	AddIng("block-construction-3", brass6)
	AddIng("block-construction-4", brass6)
	AddIng("bob-sniper-turret-2", ITEM("brass-alloy", 20))
	
	--- invar
	local invar = ITEM("invar-alloy", 1)
	local invar6 = ITEM("invar-alloy", 6)
	local invar10 = ITEM("invar-alloy", 10)
	
	AddIng("block-construction-4", invar6)
	AddIng("block-construction-5", invar10)
	
	--- cobalt steel
	local cobaltSteel = ITEM("cobalt-steel-alloy", 1)
	local cobaltSteel5 = ITEM("cobalt-steel-alloy", 5)
	local cobaltSteel10 = ITEM("cobalt-steel-alloy", 10)
	
	AddIng("block-construction-5", cobaltSteel5)
	
	--- copper tungsten
	local tungstenCopper10 = ITEM("copper-tungsten-alloy", 10)
	AddIng("block-construction-5", tungstenCopper10)
	
	
	--- bronze
	AddIng("bob-gun-turret-2", ITEM("bronze-alloy", 40))
	AddIng("bob-sniper-turret-2", ITEM("bronze-alloy", 40))
	
end