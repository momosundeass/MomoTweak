--- using
local ITEM = momoIRTweak.FastItem
local Replace = momoIRTweak.recipe.ReplaceIngredientIfExist


function momoPyTweak.updates.BotRecipe()
	-- py-construction-robot-01  py-construction-robot-02  py-logistic-robot-01  py-logistic-robot-02  
	-- construction-robot-ht  logistic-robot-ht 
	momoIRTweak.recipe.SaveAddIngredient("py-construction-robot-02", ITEM("construction-robot", 1))
	momoIRTweak.recipe.SaveAddIngredient("py-logistic-robot-02", ITEM("logistic-robot", 1))
end

function momoPyTweak.updates.BalancedElectronicsCircuit()
	momoIRTweak.recipe.SaveAddIngredient("electronic-circuit", ITEM("pcb1", 2))
	momoIRTweak.recipe.SetResultCount("electronic-circuit", 10)
end

function momoPyTweak.updates.WireRecipe()
	momoIRTweak.recipe.ReplaceAllIngredient("red-wire", {
		ITEM("rubber", 5),
		ITEM("tinned-cable", 10),
		ITEM("electronic-circuit", 1)
	})
	momoIRTweak.recipe.SetResultCount("red-wire", 20)
	
	momoIRTweak.recipe.ReplaceAllIngredient("green-wire", {
		ITEM("rubber", 5),
		ITEM("tinned-cable", 10),
		ITEM("electronic-circuit", 1)
	})
	momoIRTweak.recipe.SetResultCount("green-wire", 20)
end

function momoPyTweak.updates.undergroundPipeBeltStoneRecipes() 
	Replace("underground-belt", "iron-plate", ITEM("stone", 10))
	Replace("pipe-to-ground", "iron-plate", ITEM("stone", 5))
end