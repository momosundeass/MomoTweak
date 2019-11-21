function momoTweak.require.Sci30Extreme()
	data:extend({{
		type = "item-subgroup",
		name = "momo-extreme-sci",
		group = "intermediate-products",
		order = "d",
	}})

	local x = settings.startup["momo-30-sci-ingredient-amount"].value

	if data.raw["tool"]["more-science-pack-1"]  
	and settings.startup["momo-30-sci-extreme"].value  
	and settings.startup["momo-fix-angels-chemistry-machine"].value 
	and data.raw.technology["angels-advanced-chemistry-4"] then
		local function newItem(name)
			momoTweak.newsciItem(name)
			data.raw.item[name].subgroup = "momo-extreme-sci"
		end
		newItem("b1")
		newItem("b2")
		newItem("b3")
		newItem("b4")
		newItem("b5")
		newItem("atc")
	 
		local function get_science(number) 
			if settings.startup["MSP-pack".. number .."-result"].value == 0 then
				return "iron-plate"
			else
				return "more-science-pack-" .. number
			end
		end
		
		local function find_tech(tab)
			for	i, sci_pack in pairs(tab) do
				if settings.startup["MSP-pack".. sci_pack .."-result"].value ~= 0 then
					return momoTweak.get_tech_of_recipe("more-science-pack-" .. sci_pack)
				end
			end
			return true
		end
	 
		-- recipe
		local namerecipe = ""
		local cat = momoTweak.GetScienceCraftingCategory()
		local unlock_tech = find_tech({4, 3, 2, 1})
		local isOmni = mods["omnilib"]
		if isOmni then 
			unlock_tech = "electronics" 
		end
		namerecipe = momoTweak.createRecipe(cat, {{"b1", 3}}, {
			{get_science(1), x + 2},
			{get_science(2), x + 1},
			{get_science(3), x + 1},
			{get_science(4), x + 1},
			{"electronic-circuit", 2}
		}, 7, unlock_tech) --"automation-2"
	 
		bobmods.lib.recipe.remove_ingredient(namerecipe, "iron-plate")
		-- green
		bobmods.lib.recipe.add_ingredient(momoTweak.sci2, {"b1", 2})
		-- gray
		bobmods.lib.recipe.add_ingredient(momoTweak.sciGun, {"b1", 1})
	 
	 
		unlock_tech = find_tech({7,8,6,5})
		if isOmni then 
			unlock_tech = "circuit-network" 
		end
		namerecipe = momoTweak.createRecipe(cat, {{"b2", 3}}, {
			{get_science(5), x + 1},
			{get_science(6), x + 1},
			{get_science(7), x + 1},
			{get_science(8), x + 2},
			{"electronic-circuit", 2}
		}, 7, unlock_tech  ) --"circuit-network"
		bobmods.lib.recipe.remove_ingredient(namerecipe, "iron-plate")
	 
	 
		unlock_tech = find_tech({9, 10})
		if isOmni then 
			unlock_tech = "electric-energy-accumulators" 
		end
		namerecipe = momoTweak.createRecipe(cat, {{"b3", 3}}, {
			{"b1", 1},
			{"b2", 1},
			{get_science(9), x + 1},
			{get_science(10), x + 2},
			{"engine-unit", 2},
			{"advanced-circuit", 2}
		}, 15, unlock_tech  ) -- "electric-energy-accumulators"
		bobmods.lib.recipe.remove_ingredient(namerecipe, "iron-plate")
		
		-- cyan
		bobmods.lib.recipe.remove_ingredient(momoTweak.sci3, "engine-unit")
		bobmods.lib.recipe.add_ingredient(momoTweak.sci3, {"b3", 2})
	 
	 
		unlock_tech = find_tech({17,15,12,11})
		if isOmni then 
			unlock_tech = "electric-energy-distribution-2" 
		end
		namerecipe = momoTweak.createRecipe(cat, {{"b4", 3}}, {
			{"b3", 1},
			{get_science(11), x + 2},
			{get_science(12), x + 1},
			{get_science(15), x + 2},
			{get_science(17), x + 1},
			{"cpy", 2}
		}, 7, unlock_tech  ) -- "electric-energy-distribution-2"
		bobmods.lib.recipe.remove_ingredient(namerecipe, "iron-plate")
		
		-- express
		bobmods.lib.recipe.add_ingredient(momoTweak.sciLogistic, {"b4", 2})
		-- production
		bobmods.lib.recipe.add_ingredient(momoTweak.sciProduction, {"b4", 3})
	 
	 
		unlock_tech = find_tech({23,22,21,18,19,20})
		if isOmni then 
			unlock_tech = "effect-transmission" 
		end
		namerecipe = momoTweak.createRecipe(cat, {{"b5", 3}}, {
			{"b4", 1},
			{get_science(18), x + 2},
			{get_science(19), x + 1},
			{get_science(20), x + 2},
			{get_science(21), x + 1},
			{get_science(22), x + 1},
			{get_science(23), x + 1},
			{"cyan-sci", 2}
		}, 7, unlock_tech  ) -- "effect-transmission"
		bobmods.lib.recipe.remove_ingredient(namerecipe, "iron-plate")
		
		--high tech
		bobmods.lib.recipe.add_ingredient(momoTweak.sciTech, {"b5", 4})
	 
	 
		unlock_tech = find_tech({28})
		if isOmni then 
			unlock_tech = "atomic-bomb" 
		end
		namerecipe = momoTweak.createRecipe(cat, {{"atc", 1}}, {
			{"b4", 3},
			{"b5", 2},
			{"py-nxag-matrix", 3},
			{"py-superconductor", 6},
			{"pre-high-sci", 3},
			{get_science(28), x + 4},
			{"advanced-processing-unit", 8},
			{"processing-electronics", 12}
		}, 20, unlock_tech) --"atomic-bomb"
		bobmods.lib.recipe.remove_ingredient(namerecipe, "iron-plate")
		
		--29
		bobmods.lib.recipe.add_ingredient("more-science-pack-29", {"atc", 2})
		
		--30
		bobmods.lib.recipe.remove_ingredient("more-science-pack-30", "advanced-processing-unit")
		bobmods.lib.recipe.add_ingredient("more-science-pack-30", {"atc", 5})
	end
end