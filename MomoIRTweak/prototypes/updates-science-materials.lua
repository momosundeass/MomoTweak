if (momoIRTweak.science.isHarderPack) then
	local recipe = momoIRTweak.NewRecipe("smelting-2", "momo-science-vial", 2, {
		momoIRTweak.FastItem("glass-ingot", 5)
	}, 26.6)
	recipe.enabled = true
else
	local recipe = momoIRTweak.NewRecipe("smelting", "momo-science-vial", 3, {
		momoIRTweak.FastItem("glass-ingot", 5)
	}, 26.6)
	recipe.enabled = true
end