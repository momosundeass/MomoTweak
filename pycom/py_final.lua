
if data.raw.item["plate-pack-1"] then

	bobmods.lib.recipe.replace_ingredient(momoTweak.genRecipeNameFromResult({"bronze-pack", 1}), "lead-plate", "plate-pack-1")

	if data.raw.recipe["more-science-pack-8"] then
		bobmods.lib.recipe.replace_ingredient("more-science-pack-8", "lead-plate", "plate-pack-1")
	end 
	
	
end

bobmods.lib.recipe.add_ingredient("carbon-filter", {"wpu", 1})
bobmods.lib.recipe.add_ingredient("co2-absorber", {"wpu", 1})
bobmods.lib.recipe.add_ingredient("gasifier", {"wpu", 1})


if momoTweak.pyfu then
	bobmods.lib.recipe.add_ingredient("xyhiphoe-pool", {"tailings-pond", 1})
	bobmods.lib.recipe.add_ingredient("gas-separator", {"tailings-pond", 1})
	
	bobmods.lib.recipe.add_ingredient("plankton-farm", {"tailings-pond", 2})
	
	bobmods.lib.recipe.add_ingredient("secondary-crusher", {"jaw-crusher", 1})
end

