--- using
local ITEM = momoIRTweak.FastItem


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