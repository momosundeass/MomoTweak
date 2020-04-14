local ITEM = momoIRTweak.FastItem
local FLUID = momoIRTweak.FastFluid
local AddIng = momoIRTweak.recipe.SafeAddIngredient
local ResultCount = momoIRTweak.recipe.SetResultCount
local NEW = momoIRTweak.recipe.NewRecipeCustomName
local UnlockAt = momoIRTweak.recipe.UnlockAtRef

function momoTweak.recipe.MiscRecipe()
	ResultCount("angels-rivet", 3)
	ResultCount("angels-axle", 2)
	
	AddIng("angels-bearing", FLUID("lubricant", 15))
	AddIng("science-force-analyzer", ITEM("cable-harness-2", 1))
	
	local sandLandfill = NEW("momo-sand-landfill", "crafting", "landfill", 1, {
		ITEM("solid-sand", 40),
	}, 4)
	UnlockAt(sandLandfill, "solid-mud-landfill")
end