local ITEM = momoIRTweak.FastItem
local FLUID = momoIRTweak.FastFluid
local AddIng = momoIRTweak.recipe.SafeAddIngredient
local ResultCount = momoIRTweak.recipe.SetResultCount
local NEW = momoIRTweak.recipe.NewRecipeCustomName
local UnlockAt = momoIRTweak.recipe.UnlockAtRef
local Replace = momoIRTweak.recipe.ReplaceIngredient

function momoTweak.recipe.MiscRecipe()
	ResultCount("angels-rivet", 2)
	ResultCount("angels-axle", 2)
	
	-- fix fluid amount
	AddIng("angels-bearing", FLUID("lubricant", 15))
	AddIng("cable-harness-3", FLUID(momoTweak.fluid.rubber, 10))
	AddIng("cable-harness-4", FLUID(momoTweak.fluid.plastic, 15))
	AddIng("cable-harness-5", FLUID(momoTweak.fluid.plastic, 15))
	-- fix fluid amount
	
	
	AddIng("science-force-analyzer", ITEM("cable-harness-2", 1))
	
	Replace("block-fluidbox-1", "pipe", "stone-pipe")
	Replace("block-fluidbox-2", "pipe", "stone-pipe")
	
	AddIng("bob-laser-turret-5", ITEM("tungsten-plate", 30))
	
	local sandLandfill = NEW("momo-sand-landfill", "crafting", "landfill", 1, {
		ITEM("solid-sand", 40),
	}, 4)
	UnlockAt(sandLandfill, "solid-mud-landfill")
end