local ITEM = momoIRTweak.FastItem
local AddIng = momoIRTweak.recipe.SafeAddIngredient
local Remove = momoIRTweak.recipe.RemoveIngredient
local Replace = momoIRTweak.recipe.ReplaceIngredient

function momoPipeTweak.recipes.Update()
	local function ReplaceIngredientFor(recipe, removeNames, addItem)
		for _, name in pairs(removeNames) do
			Remove(recipe, name)
		end
		
		AddIng(recipe, addItem)
	end
	
	Replace("small-pipe-coupler", "iron-plate", ITEM("pipe", 1))
	Replace("underground-pipe-segment-t1", "iron-plate", ITEM("pipe-to-ground", 1))
	momoIRTweak.recipe.SetResultCount("underground-pipe-segment-t1", 15)
	
	Replace("medium-pipe-coupler", "iron-plate", ITEM("plastic-bar", 1))
	Replace("underground-pipe-segment-t2", "iron-plate", ITEM("plastic-bar", 2))
	
	local joint = "swivel-joint"
	local t1Removes = {"underground-pipe-segment-t1", "pipe"}
	ReplaceIngredientFor("one-to-one-forward-pipe", t1Removes, ITEM("pipe-to-ground", 1))
	ReplaceIngredientFor("one-to-two-perpendicular-pipe", t1Removes, ITEM("pipe-to-ground", 2))
	ReplaceIngredientFor("one-to-three-forward-pipe", t1Removes, ITEM("pipe-to-ground", 3))
	ReplaceIngredientFor("one-to-four-pipe", t1Removes, ITEM("pipe-to-ground", 4))
	

	local t2Removes = {"pipe", joint}
	ReplaceIngredientFor("one-to-one-forward-t2-pipe",       t2Removes, ITEM("one-to-one-forward-pipe"))
	ReplaceIngredientFor("one-to-two-perpendicular-t2-pipe", t2Removes, ITEM("one-to-two-perpendicular-pipe"))
	ReplaceIngredientFor("one-to-three-forward-t2-pipe",     t2Removes, ITEM("one-to-three-forward-pipe"))
	ReplaceIngredientFor("one-to-four-t2-pipe",              t2Removes, ITEM("one-to-four-pipe"))

	
	local t3Removes = {"pipe", joint}
	ReplaceIngredientFor("one-to-one-forward-t3-pipe",       t3Removes, ITEM("one-to-one-forward-t2-pipe"))
	ReplaceIngredientFor("one-to-two-perpendicular-t3-pipe", t3Removes, ITEM("one-to-two-perpendicular-t2-pipe"))
	ReplaceIngredientFor("one-to-three-forward-t3-pipe",     t3Removes, ITEM("one-to-three-forward-t2-pipe"))
	ReplaceIngredientFor("one-to-four-t3-pipe",              t3Removes, ITEM("one-to-four-t2-pipe"))
	
	
	ReplaceIngredientFor("large-pipe-coupler", {"steel-plate"}, ITEM("refined-concrete", 1));
	ReplaceIngredientFor("underground-pipe-segment-t3", {"steel-plate"}, ITEM("refined-concrete", 2));
	
	
end

function momoPipeTweak.recipes.FinalFix()
	
end