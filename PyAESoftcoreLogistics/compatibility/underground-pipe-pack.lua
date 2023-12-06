local ITEM = momoPyTweak.functions.FastItem

function momoPyTweak.compatibility.PipePack()

	local removeRecipes = {
		"small-pipe-coupler",
		"medium-pipe-coupler",
		"large-pipe-coupler",
		"underground-pipe-segment-t1",
		"underground-pipe-segment-t2",
		"underground-pipe-segment-t3",
		"swivel-joint",
		"underground-mini-pump"
	}
	for _, r in pairs(removeRecipes) do
		momoPyTweak.functions.technology.RemoveAllUnlockEffect(r)
	end
	
	momoPyTweak.functions.technology.AddUnlockEffect("advanced-underground-piping", "underground-mini-pump")
	momoPyTweak.functions.ChangeSubgroupItemAndRecipe("underground-mini-pump", "energy-pipe-distribution", "a-a[underground-mini-pump]")
	momoPyTweak.functions.recipe.ReplaceAllIngredient("underground-mini-pump", {
		ITEM("pump"), 
		ITEM("rubber", 3),
		ITEM("engine-unit")
	})
	
	local p1 = {
		"one-to-one-forward-pipe",
		"one-to-two-perpendicular-pipe",
		"one-to-three-forward-pipe",
		"one-to-four-pipe"
	}
	local u1 = {
		"underground-i-pipe",
		"underground-L-pipe",
		"underground-t-pipe",
		"underground-cross-pipe"
	}
	local p2 = {
		"one-to-one-forward-t2-pipe",
		"one-to-two-perpendicular-t2-pipe",
		"one-to-three-forward-t2-pipe",
		"one-to-four-t2-pipe"
	}
	local u2 = {
		"underground-i-t2-pipe",
		"underground-L-t2-pipe",
		"underground-t-t2-pipe",
		"underground-cross-t2-pipe"
	}
	local p3 = {
		"one-to-one-forward-t3-pipe",
		"one-to-two-perpendicular-t3-pipe",
		"one-to-three-forward-t3-pipe",
		"one-to-four-t3-pipe"
	}
	local u3 = {
		"underground-i-t3-pipe",
		"underground-L-t3-pipe",
		"underground-t-t3-pipe",
		"underground-cross-t3-pipe"
	}
	local recipes = {
		[p1[1]]	= {ITEM("small-parts-01"), ITEM("pipe-to-ground", 1)},
		[p1[2]]	= {ITEM("small-parts-01"), ITEM("pipe-to-ground", 2)},
		[p1[3]]	= {ITEM("small-parts-01"), ITEM("pipe-to-ground", 3)},
		[p1[4]]	= {ITEM("small-parts-01"), ITEM("pipe-to-ground", 4)},
		
		[u1[1]] = {ITEM(p1[1]), ITEM("glass")},
		[u1[2]] = {ITEM(p1[2]), ITEM("glass")},
		[u1[3]] = {ITEM(p1[3]), ITEM("glass")},
		[u1[4]] = {ITEM(p1[4]), ITEM("glass")},
		
		[p2[1]]= {ITEM(p1[1]), ITEM("niobium-pipe-to-ground", 1)},
		[p2[2]]= {ITEM(p1[2]), ITEM("niobium-pipe-to-ground", 1)},
		[p2[3]]= {ITEM(p1[3]), ITEM("niobium-pipe-to-ground", 1)},
		[p2[4]]= {ITEM(p1[4]), ITEM("niobium-pipe-to-ground", 1)},
		
		[u2[1]] = {ITEM(p2[1]), ITEM("plastic-bar")},
		[u2[2]] = {ITEM(p2[2]), ITEM("plastic-bar")},
		[u2[3]] = {ITEM(p2[3]), ITEM("plastic-bar")},
		[u2[4]] = {ITEM(p2[4]), ITEM("plastic-bar")},
		
		[p3[1]]= {ITEM(p2[1]), ITEM("ht-pipes-to-ground", 1)},
		[p3[2]]= {ITEM(p2[2]), ITEM("ht-pipes-to-ground", 1)},
		[p3[3]]= {ITEM(p2[3]), ITEM("ht-pipes-to-ground", 1)},
		[p3[4]]= {ITEM(p2[4]), ITEM("ht-pipes-to-ground", 1)},
		
		[u3[1]] = {ITEM(p3[1]), ITEM("biopolymer")},
		[u3[2]] = {ITEM(p3[2]), ITEM("biopolymer")},
		[u3[3]] = {ITEM(p3[3]), ITEM("biopolymer")},
		[u3[4]] = {ITEM(p3[4]), ITEM("biopolymer")},	
	}
	
	for recipe, ings in pairs(recipes) do 
		momoPyTweak.functions.recipe.ReplaceAllIngredient(recipe, ings)
	end
end
