function momoTweak.require.ExtendedEleUpdate()
	-- momoTweak.createRecipe(cat ,results, ingredients, energy, tech, extraname)

	local ELE = momoTweak.ele
	local MEM = momoTweak.ele.memory
	local CON = momoTweak.ele.controller
	local JUN = momoTweak.ele.junction
	local SPEEDFACTOR = 2
	local category = data.raw.recipe[ELE.unit[2]].category

	local expensiveEle = settings.startup["momo-enable-progress-electronics"].value
	local copperFactor = 1
	local generalFactor = 1
	if (expensiveEle) then
		copperFactor = settings.startup["momo-expensive-wire-electronics"].value
		generalFactor = 2
	end

	local function result(name, amount)
		return {{name, amount}}
	end

	--[[----------------------------------------------------------------------

						MEM => CON
						
						MEM => JUN

	----------------------------------------------------------------------]]--


	--------------------------------------------------------------------------
	--------------------------------------------------------------------------

	-- MEMORY ----------------------------------------------------------------
	--[[
	   basic chain 
	   MEM.a > MEM.b
				 v
			   MEM.c
				 ^
	   MEM.a > MEM.a2
	   MEM.a > MEM.a3
	]]--
	momoTweak.createRecipe(category, 
		result(MEM.a, 2),
		{
			{ELE.cable[1], 1 * copperFactor},
			{"lead-plate", 1}
		}, 2 * SPEEDFACTOR, momoTweak.get_tech_of_recipe(ELE.comp[1])
	)

	bobmods.lib.recipe.add_ingredient(ELE.unit[1], {MEM.a, 2})
	bobmods.lib.recipe.remove_ingredient(ELE.circuit[2], "copper-plate")
	bobmods.lib.recipe.add_ingredient(ELE.circuit[2], {MEM.a, 3})

	momoTweak.createRecipe(category,
		result(MEM.a2, 1),
		{
			{ELE.comp[1], 3},
			{MEM.a, 2},
			{"nickel-plate", 2 * generalFactor},
			{"silicon-wafer", 2 * generalFactor}
		}, 8 * SPEEDFACTOR, momoTweak.get_tech_of_recipe(ELE.unit[3])
	)
	bobmods.lib.recipe.remove_ingredient(ELE.circuit[3], "copper-plate")
	bobmods.lib.recipe.add_ingredient(ELE.circuit[3], {MEM.a2, 2})
	bobmods.lib.recipe.remove_ingredient(ELE.circuit[4], "copper-plate")
	bobmods.lib.recipe.add_ingredient(ELE.circuit[4], {MEM.a2, 4})


	momoTweak.createRecipe(category,
		result(MEM.a3, 1),
		{
			{MEM.a, 8},
			{ELE.cable[5], 2 * copperFactor},
			{"silicon-nitride", 4},
			{"cpy", 1}
		}, 10 * SPEEDFACTOR, momoTweak.get_tech_of_recipe(ELE.unit[4])
	)

	bobmods.lib.recipe.add_ingredient(ELE.unit[4], {MEM.a3, 8})

	momoTweak.createRecipe(category, 
		result(MEM.b, 1), 
		{
			{MEM.a, 2},
			{ELE.comp[1], 4},
			{ELE.comp[2], 2},
			{"silver-plate", 2 * generalFactor}
		}, 4 * SPEEDFACTOR, momoTweak.get_tech_of_recipe(ELE.unit[2])
	)
	bobmods.lib.recipe.add_ingredient(ELE.unit[2], {MEM.b, 2})

	momoTweak.createRecipe(category, 
		result(MEM.c, 2), 
		{
			{MEM.b, 5},
			{MEM.a2, 2},
			{ELE.board[2], 2},
			{ELE.comp[3], 4},
			{"silver-plate", 3 * generalFactor}
		}, 8 * SPEEDFACTOR, momoTweak.get_tech_of_recipe(ELE.unit[3])
	)

	bobmods.lib.recipe.remove_ingredient(ELE.unit[3], ELE.comp[1])
	bobmods.lib.recipe.add_ingredient(ELE.unit[3], {MEM.c, 2})
	bobmods.lib.recipe.remove_ingredient(ELE.unit[4], ELE.comp[1])
	bobmods.lib.recipe.remove_ingredient(ELE.unit[4], ELE.comp[2])
	bobmods.lib.recipe.add_ingredient(ELE.unit[4], {MEM.c, 8})

	-- -----------------------------------------------------------------------

	-- CONTROLLER ------------------------------------------------------------

	--[[
				 MEM.a
				  v
		CON.a => CON.b
		
				 MEM.a2
				  v
		CON.c => CON.d
	]]--
	momoTweak.createRecipe(category, 
		result(CON.a, 4),
		{
			{ELE.circuit[1], 1},
			{"tin-plate", 1 * generalFactor},
			{"solder", 2 * generalFactor}
		}, 2 * SPEEDFACTOR, momoTweak.get_tech_of_recipe(ELE.circuit[2])
	)

	momoTweak.replace_with_ingredient(ELE.circuit[2], "tin-plate", {CON.a, 1})
	bobmods.lib.recipe.add_ingredient(ELE.circuit[3], {CON.a, 2})

	momoTweak.createRecipe(category, 
		result(CON.b, 4),
		{
			{CON.a, 8},
			{MEM.a, 2},
			{"lead-plate", 1 * generalFactor},
			{"silver-plate", 2 * generalFactor},
		}, 3 * SPEEDFACTOR, momoTweak.get_tech_of_recipe(ELE.unit[2])
	)
	momoTweak.replace_with_ingredient(ELE.unit[2], ELE.comp[1], {CON.b, 2})

	momoTweak.createRecipe(category, 
		result(CON.c, 2),
		{
			{ELE.circuit[2], 1},
			{ELE.comp[2], 6},
			{ELE.cable[2], 4 * copperFactor},
			{"gold-plate", 3 * generalFactor},
			{"lithium", 2 * generalFactor}
		}, 4 * SPEEDFACTOR, momoTweak.get_tech_of_recipe(ELE.unit[3])
	)
	momoTweak.replace_with_ingredient(ELE.circuit[4], "gold-plate", {CON.c, 1})
	momoTweak.replace_with_ingredient(ELE.unit[3], ELE.comp[2], {CON.c, 1})

	momoTweak.createRecipe(category, 
		result(CON.d, 2),
		{
			{CON.c, 4},
			{MEM.a2, 2},
			{ELE.comp[3], 4},
			{"silicon-wafer", 6 * generalFactor},
			{"silicon-nitride", 2},
			{"lithium", 4 * generalFactor}
		}, 4 * SPEEDFACTOR, momoTweak.get_tech_of_recipe(ELE.unit[4])
	)
	momoTweak.replace_with_ingredient(ELE.unit[4], ELE.comp[3], {CON.d, 1})
	-- -------------------------------------------------------------------------------------

	-- JUNCTION ----------------------------------------------------------------------------
	--[[
		MEM.a2 => JUN.a
					v
		MEM.b  => JUN.b
	]]--

	momoTweak.createRecipe(category, 
		result(JUN.a, 1),
		{
			{MEM.a2, 2},
			{ELE.comp[3], 4},
			{"silicon-wafer", 3 * generalFactor},
			{"gold-plate", 2 * generalFactor},
			{"lithium", 2 * generalFactor}
		}, 6 * SPEEDFACTOR, momoTweak.get_tech_of_recipe(ELE.unit[3])
	)
	momoTweak.replace_with_ingredient(ELE.unit[3], ELE.comp[3], {JUN.a, 1})

	momoTweak.createRecipe(category, 
		result(JUN.b, 1),
		{
			{MEM.b, 2},
			{ELE.comp[4], 2},
			{"silicon-wafer", 4 * generalFactor},
			{"silicon-nitride", 2},
			{ELE.cable[4], 4 * copperFactor},
			{"silver-plate", 3 * generalFactor}
		}, 8 * SPEEDFACTOR, momoTweak.get_tech_of_recipe(ELE.unit[4])
	)
	momoTweak.replace_with_ingredient(ELE.unit[4], ELE.comp[4], {JUN.b, 1})
end