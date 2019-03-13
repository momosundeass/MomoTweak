if mods["PyCoalTBaA"] then
	if settings.startup["momo-expensive-wire-electronics"].value then
		-- raw borax to copper ore --- tree farm
		local recipe = momoTweak.createRecipe("angels-arboretum", {{"copper-ore", 23}, {"raw-wood", 6}}, {
				{"tree-seed", 2},
				{"raw-borax", 18},
				{"solid-soil", 5},
				{type = "fluid", name="gas-methanol", amount=50}
			}, 30, momoTweak.get_tech_of_recipe("tree-arboretum-1"))
		data.raw.recipe[recipe].subgroup = data.raw.item["solid-soil"].subgroup
	end
end


-- pyhigh ----------------------------------------------------------------------------------------------
if momoTweak.pyhigh then
	if data.raw.item["solid-alginic-acid"] then
		data.raw.recipe["solid-alginic-acid"].category = "crafting-machine"
		momoTweak.set_amount_ingredient("wooden-board-paper", {"solid-paper", 5})
		
		if data.raw.item["bi-woodpulp"] then
			bobmods.lib.recipe.add_ingredient("wooden-board-paper", {"bi-woodpulp", 8})
		else
			bobmods.lib.recipe.add_ingredient("wooden-board-paper", {"ash", 1})
		end
		
		data.raw.recipe["wooden-board-paper"].energy_required = 8
		data.raw.recipe["wooden-board-paper"].category = "crafting-machine"
	end
	
	if data.raw.item["solid-corn"] then 
		data.raw["assembling-machine"]["auog-paddock"].ingredient_count = 5
		local tech = momoTweak.get_tech_of_recipe("tree-arboretum-2")
		momoTweak.createRecipe("auog", {{"urea", 25}}, {
			{"fawogae", 4},
			{"raw-fiber", 4},
			{"solid-fruit", 4},
			{"solid-beans", 4},
			{"solid-leafs", 4}
		}, 12, tech, "fruit")
		momoTweak.createRecipe("auog", {{"urea", 25}}, {
			{"fawogae", 4},
			{"raw-fiber", 4},
			{"solid-corn", 4},
			{"solid-nuts", 4},
			{"solid-pips", 4}
		}, 12, tech, "corn")
		
		momoTweak.createRecipe("advanced-crafting", {
				{"meat", 1}, 
				{"bones", 1}, 
				{type="fluid", name="blood", amount="10"}
			}, {
				{"bio-raw-meat", 3}
		}, 70, momoTweak.get_tech_of_recipe("rare-earth-mine"))
	end
	
	if data.raw.item["tree-temperate-seed"] then
		local name = momoTweak.createRecipe("angels-arboretum", {{"melamine", 30}, {"resin", 3}}, {
				{"tree-temperate-seed", 2},
				{"solid-leafs", 8},
				{"iron-ore", 8},
				{"solid-soil", 5},
				{type = "fluid", name="cyanic-acid", amount=15}
			}, 30, momoTweak.get_tech_of_recipe("tree-arboretum-1"))
		data.raw.recipe[name].subgroup = data.raw.item["solid-soil"].subgroup
	end
end

-- pyhigh ----------------------------------------------------------------------------------------------