-- momoTweak.createRecipe(cat ,results, ingredients, energy, tech, extraname)

local ELE = momoTweak.ele
local MEM = momoTweak.ele.memory
local CON = momoTweak.ele.controller
local category = data.raw.recipe[ELE.unit[2]].category

local function result(name, amount)
	return {{name, amount}}
end
--------------------------------------------------------------------------

-- MEMORY ----------------------------------------------------------------
-- MEM a
momoTweak.createRecipe(category, 
	result(MEM.a, 2),
	{
		{ELE.cable[1], 1},
		{"nickel-plate", 1}
	}, 2, momoTweak.get_tech_of_recipe(ELE.board[2])
)

bobmods.lib.recipe.add_ingredient(ELE.unit[1], {MEM.a, 2})
bobmods.lib.recipe.remove_ingredient(ELE.circuit[2], "copper-plate")
bobmods.lib.recipe.add_ingredient(ELE.circuit[2], {MEM.a, 3})

momoTweak.createRecipe(category,
	result(MEM.a2, 1),
	{
		{ELE.comp[1], 3},
		{MEM.a, 4},
		{"silicon-wafer", 2}
	}, 8, momoTweak.get_tech_of_recipe(ELE.unit[3])
)
bobmods.lib.recipe.remove_ingredient(ELE.circuit[3], "copper-plate")
bobmods.lib.recipe.add_ingredient(ELE.circuit[3], {MEM.a2, 2})
bobmods.lib.recipe.remove_ingredient(ELE.circuit[4], "copper-plate")
bobmods.lib.recipe.add_ingredient(ELE.circuit[4], {MEM.a2, 4})


momoTweak.createRecipe(category,
	result(MEM.a3, 1),
	{
	    {MEM.a, 8},
	    {ELE.cable[5], 2},
		{"silicon-nitride", 4},
		{"cpy", 1}
	}, 10, momoTweak.get_tech_of_recipe(ELE.unit[4])
)

bobmods.lib.recipe.add_ingredient(ELE.unit[4], {MEM.a3, 8})

-- MEM b
momoTweak.createRecipe(category, 
	result(MEM.b, 1), 
	{
		{MEM.a, 2},
		{ELE.comp[1], 4},
		{ELE.comp[2], 2},
		{"silver-plate", 1}
	}, 4, momoTweak.get_tech_of_recipe(ELE.unit[2])
)
bobmods.lib.recipe.add_ingredient(ELE.unit[2], {MEM.b, 2})

-- MEM c
momoTweak.createRecipe(category, 
	result(MEM.c, 2), 
	{
		{MEM.b, 5},
		{MEM.a2, 2},
		{ELE.board[2], 2},
		{ELE.comp[3], 4},
		{"gold-plate", 1}
	}, 8, momoTweak.get_tech_of_recipe(ELE.unit[3])
)

bobmods.lib.recipe.remove_ingredient(ELE.unit[3], ELE.comp[1])
bobmods.lib.recipe.add_ingredient(ELE.unit[3], {MEM.c, 2})
bobmods.lib.recipe.remove_ingredient(ELE.unit[4], ELE.comp[1])
bobmods.lib.recipe.remove_ingredient(ELE.unit[4], ELE.comp[2])
bobmods.lib.recipe.add_ingredient(ELE.unit[4], {MEM.c, 8})

--------------------------------------------------------------------------

-- CONTROLLER ------------------------------------------------------------
momoTweak.createRecipe(category, 
	result(CON.a, 4),
	{
		{ELE.circuit[1], 1},
		{"tin-plate", 4},
		{"solder", 2}
	}, 2, momoTweak.get_tech_of_recipe(ELE.circuit[2])
)

momoTweak.replace_with_ingredient(ELE.circuit[2], "tin-plate", {CON.a, 1})
bobmods.lib.recipe.add_ingredient(ELE.comp[3], {CON.a, 2})

momoTweak.createRecipe(category, 
	result(CON.b, 4),
	{
		{CON.a, 4},
		{MEM.a, 2},
		{"silicon-wafer", 2},
		{"solder", 2}
	}, 2, momoTweak.get_tech_of_recipe(ELE.unit[2])
)



