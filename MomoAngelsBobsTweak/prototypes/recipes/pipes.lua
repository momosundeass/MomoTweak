local sc = {}
function sc.Updates()
	local ITEM = momoIRTweak.FastItem
	-- momoIRTweak.recipe.NewRecipeCustomName(customName, categoryCrafting, resultItemName, resultAmount, ingredients, timeUse)
	local NewRecipe = momoIRTweak.recipe.NewRecipeCustomName
	
	local pipeFromCopper = "pipe-from-copper"
	local pipeFromStone = "pipe-from-stone"
	NewRecipe(pipeFromCopper, "crafting", "pipe", 1, {ITEM("copper-pipe")})
	NewRecipe(pipeFromStone, "crafting", "pipe", 1, {ITEM("stone-pipe")})
	
	-- momoIRTweak.technology.AddUnlockEffect(technologyName, recipeName, overrideEnabled)
	local AddEffect = momoIRTweak.technology.AddUnlockEffect
	AddEffect("fluid-handling", pipeFromCopper)
	AddEffect("fluid-handling", pipeFromStone)

	-- momoIRTweak.NewSubgroup(name, group, order)
	local sg = "pipe-convert"
	momoIRTweak.NewSubgroup(sg, "bob-logistics", momoIRTweak.subgroups["pipe-to-ground"].order .. "1")
	-- --[[
	data.raw.recipe[pipeFromCopper].subgroup = sg
	data.raw.recipe[pipeFromStone].subgroup = sg
	-- --]]
end


return sc