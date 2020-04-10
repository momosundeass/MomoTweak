function momoTweak.compatibility.msp.PackRecipe()
	local ITEM = momoIRTweak.FastItem
	local Replace = momoIRTweak.recipe.ReplaceIngredient
	local Rem = momoIRTweak.recipe.removeIngredient
	local electronics = momoTweak.electronics
	local circuit = momoTweak.circuit
	local board = momoTweak.board
	local components = momoTweak.components
	local Pack = momoTweak.science.GetMoreSciencePack

	Replace("more-science-pack-3", "light-armor", ITEM("stone-wall", 2))
	
	bobmods.lib.recipe.add_ingredient("more-science-pack-5", ITEM(electronics.red, 1))
	
	bobmods.lib.recipe.add_ingredient("more-science-pack-6", {"solder-alloy", 9})
	
	bobmods.lib.recipe.add_ingredient(Pack(7), ITEM(momoTweak.item.platePack.name, 1))
														
	bobmods.lib.recipe.add_ingredient(Pack(8), ITEM(momoTweak.item.platePack.name, 1))
	
	bobmods.lib.recipe.add_ingredient("more-science-pack-9", {"brass-alloy", 3})
	
	bobmods.lib.recipe.add_ingredient("more-science-pack-10", {"chemical-boiler", 1})
	bobmods.lib.recipe.replace_ingredient("chemical-boiler", "pipe", "copper-pipe") 
	
	bobmods.lib.recipe.add_ingredient("more-science-pack-10", {"solid-carbon", 2})
	
	if data.raw.item["clay-brick"] then
		bobmods.lib.recipe.add_ingredient("more-science-pack-11", {"clay-brick", 12})
		bobmods.lib.recipe.add_ingredient("more-science-pack-14", {"clay-brick", 5})
		bobmods.lib.recipe.add_ingredient("more-science-pack-19", {"clay-brick", 40})
	end
	
	bobmods.lib.recipe.add_ingredient("more-science-pack-12", {"mixing-furnace", 1})
	
	bobmods.lib.recipe.add_ingredient("more-science-pack-13", {"zinc-plate", 12})
	bobmods.lib.recipe.add_ingredient("more-science-pack-14", {"zinc-plate", 5})
	
	bobmods.lib.recipe.add_ingredient("more-science-pack-15", {"glass", 12})
	
	bobmods.lib.recipe.add_ingredient("more-science-pack-16", {"flying-robot-frame", 2})
	
	bobmods.lib.recipe.add_ingredient("more-science-pack-16", {"silver-plate", 8})
	bobmods.lib.recipe.add_ingredient("more-science-pack-21", {"silver-plate", 8})
	bobmods.lib.recipe.add_ingredient("more-science-pack-25", {"silver-plate", 4})
	
	bobmods.lib.recipe.replace_ingredient("more-science-pack-17", "medium-electric-pole", "medium-electric-pole-3")
	bobmods.lib.recipe.replace_ingredient("more-science-pack-17", "big-electric-pole", "big-electric-pole-3")
	
	bobmods.lib.recipe.add_ingredient("more-science-pack-17", ITEM(electronics.orange, 1))
	
	bobmods.lib.recipe.add_ingredient("more-science-pack-18", ITEM(board.orange, 12))
	
	Replace("more-science-pack-20", "red-stack-inserter", ITEM("red-stack-inserter", 7))
	bobmods.lib.recipe.add_ingredient("more-science-pack-20", {"electric-chemical-mixing-furnace", 1})
	
	bobmods.lib.recipe.add_ingredient("more-science-pack-21", {"shot", 18})
	
	Replace("more-science-pack-22", "express-transport-belt", ITEM("express-transport-belt", 6))
	Replace("more-science-pack-22", "express-underground-belt", ITEM("express-underground-belt", 2))
	
	bobmods.lib.recipe.add_ingredient(Pack(23), ITEM(components.microchip, 7))
	bobmods.lib.recipe.add_ingredient(Pack(23), ITEM(board.blue, 8))
	
	bobmods.lib.recipe.add_ingredient("more-science-pack-24", {"robot-brain-construction-3", 1})
	bobmods.lib.recipe.add_ingredient("more-science-pack-24", {"robot-brain-logistic-3", 1})
	
	bobmods.lib.recipe.add_ingredient("more-science-pack-25", {"silicon", 8})
	-- nitinol for sci 24 25 26 27 28
	for i=26,28 do
		bobmods.lib.recipe.add_ingredient("more-science-pack-"..i, {"nitinol-gear-wheel", 3})
	end
	
	bobmods.lib.recipe.add_ingredient("more-science-pack-26", {"advanced-plastics", 5})
	Replace("more-science-pack-26", "battery", ITEM("silver-zinc-battery", 3))
	
	bobmods.lib.recipe.add_ingredient("more-science-pack-27", {"nitinol-alloy", 4})
	
	bobmods.lib.recipe.add_ingredient("more-science-pack-28", ITEM(electronics.yellow, 1))
	
	bobmods.lib.recipe.add_ingredient(Pack(29), {"silver-zinc-battery", 30})
	bobmods.lib.recipe.add_ingredient(Pack(29), {"bob-construction-robot-4", 3})
	bobmods.lib.recipe.add_ingredient(Pack(29), {"bob-logistic-robot-5", 1})
	
	if (data.raw.recipe["more-science-pack-30"]) then
		-- local items = {}
		-- for i, ing in pairs(momoTweak.get_ingredients("more-science-pack-30")) do
			-- local item = bobmods.lib.item.basic_item(ing)
			-- if item ~= nil then table.insert(items, {item.name, item.amount * 5}) 
		-- end
	end
	-- data.raw.recipe["more-science-pack-30"].ingredients = items
	bobmods.lib.recipe.add_ingredient(Pack(30), ITEM("heat-shield-tile", 5))
	bobmods.lib.recipe.add_ingredient(Pack(30), ITEM(electronics.yellow, 15))
end
