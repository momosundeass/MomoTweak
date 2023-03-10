function momoPyTweak.updates.WaterFill()
	if not (settings.startup["momo-waterFill"].value) then return end
	
	local ITEM = momoIRTweak.FastItem
	
	momoIRTweak.technology.AddPrerequire("waterfill", "cliff-explosives")
	momoIRTweak.recipe.SafeAddIngredient("waterfill", ITEM("cliff-explosives"))
end