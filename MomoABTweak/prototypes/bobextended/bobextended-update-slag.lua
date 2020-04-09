function momoTweak.require.ExtendedSlagUpdate()
	local ore = momoTweak.ore

	local refrecipe = data.raw.recipe["silicon-ore-smelting"]
	local category = "blast-smelting"
	local refsubgroup = refrecipe.subgroup

	data:extend({{
		type = "item-subgroup",
		name = "momo-slag",
		group= data.raw["item-subgroup"][refsubgroup].group,
		order= "zz"
	}})

	local logging = {}

	local function BuildRecipes(items, tech, pollution)
		for i, o in pairs(items) do
			local recipeName = momoTweak.createRecipe(category, {
				{momoTweak.angel.slag, 3}
			},{
				{o, 3},
				{"solid-coke", 1},
			}, 2, tech, o)
			local recipe = data.raw.recipe[recipeName]
			recipe.emissions_multiplier = pollution
			recipe.subgroup = "momo-slag"
			recipe.icon_size = data.raw.item[o].icon_size
			recipe.icon = data.raw.item[o].icon
			table.insert(logging, recipe.icon)
			recipe.always_show_products = true
		end
	end


	local tier1 = {ore.iron, ore.copper, ore.tin, ore.quartz, ore.lead, ore.nickel}
	local tier2 = {ore.silver, ore.zinc, ore.titanium, ore.tungsten, ore.cobalt, ore.gold, ore.aluminium}

	BuildRecipes(tier1, "slag-processing-1", 1.3)
	BuildRecipes(tier2, "slag-processing-2", 1.7)

	for	i, path in pairs(logging) do
		log("MTKL " .. path)
	end
end