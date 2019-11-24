if settings.startup["momo-enable-progress-battery"].value then
	local battery = momoTweak.batterys
	bobmods.lib.recipe.add_ingredient(momoTweak.electricPole.medium, {momoTweak.electricPole.wood, 1})
	
	bobmods.lib.recipe.add_ingredient(battery.lithium, {battery.basic, 1})
	bobmods.lib.recipe.add_ingredient(battery.silver, {battery.lithium, 2})
	momoTweak.set_amount_ingredient(battery.silver, {"silver-oxide", 4})
	data.raw.recipe["lithium"].energy_required = 7
	data.raw.recipe["lithium-water-electrolysis"].energy_required = 7
	momoTweak.set_amount_ingredient("lithium", {"lithium-chloride", 3})
	momoTweak.set_amount_ingredient("lithium-water-electrolysis", {"lithium-chloride", 2})
	
	local electricPole = momoTweak.electricPole
	bobmods.lib.recipe.add_ingredient(electricPole.get_medium    (2), {battery.basic, 2})
	bobmods.lib.recipe.add_ingredient(electricPole.get_big       (2), {battery.basic, 2})
	bobmods.lib.recipe.add_ingredient(electricPole.get_substation(2), {battery.basic, 5})
	
	bobmods.lib.recipe.add_ingredient(electricPole.get_medium    (3), {battery.lithium, 2})
	bobmods.lib.recipe.add_ingredient(electricPole.get_big       (3), {battery.lithium, 2})
	bobmods.lib.recipe.add_ingredient(electricPole.get_substation(3), {battery.lithium, 5})
	
	bobmods.lib.recipe.add_ingredient(electricPole.get_medium    (4), {battery.silver, 2})
	bobmods.lib.recipe.add_ingredient(electricPole.get_big       (4), {battery.silver, 2})
	bobmods.lib.recipe.add_ingredient(electricPole.get_substation(4), {battery.silver, 5})
end
  
if settings.startup["momo-enable-progress-electronics"].value then
  bobmods.lib.recipe.add_ingredient("advanced-circuit", {"electronic-circuit", 1})
  bobmods.lib.recipe.add_ingredient("processing-unit", {"advanced-circuit", 1})
  bobmods.lib.recipe.add_ingredient("advanced-processing-unit", {"processing-unit", 1})
  
  bobmods.lib.recipe.add_ingredient("phenolic-board", {"copper-plate", 2})
  momoTweak.recipe.tin_board2 = "momo-phenolic-tin"
  data:extend({{
    type="recipe", 
  	name=momoTweak.recipe.tin_board2, 
  	enabled = "false",
  	energy_required = 0.5,
  	category = data.raw.recipe["phenolic-board"].category,
  	ingredients = { 
	  {"wood", 1},
	  {"resin", 1},
	  {"tin-plate", 3}
	  },
  	result="phenolic-board", 
	result_count=2,
  	}})
  local tech = momoTweak.get_tech_of_recipe("phenolic-board")
  bobmods.lib.tech.add_recipe_unlock(tech, momoTweak.recipe.tin_board2)
  -- x3 glass on fibreglass board
  data.raw.recipe["fibreglass-board"].ingredients = {{"plastic-bar", 1}, {"glass", 3}, {"electronic-components", 2}}
  if data.raw.recipe["angels-glass-fiber-board"] then
    data.raw.recipe["angels-glass-fiber-board"].ingredients ={
    {type="item", name="angels-coil-glass-fiber", amount=3},
    {type="fluid", name="liquid-resin", amount=40},
    {type="item", name="electronic-components", amount=4}
  }
  end

  -- increase copper cost for electronics
  bobmods.lib.recipe.remove_ingredient("circuit-board", "copper-plate")
  bobmods.lib.recipe.add_ingredient("circuit-board", {"copper-plate", 2})
  bobmods.lib.recipe.remove_ingredient("superior-circuit-board", "copper-plate")
  bobmods.lib.recipe.add_ingredient("superior-circuit-board", {"copper-plate", 3})
  bobmods.lib.recipe.remove_ingredient("multi-layer-circuit-board", "copper-plate")
  bobmods.lib.recipe.add_ingredient("multi-layer-circuit-board", {"copper-plate", 5})
  bobmods.lib.recipe.add_ingredient("multi-layer-circuit-board", {"gilded-copper-cable", 3})
  
  if data.raw.item["angels-wire-silver"] then
    bobmods.lib.recipe.add_ingredient("processing-electronics", {"angels-wire-silver", 5})
    data:extend({
      {
        type = "recipe",
        name = "momo-angels-wire-silver",
        enabled = "false",
        energy_required = 2,
        category = "mixing-furnace",
        subgroup = "angels-silver-casting",
        ingredients = {{"copper-cable", 1}, {"silver-plate", 1}},
        result = "angels-wire-silver"
      }
    })
    bobmods.lib.tech.add_recipe_unlock("angels-silver-smelting-2", "momo-angels-wire-silver")
  end
  bobmods.lib.recipe.set_result("silicon-wafer", {"silicon-wafer", 4})
end

if settings.startup["momo-enable-progress-furnace"].value then
  momoTweak.set_all_ingredient("steel-furnace", {
    {"stone-furnace", 1}, {"steel-plate", 6}, {"stone-brick", 5}
  })
  
  momoTweak.set_all_ingredient("mixing-steel-furnace", {
    {"mixing-furnace", 1}, {"steel-plate", 6}, {"stone-brick", 5}
  })
  
  momoTweak.set_all_ingredient("chemical-steel-furnace", {
    {"chemical-boiler", 1}, {"steel-pipe", 5}, {"steel-plate", 6}, {"stone-brick", 5},
  })
  
   bobmods.lib.recipe.add_ingredient("blast-furnace", {"stone-furnace", 4})
   bobmods.lib.recipe.add_ingredient("blast-furnace-2", {"steel-furnace", 1})
   
   bobmods.lib.recipe.add_ingredient("angels-chemical-furnace", {"chemical-boiler", 4})
   bobmods.lib.recipe.add_ingredient("angels-chemical-furnace-2", {"chemical-steel-furnace", 1})
   
   bobmods.lib.recipe.add_ingredient("ore-processing-machine", {"mixing-furnace", 4})
   bobmods.lib.recipe.add_ingredient("ore-processing-machine-2", {"mixing-steel-furnace", 1})
   
   bobmods.lib.recipe.add_ingredient("pellet-press", {"mixing-furnace", 4})
   bobmods.lib.recipe.add_ingredient("pellet-press-2", {"mixing-steel-furnace", 1})
end

if settings.startup["momo-enable-bob-extend-engine"].value then
	bobmods.lib.recipe.add_ingredient("electric-engine-unit", {"aluminium-plate", 4})
	bobmods.lib.recipe.add_ingredient("engine-unit", {"brass-alloy", 3})
end