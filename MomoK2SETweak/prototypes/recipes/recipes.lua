local ITEM = momoIRTweak.FastItem

function momoK2SETweak.recipes.FinalFix()
	if (momoK2SETweak.mods.BobInserter) then
		local RemoveRecipe = momoIRTweak.technology.RemoveAllUnlockEffect
		
		RemoveRecipe("long-handed-inserter")
		
		
		if momoK2SETweak.mods.K2 then
			RemoveRecipe("kr-superior-long-inserter")
			RemoveRecipe("kr-superior-long-filter-inserter")
		end
	end
	
	local card = "basic-tech-card"
	if (data.raw.tool[card]) then
		momoIRTweak.recipe.SafeAddIngredient("chemical-science-pack", {card, 5})
	end
end