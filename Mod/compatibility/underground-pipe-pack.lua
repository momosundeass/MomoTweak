if not momoTweak.compatibility.underGroundPipePack then momoTweak.compatibility.underGroundPipePack = {} end

function momoTweak.compatibility.underGroundPipePack.Recipe()
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