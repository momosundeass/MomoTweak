function momoK2SETweak.recipes.Pipes()
	-- ReplaceIngredient
	
	local recipe = momoIRTweak.recipe
	local ITEM = momoIRTweak.FastItem
	recipe.ReplaceIngredient("pipe-to-ground",          "iron-plate",  ITEM("stone", 5))
	recipe.ReplaceIngredient("kr-steel-pipe-to-ground", "steel-plate", ITEM("stone-brick", 5))
	
	if momoK2SETweak.mods.AdvancedPipe then
		local pipeIngs = {
			"small-pipe-coupler",  "underground-pipe-segment-t1",
			"medium-pipe-coupler", "underground-pipe-segment-t2",
			"large-pipe-coupler",  "underground-pipe-segment-t3",
			"space-pipe-coupler",  "underground-pipe-segment-space",	
			"swivel-joint",
			}	
		local valves = {
			"80-overflow-space-valve",
			"80-top-up-space-valve",
			"check-space-valve"
		}
		local RemoveRecipe = momoIRTweak.technology.RemoveAllUnlockEffect
		for _, ing in pairs(pipeIngs) do
			RemoveRecipe(ing)
		end
		for _, v in pairs(valves) do
			RemoveRecipe(v)
		end
		
		RemoveRecipe("4-to-4-pipe")
		
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
		local p4 = {
			"one-to-one-forward-space-pipe",
			"one-to-two-perpendicular-space-pipe",
			"one-to-three-forward-space-pipe",
			"one-to-four-space-pipe"
		}
		local u4 = {
			"underground-i-space-pipe",
			"underground-L-space-pipe",
			"underground-t-space-pipe",
			"underground-cross-space-pipe"
		}
		
		
		recipe.ReplaceAllIngredient(p1[1], {ITEM("iron-gear-wheel", 1), ITEM("pipe-to-ground", 1)})
		recipe.ReplaceAllIngredient(p1[2], {ITEM(p1[1], 1),             ITEM("pipe-to-ground", 1)})
		recipe.ReplaceAllIngredient(p1[3], {ITEM(p1[2], 1),             ITEM("pipe-to-ground", 1)})
		recipe.ReplaceAllIngredient(p1[4], {ITEM(p1[3], 1),             ITEM("pipe-to-ground", 1)})
		
		for index, item in pairs(u1) do
			recipe.ReplaceAllIngredient(item, {ITEM("glass", 2), ITEM(p1[index], 1)})
		end
		
		for index, item in pairs(p2) do
			recipe.ReplaceAllIngredient(item, {ITEM("kr-steel-pipe-to-ground", 1), ITEM(p1[index], 1)})
		end
		for index, item in pairs(u2) do
			recipe.ReplaceAllIngredient(item, {ITEM("glass", 3), ITEM(p2[index], 1)})
		end
		for index, item in pairs(p3) do
			recipe.ReplaceAllIngredient(item, {ITEM("refined-concrete", 5), ITEM(p2[index], 1)})
		end
		for index, item in pairs(u3) do
			recipe.ReplaceAllIngredient(item, {ITEM("glass", 4), ITEM(p3[index], 1)})
		end		
		
		recipe.ReplaceAllIngredient(p4[1], {ITEM("low-density-structure", 1), ITEM("se-space-pipe-to-ground", 1)})
		recipe.ReplaceAllIngredient(p4[2], {ITEM(p4[1], 1),         ITEM("se-space-pipe-to-ground", 1)})
		recipe.ReplaceAllIngredient(p4[3], {ITEM(p4[2], 1),         ITEM("se-space-pipe-to-ground", 1)})
		recipe.ReplaceAllIngredient(p4[4], {ITEM(p4[3], 1),         ITEM("se-space-pipe-to-ground", 1)})
		
		for index, item in pairs(u4) do
			recipe.ReplaceAllIngredient(item, {ITEM("glass", 4), ITEM(p4[index], 1)})
		end
		
		recipe.ReplaceAllIngredient("underground-mini-pump", {
			ITEM("kr-steel-pump", 1),
			ITEM(u1[1], 1),
		})
		
		recipe.ReplaceAllIngredient("underground-space-pump", {
			ITEM("kr-steel-pump", 1),
			ITEM(u4[1], 2),
		})
	end
end
