function momoTweak.compatibility.msp.PackRecipe()
	local ITEM = momoIRTweak.FastItem
	local Replace = momoIRTweak.recipe.ReplaceIngredient
	local ReplaceAll = momoIRTweak.recipe.ReplaceAllIngredient
	local Rem = momoIRTweak.recipe.RemoveIngredient
	local electronics = momoTweak.electronics
	local circuit = momoTweak.circuit
	local board = momoTweak.board
	local components = momoTweak.components
	local Pack = momoTweak.science.GetMoreSciencePack
	local AddIng = momoIRTweak.recipe.SafeAddIngredient

	ReplaceAll(Pack(1), {
		ITEM("angels-ore1-crushed", 2),
		ITEM("angels-ore3-crushed", 2),
	})
	
	momoIRTweak.recipe.UnlockAtRef(Pack(2), momoTweak.science.red)
	ReplaceAll(Pack(2), {
		ITEM("stone", 5),
		ITEM("burner-inserter", 1)
	})
	
	Replace(Pack(3), "light-armor", ITEM("stone-brick", 6))
	
	ReplaceAll(Pack(5), {
		ITEM(circuit.red, 2),
		ITEM("wood", 2),
		ITEM("coal", 5),
	})
	
	ReplaceAll(Pack(6), {
		ITEM("construction-frame-2", 1),
		ITEM("solder", 9)
	})

	AddIng(Pack(7), ITEM(momoTweak.item.platePack.name, 1))					
	AddIng(Pack(8), ITEM(momoTweak.item.platePack.name, 2))
	AddIng("more-science-pack-9", {"brass-alloy", 3})

	AddIng(Pack(10), ITEM("solid-carbon", 4))
	
	AddIng(Pack(11), ITEM("clay-brick", 12))
	
	AddIng(Pack(19), ITEM("clay-brick", 40))
	
	AddIng(Pack(12), ITEM("mixing-furnace", 1))
	
	AddIng(Pack(13), ITEM("zinc-plate", 12))
	
	AddIng(Pack(14), ITEM("clay-brick", 15))
	AddIng(Pack(14), ITEM("zinc-plate", 5))
	
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
	
	bobmods.lib.recipe.add_ingredient("more-science-pack-26", {"plastics-bar", 5})
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
