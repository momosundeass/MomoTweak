local ITEM = momoIRTweak.FastItem

function momoPyTweak.compatibility.MiniloaderRecipe()
	if not (settings.startup["momo-miniloader"].value) then return end
	
	--------- recipe
	momoIRTweak.recipe.ReplaceIngredient("miniloader", "fast-inserter", ITEM("inserter", 4))
end

function momoPyTweak.finalFixes.MiniloaderTechnology()
	if not (settings.startup["momo-miniloader"].value) then return end
	
	--------- technology
	momoIRTweak.technology.SetPrerequire("miniloader", {"logistics", "steel-processing"})

	local ingredients = {ITEM("automation-science-pack", 1)}
	-- momoIRTweak.ValidateItem("py-science-pack-1", function(item) 
		-- table.insert(ingredients, ITEM("py-science-pack-1", 1))
	-- end)
	momoIRTweak.technology.SetIngredient("miniloader", ingredients)
end