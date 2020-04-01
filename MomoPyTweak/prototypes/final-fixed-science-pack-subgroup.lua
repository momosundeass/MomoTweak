function momoPyTweak.finalFixes.MoveSciencePackSubgroup()
	local orderCount = 1
	for _, sci in pairs(momoPyTweak.science.packs) do
		momoIRTweak.recipe.SetSubgroup(sci, "science-pack", "a" .. orderCount)
		momoIRTweak.item.SetSubgroup(sci, "science-pack", "a" .. orderCount)
		orderCount = orderCount + 1
	end
	
	if (momoPyTweak.mods.pyAL) then
		local sci = momoPyTweak.alScience.pyPack
		momoIRTweak.recipe.SetSubgroup(sci, "science-pack", "a" .. orderCount)
		momoIRTweak.item.SetSubgroup(sci, "science-pack", "a" .. orderCount)
	end
end