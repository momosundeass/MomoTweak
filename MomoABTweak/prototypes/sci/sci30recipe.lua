function momoTweak.require.Sci30Recipe()
	local ele = momoTweak.ele
	if data.raw["tool"]["more-science-pack-1"] then
		momoTweak.replace_with_ingredient("more-science-pack-2", "burner-mining-drill", {"building-pack", 1})
		bobmods.lib.recipe.replace_ingredient("more-science-pack-3", "light-armor", "stone-wall")
		bobmods.lib.recipe.add_ingredient("more-science-pack-4", {"building-pack", 2})
		
		bobmods.lib.recipe.add_ingredient("more-science-pack-5", {ele.circuit[1], 2})
	
		bobmods.lib.recipe.add_ingredient("more-science-pack-6", {"solder-alloy", 9})
		
		bobmods.lib.recipe.add_ingredient("more-science-pack-7", {"plate-pack-1", 1})
		
		bobmods.lib.recipe.remove_ingredient("more-science-pack-8", "electronic-circuit")
		bobmods.lib.recipe.add_ingredient("more-science-pack-8", {"plate-pack-1", 1})
		
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
		bobmods.lib.recipe.add_ingredient("more-science-pack-17", {momoTweak.ele.unit[2], 3})
		
		bobmods.lib.recipe.add_ingredient("more-science-pack-18", {ele.board[3], 20})
		
		momoTweak.set_amount_ingredient("more-science-pack-20", {"red-stack-inserter", 7})
		bobmods.lib.recipe.add_ingredient("more-science-pack-20", {"electric-chemical-mixing-furnace", 1})
		
		bobmods.lib.recipe.add_ingredient("more-science-pack-21", {"shot", 18})
	
		momoTweak.set_amount_ingredient("more-science-pack-22", {"express-transport-belt", 6})
		momoTweak.set_amount_ingredient("more-science-pack-22", {"express-underground-belt", 2})
		
		bobmods.lib.recipe.add_ingredient("more-science-pack-23", {ele.comp[3], 7})
		bobmods.lib.recipe.add_ingredient("more-science-pack-23", {momoTweak.module.board.b, 8})
		
		bobmods.lib.recipe.add_ingredient("more-science-pack-24", {"robot-brain-construction-3", 1})
		bobmods.lib.recipe.add_ingredient("more-science-pack-24", {"robot-brain-logistic-3", 1})
		
		bobmods.lib.recipe.add_ingredient("more-science-pack-25", {"silicon", 8})
		-- nitinol for sci 24 25 26 27 28
		for i=26,28 do
			bobmods.lib.recipe.add_ingredient("more-science-pack-"..i, {"nitinol-gear-wheel", 3})
		end
		
		bobmods.lib.recipe.add_ingredient("more-science-pack-26", {"advanced-plastics", 5})
		momoTweak.replace_with_ingredient("more-science-pack-26", "battery", {"silver-zinc-battery", 3})
		
		bobmods.lib.recipe.add_ingredient("more-science-pack-27", {"nitinol-alloy", 4})
		
		bobmods.lib.recipe.add_ingredient("more-science-pack-28", {momoTweak.ele.unit[4], 3})
		bobmods.lib.recipe.add_ingredient("more-science-pack-28", {"advanced-plastics", 10})
		
		bobmods.lib.recipe.add_ingredient("more-science-pack-29", {"silver-zinc-battery", 30})
		bobmods.lib.recipe.add_ingredient("more-science-pack-29", {"bob-construction-robot-4", 3})
		bobmods.lib.recipe.add_ingredient("more-science-pack-29", {"bob-logistic-robot-5", 1})
		
		if (data.raw.recipe["more-science-pack-30"]) then
			local items = {}
			for i, ing in pairs(momoTweak.get_ingredients("more-science-pack-30")) do
				local item = bobmods.lib.item.basic_item(ing)
				if item ~= nil then table.insert(items, {item.name, item.amount * 5}) 
			end
		end
		data.raw.recipe["more-science-pack-30"].ingredients = items
		bobmods.lib.recipe.add_ingredient("more-science-pack-30", {"heat-shield-tile", 5})
		bobmods.lib.recipe.add_ingredient("more-science-pack-30", {ele.unit[4], 25})
		end
	end
end