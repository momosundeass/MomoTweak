function momoTweak.require.SciRecipe()
	local sci_cat = momoTweak.GetScienceCraftingCategory()
	local ele = momoTweak.ele

	-- ------------------------ Vial -----------------------------------------------

	-- ------------------------ Vial -----------------------------------------------
	local removedtechs = momoTweak.get_techs_of_recipe("mixing-furnace")
	for	i, t in pairs(removedtechs) do
		bobmods.lib.tech.remove_recipe_unlock(t, "mixing-furnace")
	end
	bobmods.lib.tech.add_recipe_unlock("optics", "mixing-furnace")

	momoTweak.createRecipe("mixing-furnace", {{"momo-vial", 2}},
		{
			{"glass", 6},
			{"coal", 1}
		}, 6, "optics")

	momoTweak.createRecipe("mixing-furnace", {{"momo-vial", 2}},
		{
			{"glass", 6},
			{"solid-coke", 1}
		}, 6, momoTweak.get_tech_of_recipe("coal-crushed"), "coke")
		
	-- ------------------------ Vial -----------------------------------------------

	-- ------------------------ Vial -----------------------------------------------


	local tech_sci_2 = momoTweak.sci2_unlockTech
	momoTweak.createRecipe(sci_cat, {{"red-sci", 5}},
	  {
		{momoTweak.sci1, 2},
		{ele.circuit[1], 3},
		{"copper-plate", 1}
	  }, 5, tech_sci_2)

	momoTweak.createRecipe("crafting", {{"building-pack", 1}},
	  {
		{"iron-stick", 5},
		{"stone-furnace", 1}
	  }, 6, true)
	  
	local belt = "transport-belt"
	momoTweak.createRecipe(sci_cat, {{"movement-pack", 2}},
	  {
		{belt, 2},
		{"inserter", 1},
		{"glass", 2}
	  }, 3, tech_sci_2)

	local tech_sci_3 = momoTweak.get_tech_of_recipe(momoTweak.sci3)
	momoTweak.createRecipe(sci_cat, {{"green-sci", 4}},
	  {
		{"red-sci", 3},
		{momoTweak.sci2, 2},
		{ele.unit[2], 2},
		{"silicon-wafer", 7},
		{"silver-plate", 5}
	  }, 12, tech_sci_3)
	  

	momoTweak.createRecipe(sci_cat, {{"bronze-pack", 1}},
	  {
		{"bronze-alloy", 4},
		{"lead-plate", 4},
		{"glass", 4},
		{"battery", 2},
	  }, 8, "mixing-steel-furnace")

	local tech_sci_mil = momoTweak.get_tech_of_recipe(momoTweak.sciGun)
	momoTweak.createRecipe(sci_cat, {{"pre-dark-sci", 2}},
	  {
		{momoTweak.sci2, 1},
		{"piercing-rounds-magazine", 2},
		{"grenade", 1},
		{"dark-chip", 3},
		{"nickel-plate", 5}
	  }, 10, tech_sci_mil)
	  
	momoTweak.createRecipe(sci_cat, {{"dark-chip", 4}},
	  {
		{"solder", 4},
		{ele.comp[1], 5},
		{ele.unit[1], 3},
		{"movement-pack", 1}
	  }, 5, tech_sci_mil)
	  
	local tech_sci_pro = momoTweak.get_tech_of_recipe(momoTweak.sciProduction)
	momoTweak.createRecipe(sci_cat, {{"pre-cyan-sci", 4}}, {
		{momoTweak.sci3, 1},
		{"green-sci", 6},
		{"red-sci", 4},
		{ele.circuit[2], 4},
		{"solder", 6},
		{"lithium-ion-battery", 3}
	}, 12, tech_sci_pro)

	momoTweak.createRecipe(sci_cat, {{"cpy", 4}}, {
	  
	  {"insulated-cable", 6},
	  {"solder", 6},
	  {ele.board[2], 4},
	  {"robot-brain-logistic", 2},
	  {"zinc-plate", 12}
	  
	}, 10, tech_sci_pro)

	momoTweak.createRecipe(sci_cat, {{"product-sci", 1}}, {
	  {"solar-panel-2", 1},
	  {"assembling-machine-2", 1},
	  {"electric-furnace", 1},
	  {"chemical-plant-2", 1},
	  {"pre-cyan-sci", 3}
	}, 14, tech_sci_pro)

	momoTweak.createRecipe(sci_cat, {{"cyan-sci", 3}}, {
	  {"green-sci", 6},
	  {momoTweak.sci3, 1},
	  {"pre-cyan-sci", 4},
	  {"bronze-pack", 2},
	}, 14, tech_sci_3)


	local ings = momoTweak.get_ingredients(momoTweak.sciLogistic)
	if momoTweak.mods.sct then
		ings = momoTweak.logisticSciencePackIngredients
	end

	momoTweak.createRecipe(sci_cat, {{"logistic-express", 1}}, 
		momoTweak.deepcopy(ings), 14, momoTweak.sciLogistic_unlockTech
	)

	local tech_high = momoTweak.get_tech_of_recipe(momoTweak.sciTech)
	momoTweak.createRecipe(sci_cat, {{"pre-high-sci", 1}}, 
	  {
		{"cyan-sci", 5},
		{ele.unit[3], 1},
		{ele.board[3], 4},
		{"solder", 6},
		{"cpy", 1},
		{ele.comp[5], 3}
	  }, 14, tech_high)
	  
	momoTweak.createRecipe(sci_cat, {{"py-nxag-matrix", 2}},
	  {
		{"titanium-plate", 6},
		{"cobalt-steel-alloy", 4},
		{"building-pack", 7},
		{"electric-engine-unit", 1},
		{"lithium-ion-battery", 6},
		{"green-sci", 7}
		
	  }, 14, tech_high)
	  
	momoTweak.createRecipe(sci_cat, {{"py-superconductor", 4}},
	  {
		{"silver-zinc-battery", 2},
		{"plastic-bar", 7},
		{"silver-plate", 12},
		{"bronze-pack", 8},
		{"heat-shield-tile", 5},
		{"red-sci", 4}
		
	  }, 14, tech_high)

	if momoTweak.mods.sct then
		local function clearUp(itemref, recipe)
			-- this is temporary fix for omnilib
			for i, ing in pairs(momoTweak.get_gen_recipe(itemref).ingredients or momoTweak.get_gen_recipe(itemref).normal.ingredients) do
				bobmods.lib.recipe.remove_ingredient(recipe, ing[0])
			end
			
			bobmods.lib.recipe.add_ingredient(recipe, itemref)
		end
		
		clearUp({"sct-2"         , 1}, momoTweak.sci2)
		clearUp({"sct-3"         , 1}, momoTweak.sci3)
		clearUp({"sct-gun"       , 1}, momoTweak.sciGun)
		clearUp({"sct-high"      , 1}, momoTweak.sciTech)
		clearUp({"sct-production", 1}, momoTweak.sciProduction)
		clearUp({"sct-logistic"  , 1}, momoTweak.sciLogistic)
	end

	local function ifNotSCT_add(recipe, item)
		if not momoTweak.mods.sct then
			bobmods.lib.recipe.add_ingredient(recipe, item)
		end
	end
	local function ifSCT_add(recipe, item)
		if momoTweak.mods.sct then
			table.insert(data.raw.recipe[recipe].ingredients, item)
		end
	end

	-- Science 2 ----------------------------------------------------------------------------
	bobmods.lib.recipe.remove_ingredient(momoTweak.sci2, "transport-belt")
	bobmods.lib.recipe.remove_ingredient(momoTweak.sci2, "basic-transport-belt")
	bobmods.lib.recipe.remove_ingredient(momoTweak.sci2, "inserter")

	bobmods.lib.recipe.add_ingredient(momoTweak.sci2, {"red-sci", 3})
	ifNotSCT_add(momoTweak.sci2, {"building-pack", 2})
	ifNotSCT_add(momoTweak.sci2, {"movement-pack", 3})
	------------------------------------------------------------------------------------------

	-- gun sci -------------------------------------------------------------------------
	bobmods.lib.recipe.remove_ingredient(momoTweak.sciGun, "grenade")
	bobmods.lib.recipe.remove_ingredient(momoTweak.sciGun, "piercing-rounds-magazineds-magazine")

	ifNotSCT_add(momoTweak.sciGun, {"pre-dark-sci", 1})
	bobmods.lib.recipe.add_ingredient(momoTweak.sciGun, {"red-sci", 6})
	------------------------------------------------------------------------------------------

	-- science-pack-3 ----------------------------------------------------------------------
	bobmods.lib.recipe.remove_ingredient(momoTweak.sci3, "battery")
	bobmods.lib.recipe.remove_ingredient(momoTweak.sci3, "advanced-circuit")
	bobmods.lib.recipe.remove_ingredient(momoTweak.sci3, "bronze-alloy")

	bobmods.lib.recipe.add_ingredient(momoTweak.sci3, {"dark-chip", 8})
	bobmods.lib.recipe.add_ingredient(momoTweak.sci3, {"green-sci", 6})
	ifNotSCT_add(momoTweak.sci3, {"bronze-pack", 3})
	------------------------------------------------------------------------------------------

	------------------------------------------------------------------------------------------
	momoTweak.assign_ingredients(momoTweak.sciProduction, {
		{"cpy", 4},
		{"product-sci", 1},
		{"cyan-sci", 2},
	})
	ifSCT_add(momoTweak.sciProduction, {"sct-production", 1})
	------------------------------------------------------------------------------------------

	momoTweak.assign_ingredients(momoTweak.sciLogistic, {
	  {"logistic-express", 1},
	  {"cpy", 5},
	  {"pre-cyan-sci", 4},
	  {"green-sci", 6},
	})
	ifSCT_add(momoTweak.sciLogistic, {"sct-logistic", 1})
	ifNotSCT_add(momoTweak.sciLogistic, {"building-pack", 5})

	------------------------------------------------------------------------------------------
	bobmods.lib.recipe.remove_ingredient(momoTweak.sciTech, "silicon-nitride")
	bobmods.lib.recipe.remove_ingredient(momoTweak.sciTech, "electric-engine-unit")
	bobmods.lib.recipe.remove_ingredient(momoTweak.sciTech, "lithium-ion-battery")
	bobmods.lib.recipe.remove_ingredient(momoTweak.sciTech, "processing-unit")

	bobmods.lib.recipe.add_ingredient(momoTweak.sciTech, {"pre-high-sci", 1})
	bobmods.lib.recipe.add_ingredient(momoTweak.sciTech, {"py-nxag-matrix", 2})
	bobmods.lib.recipe.add_ingredient(momoTweak.sciTech, {"py-superconductor", 5})
	bobmods.lib.recipe.add_ingredient(momoTweak.sciTech, {"solar-panel-equipment-3", 2})
	------------------------------------------------------------------------------------------

	local tech = tech_sci_2
	momoTweak.createRecipe("advanced-crafting", 
		{{"plate-pack-1", 1}}, 
		{
			{"lead-plate", 2}, 
			{"glass", 3}
	}, 2, tech, "lead")
	momoTweak.createRecipe("advanced-crafting", 
		{{"plate-pack-1", 1}}, 
		{
			{"tin-plate", 2}, 
			{"glass", 3}
	}, 2, tech, "tin")

end