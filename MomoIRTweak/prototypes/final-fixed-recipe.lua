function momoIRTweak.finalFixes.Recipe()
	--- using
	local ITEM = momoIRTweak.FastItem
	local AddIng = momoIRTweak.recipe.AddIngredient


	AddIng("k-transport-belt", ITEM("steel-rod", 1))
	AddIng("k-transport-belt", ITEM("chromium-gear-wheel", 1))
	AddIng("k-transport-belt", ITEM("chromium-plate-heavy", 1))
	AddIng("k-transport-belt", ITEM("controller-mk3", 1))
end