local sc = {}
function sc.Updates()
	local ITEM = momoIRTweak.FastItem
	-- momoIRTweak.recipe.NewRecipeCustomName(customName, categoryCrafting, resultItemName, resultAmount, ingredients, timeUse)
	local NewRecipe = momoIRTweak.recipe.NewRecipeCustomName
	-- momoIRTweak.technology.AddUnlockEffect(technologyName, recipeName, overrideEnabled)
	local AddEffect = momoIRTweak.technology.AddUnlockEffect
	
	local pipeFromCopper = "pipe-from-copper"
	local pipeFromStone = "pipe-from-stone"
	NewRecipe(pipeFromCopper, "crafting", "pipe", 1, {ITEM("copper-pipe")})
	NewRecipe(pipeFromStone, "crafting", "pipe", 1, {ITEM("stone-pipe")})
	
	AddEffect("fluid-handling", pipeFromCopper)
	AddEffect("fluid-handling", pipeFromStone)
	
	local pipe2FromBronze = "pipe-2-from-bronze"
	NewRecipe(pipe2FromBronze, "crafting", "steel-pipe", 1, {ITEM("bronze-pipe")})
	AddEffect("alloy-processing", pipe2FromBronze)

	-- momoIRTweak.NewSubgroup(name, group, order)
	local sg = "pipe-convert"
	momoIRTweak.NewSubgroup(sg, "bob-logistics", momoIRTweak.subgroups["pipe-to-ground"].order .. "1")
	-- --[[
	local order = 0
	for i, r in pairs({pipeFromStone, pipeFromCopper, pipe2FromBronze}) do 
		momoIRTweak.Log(r)
		local prot = data.raw.recipe[r]
		prot.subgroup = sg
		prot.order = "mm-pipe-convert-" .. order
		order = order + 1
	end
	-- --]]
end


return sc