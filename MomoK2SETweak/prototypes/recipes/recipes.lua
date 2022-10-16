function momoK2SETweak.recipes.FinalFix()
	if (momoK2SETweak.mods.BobInserter) then
		local RemoveRecipe = momoIRTweak.technology.RemoveAllUnlockEffect
		
		RemoveRecipe("long-handed-inserter")
		
		
		if momoK2SETweak.mods.K2 then
			RemoveRecipe("kr-superior-long-inserter")
			RemoveRecipe("kr-superior-long-filter-inserter")
		end
	end
end