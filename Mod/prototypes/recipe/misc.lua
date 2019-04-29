-- small-lamp
momoTweak.replace_with_ingredient("small-lamp", "iron-plate", {"glass", 3})

bobmods.lib.recipe.add_ingredient("arithmetic-combinator", {"rubber", 1})
bobmods.lib.recipe.add_ingredient("decider-combinator", {"rubber", 1})
bobmods.lib.recipe.add_ingredient("constant-combinator", {"rubber", 2})

bobmods.lib.recipe.add_ingredient("lab-2", {"rubber", 50})
bobmods.lib.recipe.add_ingredient("lab-2", {"arithmetic-combinator", 10})
bobmods.lib.recipe.add_ingredient("lab-2", {"decider-combinator", 10})

bobmods.lib.recipe.add_ingredient("lab-module", {"rubber", 75})
bobmods.lib.recipe.add_ingredient("lab-module", {"arithmetic-combinator", 15})
bobmods.lib.recipe.add_ingredient("lab-module", {"decider-combinator", 15})


-- ammo
local category = data.raw.recipe["firearm-magazine"].category
momoTweak.createRecipe(category, {{"firearm-magazine", 1}},
	{
		{"lead-plate", 3},
		{"iron-plate", 1}
	}, 1, momoTweak.get_tech_of_recipe("piercing-rounds-magazine"))
	
-- cannon-shell  explosive-cannon-shell  scatter-cannon-shell
bobmods.lib.recipe.add_ingredient("cannon-shell", {"zinc-plate", 2})
bobmods.lib.recipe.add_ingredient("explosive-cannon-shell", {"zinc-plate", 3})
bobmods.lib.recipe.add_ingredient("scatter-cannon-shell", {"zinc-plate", 4})

momoTweak.replace_with_ingredient("bob-gun-turret-2", "steel-plate", {"bronze-alloy", 40})
momoTweak.replace_with_ingredient("bob-sniper-turret-2", "steel-plate", {"bronze-alloy", 40})
momoTweak.replace_with_ingredient("bob-sniper-turret-2", "steel-gear-wheel", {"brass-gear-wheel", 20})

--laser-turret  bob-laser-turret-2  bob-laser-turret-3  bob-laser-turret-4  bob-laser-turret-5
momoTweak.replace_with_ingredient("laser-turret", "steel-plate", {"nickel-plate", 25})
momoTweak.replace_with_ingredient("bob-laser-turret-2", "steel-plate", {"zinc-plate", 40})
bobmods.lib.recipe.add_ingredient("bob-laser-turret-3", {"cobalt-plate", 40})
bobmods.lib.recipe.add_ingredient("bob-laser-turret-4", {"gold-plate", 20})
bobmods.lib.recipe.add_ingredient("bob-laser-turret-5", {"tungsten-plate", 30})

if (momoTweak.extended and momoTweak.extended.frame) then
	local frame = momoTweak.extended.frame
	bobmods.lib.recipe.add_ingredient("laser-turret", {frame.basic, 2})
	bobmods.lib.recipe.add_ingredient("bob-laser-turret-2", {frame.intermediate, 3})
	bobmods.lib.recipe.add_ingredient("bob-laser-turret-3", {frame.advanced, 3})
	bobmods.lib.recipe.add_ingredient("bob-laser-turret-4", {frame.advanced, 4})
	bobmods.lib.recipe.add_ingredient("bob-laser-turret-5", {frame.advanced, 5})
	
	
	bobmods.lib.recipe.add_ingredient("artillery-turret", {frame.advanced, 6})
	bobmods.lib.recipe.add_ingredient("bob-artillery-turret-2", {frame.advanced, 8})
	bobmods.lib.recipe.add_ingredient("bob-artillery-turret-3", {frame.advanced, 10})
end
	
if data.raw.recipe["bi_recipe_basic_dart_magazine"] then
	momoTweak.replace_with_ingredient("bi_recipe_basic_dart_magazine", "wood", {"wood", 2})
end

bobmods.lib.recipe.add_ingredient("grinding-wheel", {"zinc-plate", 4})
bobmods.lib.recipe.add_ingredient("polishing-wheel", {"nickel-plate", 5})


