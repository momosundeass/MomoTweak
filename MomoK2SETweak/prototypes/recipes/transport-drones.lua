function momoK2SETweak.recipes.TransportDrones()
	local recipe = momoIRTweak.recipe
	local ITEM = momoIRTweak.FastItem
	local ReplaceAll = recipe.ReplaceAllIngredient
	
	ReplaceAll("transport-drone", {
		ITEM("engine-unit", 1),
		ITEM("steel-beam", 1),
		ITEM("kr-loader", 1)
	})
	
	ReplaceAll("request-depot", {
		ITEM("fast-inserter", 4),
		ITEM("steel-beam", 8),
		ITEM("decider-combinator", 6)
	})
	
	ReplaceAll("supply-depot", {
		ITEM("fast-inserter", 4),
		ITEM("iron-chest", 8)
	})
	
	ReplaceAll("buffer-depot", {
		ITEM("fast-inserter", 4),
		ITEM("steel-beam", 20),
	})
	
	ReplaceAll("fuel-depot", {
		ITEM("pump", 4),
		ITEM("storage-tank", 4),
		ITEM("steel-beam", 8),
	})
	
	ReplaceAll("fluid-depot", {
		ITEM("pump", 2),
		ITEM("kr-fluid-storage-1", 1),
	})
	
	momoIRTweak.technology.SetPrerequire("transport-system", {"circuit-network"})
end
