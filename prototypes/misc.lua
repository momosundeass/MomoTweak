-- check for item in Texugo wind exist
if data.raw.item["texugo-wind-turbine"] then
  if data.raw.item["basic-circuit-board"] then 
      bobmods.lib.recipe.replace_ingredient("texugo-wind-turbine", "electronic-circuit", "basic-circuit-board")
   end
end

-- check for Modular-Chests
if data.raw.recipe["modular-chest"] then
  bobmods.lib.recipe.add_ingredient("modular-chest", {"fast-splitter", 1})
  bobmods.lib.recipe.add_ingredient("modular-chest", {"fast-transport-belt", 2})
end

if mods["underground-pipe-pack"] then
	-- small-pipe-coupler
	-- underground-pipe-segment-t1
	data:extend({{
		type = "item-subgroup",
		group = data.raw["item-subgroup"][data.raw.item["small-pipe-coupler"].subgroup].group,
		name = "momo-recycle-pipe",
		order = "zzzz"
	}})
	
	local function recipe(f)
		local re = data.raw.recipe[f]
		re.allow_as_intermediate = false
		re.subgroup = "momo-recycle-pipe"
		re.allow_intermediates = false
	end
	
	tier = {}
	tier[1] = {"copper", "stone"}
	tier[2] = {"bronze", "steel", "plastic", "brass"}
	tier[3] = {"titanium", "ceramic", "tungsten"}
	
	local tech = "advanced-underground-piping"
	recipe(momoTweak.createRecipe("crafting", {{"small-pipe-coupler", 1}}, {{"pipe", 1}}, 0.5, tech))
	recipe(momoTweak.createRecipe("crafting", {{"underground-pipe-segment-t1", 5}}, {{"pipe-to-ground", 1}}, 0.5, tech))
	for i, j in pairs(tier[1]) do
		recipe(momoTweak.createRecipe("crafting", {{"small-pipe-coupler", 1}}, {{j.."-pipe", 1}}, 0.5, tech, j))
		recipe(momoTweak.createRecipe("crafting", {{"underground-pipe-segment-t1", 5}}, {{j.."-pipe-to-ground", 1}}, 0.5, tech, j))
	end
	
	tech = "advanced-underground-piping-t2"
	for i, j in pairs(tier[2]) do
		recipe(momoTweak.createRecipe("crafting", {{"medium-pipe-coupler", 1}}, {
			{j.."-pipe", 1},
			{"small-pipe-coupler", 1}
		}, 0.5, tech, j))
		recipe(momoTweak.createRecipe("crafting", {{"underground-pipe-segment-t2", 5}}, {
			{j.."-pipe-to-ground", 1},
			{"underground-pipe-segment-t1", 5}
		}, 0.5, tech, j))
	end
	
	tech = "advanced-underground-piping-t3"
	for i, j in pairs(tier[3]) do
		recipe(momoTweak.createRecipe("crafting", {{"large-pipe-coupler", 1}}, {
			{j.."-pipe", 1},
			{"medium-pipe-coupler", 1}
		}, 0.5, tech, j))
		recipe(momoTweak.createRecipe("crafting", {{"underground-pipe-segment-t3", 6}}, {
			{j.."-pipe-to-ground", 1},
			{"underground-pipe-segment-t2", 6}
		}, 0.5, tech, j))
	end
end

bobmods.lib.recipe.add_ingredient("robot-tool-construction", {"rubber", 2})
bobmods.lib.recipe.add_ingredient("robot-tool-construction-2", {"rubber", 4})
bobmods.lib.recipe.add_ingredient("robot-tool-construction-3", {"rubber", 7})
bobmods.lib.recipe.add_ingredient("robot-tool-construction-4", {"rubber", 9})

bobmods.lib.recipe.add_ingredient("robot-tool-logistic", {"rubber", 4})
bobmods.lib.recipe.add_ingredient("robot-tool-logistic-2", {"rubber", 5})
bobmods.lib.recipe.add_ingredient("robot-tool-logistic-3", {"rubber", 7})
bobmods.lib.recipe.add_ingredient("robot-tool-logistic-4", {"rubber", 9})

bobmods.lib.recipe.add_ingredient("rail-signal", {"rubber", 2})
bobmods.lib.recipe.add_ingredient("rail-chain-signal", {"rubber", 3})

bobmods.lib.recipe.add_ingredient("train-stop", {"rubber", 5})

bobmods.lib.recipe.add_ingredient("arithmetic-combinator", {"rubber", 1})
bobmods.lib.recipe.add_ingredient("decider-combinator", {"rubber", 1})
bobmods.lib.recipe.add_ingredient("constant-combinator", {"rubber", 2})

bobmods.lib.recipe.add_ingredient("lab-2", {"rubber", 50})
bobmods.lib.recipe.add_ingredient("lab-2", {"arithmetic-combinator", 10})
bobmods.lib.recipe.add_ingredient("lab-2", {"decider-combinator", 10})

bobmods.lib.recipe.add_ingredient("lab-module", {"rubber", 75})
bobmods.lib.recipe.add_ingredient("lab-module", {"arithmetic-combinator", 15})
bobmods.lib.recipe.add_ingredient("lab-module", {"decider-combinator", 15})
