local ele = momoTweak.ele
if data.raw["tool"]["more-science-pack-1"] then

  momoTweak.replace_with_ingredient("more-science-pack-2", "burner-mining-drill", {"building-pack", 1})
  bobmods.lib.recipe.replace_ingredient("more-science-pack-3", "light-armor", "stone-wall")
  bobmods.lib.recipe.add_ingredient("more-science-pack-4", {"building-pack", 2})
  
  bobmods.lib.recipe.add_ingredient("more-science-pack-5", {ele.circuit[1], 2})

  bobmods.lib.recipe.add_ingredient("more-science-pack-6", {"solder-alloy", 9})
  bobmods.lib.recipe.add_ingredient("more-science-pack-6", {"plate-pack-1", 1})
  
  bobmods.lib.recipe.add_ingredient("more-science-pack-7", {"plate-pack-1", 1})
  
  bobmods.lib.recipe.remove_ingredient("more-science-pack-8", "electronic-circuit")
  bobmods.lib.recipe.add_ingredient("more-science-pack-8", {"plate-pack-1", 1})
  
  bobmods.lib.recipe.add_ingredient("more-science-pack-9", {"brass-alloy", 3})
  
  bobmods.lib.recipe.add_ingredient("more-science-pack-10", {"chemical-boiler", 1})
  bobmods.lib.recipe.add_ingredient("more-science-pack-10", {"plate-pack-1", 1})
  
  bobmods.lib.recipe.replace_ingredient("chemical-boiler", "pipe", "copper-pipe")
  
  if data.raw.item["carbon"] then
    bobmods.lib.recipe.add_ingredient("more-science-pack-10", {"carbon", 2})
  end
  
  if data.raw.item["clay-brick"] then
    bobmods.lib.recipe.add_ingredient("more-science-pack-11", {"clay-brick", 8})
    bobmods.lib.recipe.add_ingredient("more-science-pack-13", {"clay-brick", 5})
    bobmods.lib.recipe.add_ingredient("more-science-pack-14", {"clay-brick", 5})
    bobmods.lib.recipe.add_ingredient("more-science-pack-19", {"clay-brick", 20})
  end
  
  bobmods.lib.recipe.add_ingredient("more-science-pack-12", {"mixing-furnace", 1})
  
  -- zinc for sci 13, 14, 16
  bobmods.lib.recipe.add_ingredient("more-science-pack-13", {"zinc-plate", 2})
  bobmods.lib.recipe.add_ingredient("more-science-pack-14", {"zinc-plate", 5})
  bobmods.lib.recipe.add_ingredient("more-science-pack-16", {"zinc-plate", 6})
  
  
  bobmods.lib.recipe.add_ingredient("more-science-pack-15", {"glass", 12})
  bobmods.lib.recipe.replace_ingredient("more-science-pack-17", "medium-electric-pole", "medium-electric-pole-3")
  bobmods.lib.recipe.replace_ingredient("more-science-pack-17", "big-electric-pole", "big-electric-pole-3")
  
  -- silver 16 21 23 24 25
  bobmods.lib.recipe.add_ingredient("more-science-pack-16", {"silver-plate", 8})
  bobmods.lib.recipe.add_ingredient("more-science-pack-21", {"silver-plate", 8})
  for i=23,25 do
    bobmods.lib.recipe.add_ingredient("more-science-pack-"..i, {"silver-plate", 4})
  end
  
  
  bobmods.lib.recipe.add_ingredient("more-science-pack-17", {"cobalt-plate", 4})
  bobmods.lib.recipe.add_ingredient("more-science-pack-21", {"lead-plate", 12})
  
  
  
  bobmods.lib.recipe.add_ingredient("more-science-pack-18", {ele.board[3], 20})
  bobmods.lib.recipe.add_ingredient("more-science-pack-18", {"copper-plate", 28})
  
  momoTweak.set_amount_ingredient("more-science-pack-20", {"red-stack-inserter", 7})
  bobmods.lib.recipe.add_ingredient("more-science-pack-20", {"electric-chemical-mixing-furnace", 1})
  
  --22
  momoTweak.set_amount_ingredient("more-science-pack-22", {"express-transport-belt", 6})
  momoTweak.set_amount_ingredient("more-science-pack-22", {"express-underground-belt", 2})
  
  bobmods.lib.recipe.add_ingredient("more-science-pack-23", {ele.comp[3], 7})
  
  -- nitinol for sci 24 25 26 27 28
  for i=24,28 do
    bobmods.lib.recipe.add_ingredient("more-science-pack-"..i, {"nitinol-gear-wheel", 2})
  end
  
  
  bobmods.lib.recipe.add_ingredient("more-science-pack-26",{"nitinol-alloy", 4})
  bobmods.lib.recipe.add_ingredient("more-science-pack-27",{"nitinol-alloy", 4})
  
  bobmods.lib.recipe.add_ingredient("more-science-pack-28", {"tungsten-axe", 1})
  bobmods.lib.recipe.add_ingredient("more-science-pack-28", {"titanium-chest", 3})
  bobmods.lib.recipe.add_ingredient("more-science-pack-28", {"advanced-plastics", 5})
  
  bobmods.lib.recipe.add_ingredient("more-science-pack-29", {"silver-zinc-battery", 30})
  bobmods.lib.recipe.add_ingredient("more-science-pack-29", {"bob-construction-robot-4", 3})
  bobmods.lib.recipe.add_ingredient("more-science-pack-29", {"bob-logistic-robot-5", 1})
  
  local items = {}
  for i, ing in pairs(data.raw.recipe["more-science-pack-30"].ingredients) do
    local item = bobmods.lib.item.basic_item(ing)
	if item ~= nil then table.insert(items, {item.name, item.amount * 5}) end
  end
  data.raw.recipe["more-science-pack-30"].ingredients = items
  bobmods.lib.recipe.add_ingredient("more-science-pack-30", {"heat-shield-tile", 5})
  bobmods.lib.recipe.add_ingredient("more-science-pack-30", {ele.unit[4], 25})
end