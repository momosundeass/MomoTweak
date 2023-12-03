--- using
local ITEM = momoIRTweak.FastItem
local AddIng = momoIRTweak.recipe.SaveAddIngredient
local Rem = momoIRTweak.recipe.RemoveIngredient
local Replace = momoIRTweak.recipe.ReplaceIngredient

local function ReplaceIngredientFor(recipe, removeNames, addItem)
	for _, name in pairs(removeNames) do
		Rem(recipe, name)
	end
	
	AddIng(recipe, addItem)
end

function momoPyTweak.compatibility.PipePack()	
	local t1Removes = {"underground-pipe-segment-t1", "pipe"}
	ReplaceIngredientFor("one-to-one-forward-pipe", t1Removes, ITEM("pipe-to-ground", 1))
	ReplaceIngredientFor("one-to-two-perpendicular-pipe", t1Removes, ITEM("pipe-to-ground", 2))
	ReplaceIngredientFor("one-to-three-forward-pipe", t1Removes, ITEM("pipe-to-ground", 3))
	ReplaceIngredientFor("one-to-four-pipe", t1Removes, ITEM("pipe-to-ground", 4))
	
	momoIRTweak.item.ValidateItem("niobium-pipe-to-ground", function (item)
		local t2Removes = {"underground-pipe-segment-t2", "pipe"}
		ReplaceIngredientFor("one-to-one-forward-t2-pipe", t2Removes, ITEM("niobium-pipe-to-ground", 1))
		ReplaceIngredientFor("one-to-two-perpendicular-t2-pipe", t2Removes, ITEM("niobium-pipe-to-ground", 2))
		ReplaceIngredientFor("one-to-three-forward-t2-pipe", t2Removes, ITEM("niobium-pipe-to-ground", 3))
		ReplaceIngredientFor("one-to-four-t2-pipe", t2Removes, ITEM("niobium-pipe-to-ground", 4))
	end)
	
	momoIRTweak.item.ValidateItem("ht-pipes-to-ground", function (item)
		local t3Removes = {"underground-pipe-segment-t3", "pipe"}
		ReplaceIngredientFor("one-to-one-forward-t3-pipe", t3Removes, ITEM("ht-pipes-to-ground", 1))
		ReplaceIngredientFor("one-to-two-perpendicular-t3-pipe", t3Removes, ITEM("ht-pipes-to-ground", 2))
		ReplaceIngredientFor("one-to-three-forward-t3-pipe", t3Removes, ITEM("ht-pipes-to-ground", 3))
		ReplaceIngredientFor("one-to-four-t3-pipe", t3Removes, ITEM("ht-pipes-to-ground", 4))
	end)
end
