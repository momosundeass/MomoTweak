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
  bobmods.lib.recipe.add_ingredient("modular-steel-chest", {"fast-splitter", 1})
  bobmods.lib.recipe.add_ingredient("modular-steel-chest", {"fast-transport-belt", 2})
  data.raw.recipe["modular-chest"].enabled = false
  data.raw.recipe["modular-steel-chest"].enabled = false
  local unlock_tech = momoTweak.get_tech_of_recipe("train-stop")
  bobmods.lib.tech.add_recipe_unlock(unlock_tech, "modular-chest")
  bobmods.lib.tech.add_recipe_unlock(unlock_tech, "modular-steel-chest")
end

if mods["underground-pipe-pack"] then
	-- small-pipe-coupler
	-- underground-pipe-segment-t1
	data.raw.technology["advanced-underground-piping"].prerequisites = {momoTweak.sci2_unlockTech}
	
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
	-- 80-overflow-valve  80-top-up-valve  check-valve
	local valves = {"80-overflow-valve", "80-top-up-valve", "check-valve"}
	for i, valve in pairs(valves) do 
		local removedtechs = momoTweak.get_techs_of_recipe(valve)
		for	i, tech in pairs(removedtechs) do
			bobmods.lib.tech.remove_recipe_unlock(tech, valve)
		end
	end
end
