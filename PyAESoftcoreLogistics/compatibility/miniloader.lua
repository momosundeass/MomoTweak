local ITEM = momoIRTweak.FastItem

function momoPyTweak.compatibility.MiniloaderRecipe()
	if not (settings.startup["momo-miniloader"].value) then return end
	
	--------- recipe
	local chute = ITEM("burner-inserter", 3)
	if (settings.startup["miniloader-enable-chute"].value) then
		chute = ITEM("chute-miniloader", 1)
	end
	momoIRTweak.recipe.ReplaceIngredient("miniloader", "fast-inserter", chute)
	
	
end

function momoPyTweak.finalFixes.MiniloaderTechnology()
	if not (settings.startup["momo-miniloader"].value) then return end
	
	--------- technology
	momoIRTweak.technology.SetPrerequire("miniloader", {"steel-processing"})

	local ingredients = {ITEM("automation-science-pack", 1)}
	momoIRTweak.technology.SetIngredient("miniloader", ingredients)
end