function momoPyTweak.compatibility.UltimateBeltRecipe()
	local AddIng = momoIRTweak.recipe.SafeAddIngredient
	local Replace = momoIRTweak.recipe.ReplaceIngredient
	local Remove = momoIRTweak.recipe.RemoveIngredient
	local ITEM = momoIRTweak.FastItem
	
	local name = {
		"ultra-fast",
		"extreme-fast",
		"ultra-express",
		"extreme-express",
		"ultimate"
	}
	
	local belt = "-belt"
	local splitter = "-splitter"
	local uBelt = "-underground-belt"
	
	local belts = {
		"ultra-fast-belt",
		"extreme-fast-belt",
		"ultra-express-belt",
		"extreme-express-belt",
		"ultimate-belt"
	}
	local splitters = {
		"ultra-fast-splitter",
		"extreme-fast-splitter",
		"ultra-express-splitter",
		"extreme-express-splitter",
		"original-ultimate-splitter"
	}
		local uBelts = {
		"ultra-fast-underground-belt",
		"extreme-fast-underground-belt",
		"ultra-express-underground-belt",
		"extreme-express-underground-belt",
		"original-ultimate-underground-belt"
	}
	
	function ReplaceSmallPart(recipeName, amountFormular)
		for i = 1, 5 do
			Remove(recipeName[i], "small-parts-01")
			AddIng(recipeName[i], ITEM("small-parts-03", amountFormular[i]))
		end
	end
	
	function ReplaceCircuit(minTier, maxTier, circuitTier, recipeName, amountFormular)
		for i = minTier, maxTier do
			Remove(recipeName[i], momoPyTweak.circuit[2])
			Remove(recipeName[i], momoPyTweak.circuit[3])
			Remove(recipeName[i], momoPyTweak.circuit[4])
			AddIng(recipeName[i], ITEM(momoPyTweak.circuit[circuitTier], amountFormular[i]))
		end
	end
	
	function AddItemsTiered(minTier, maxTier, recipeName, itemName, amountFormular)
		for i = minTier, maxTier do
			AddIng(recipeName[i], ITEM(itemName, amountFormular[i]))
		end
	end
	
	function AddItems(recipeName, itemName, amountFormular)
		AddItemsTiered(1, 5, recipeName, itemName, amountFormular)
	end
	
	-- game data 
	ReplaceSmallPart(belts, {4, 8, 16, 24, 32})
	ReplaceSmallPart(splitters, {14, 21, 28, 35, 42})
	ReplaceSmallPart(uBelts, {10, 15, 20, 25, 30})
	
	local f = {20, 20, 30, 35, 50}
	ReplaceCircuit(1, 1, 2, splitters, f)
	ReplaceCircuit(2, 3, 3, splitters, f)
	ReplaceCircuit(4, 5, 4, splitters, f)
	
	AddItems(belts, "supercapacitor-core",  {2, 4, 6, 8, 12})
	AddItems(belts, "sc-substrate",  {2, 4, 6, 8, 12})
	
	AddItems(uBelts, "py-nexelit",  {4, 8, 16, 24, 32})
	AddItems(uBelts, "py-limestone",  {8, 12, 20, 28, 36})
	
	AddItems(splitters, "nems",  {3, 6, 9, 12, 16})
	AddItems(splitters, "heavy-fermion",  {5, 9, 13, 17, 22})
	
	
	table.insert(data.raw.technology["ultra-fast-logistics"].unit.ingredients, ITEM(momoPyTweak.science.packProduction, 1))
end