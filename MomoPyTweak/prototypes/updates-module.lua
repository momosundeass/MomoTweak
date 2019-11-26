function momoPyTweak.updates.Module()
	data.raw.module["speed-module"].effect = {
		speed = {bonus = 0.2},
		consumption = {bonus = 0.3}
	}
	data.raw.module["speed-module-2"].effect = {
		speed = {bonus = 0.3},
		consumption = {bonus = 0.4}
	}
	data.raw.module["speed-module-3"].effect = {
		speed = {bonus = 0.5},
		consumption = {bonus = 0.5}
	}
	
	data.raw.module["productivity-module"].effect = {
		productivity = {bonus = 0.04},
		consumption = {bonus = 0.3},
		speed = {bonus = -0.10}
	}
	data.raw.module["productivity-module-2"].effect = {
		productivity = {bonus = 0.06},
		consumption = {bonus = 0.6},
		pollution = {bonus = 0.05},
		speed = {bonus = -0.10}
	}
	data.raw.module["productivity-module-3"].effect = {
		productivity = {bonus = 0.1},
		consumption = {bonus = 0.8},
		pollution = {bonus = 0.07},
		speed = {bonus = -0.10}
	}
	
	momoIRTweak.recipe.ReplaceIngredient("speed-module",        "advanced-circuit", "pcb1")
	momoIRTweak.recipe.ReplaceIngredient("effectivity-module",  "advanced-circuit", "pcb1")
	momoIRTweak.recipe.ReplaceIngredient("productivity-module", "advanced-circuit", "pcb2")
	
	momoIRTweak.recipe.ReplaceIngredient("speed-module-2",        "processing-unit", "pcb2")
	momoIRTweak.recipe.ReplaceIngredient("effectivity-module-2",  "processing-unit", "pcb2")
	momoIRTweak.recipe.ReplaceIngredient("productivity-module-2", "processing-unit", "pcb3")	
end