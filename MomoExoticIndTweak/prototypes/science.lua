local sc = {}
function sc.Updates()
	-- customName, categoryCrafting, resultItemName, resultAmount, ingredients, timeUse
	local NewRecipe = momoIRTweak.recipe.NewRecipeCustomName
	local ITEM = momoIRTweak.FastItem
	
	NewRecipe("mm-dark-age-tech-alt1", "crafting", "ei_dark-age-tech", 11, {ITEM("ei_burner-assembler", 1)}, 1)
	momoIRTweak.technology.AddUnlockEffect("ei_steam-age", "mm-dark-age-tech-alt1") 
	
	NewRecipe("mm-steam-age-tech-alt1", "crafting", "ei_steam-age-tech", 12, {ITEM("ei_steam-assembler", 1)}, 4)
	momoIRTweak.technology.AddUnlockEffect("ei_electricity-age", "mm-steam-age-tech-alt1")
	
	NewRecipe("mm-steam-age-tech-alt2", "crafting", "ei_steam-age-tech", 12, {ITEM("ei_steam-crusher", 1)}, 4)
	momoIRTweak.technology.AddUnlockEffect("ei_electricity-age", "mm-steam-age-tech-alt2")
	
	NewRecipe("mm-steam-age-tech-alt3", "crafting", "ei_steam-age-tech", 3, {ITEM("ei_steam-inserter", 1)}, 4)
	momoIRTweak.technology.AddUnlockEffect("ei_electricity-age", "mm-steam-age-tech-alt3")
end
return sc