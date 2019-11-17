
-- using
local items = momoIRTweak.item
local ITEM = momoIRTweak.FastItem
local Fluid = momoIRTweak.FastFluid
local SetTime = momoIRTweak.recipe.SetTime
local NewRecipe = momoIRTweak.recipe.NewRecipe
local NewRecipePrefix = momoIRTweak.recipe.NewRecipePrefix
local NewPrototype = momoIRTweak.recipe.BuildPrototype
local tech = momoIRTweak.technology
local AddIng = momoIRTweak.recipe.AddOrUpdateIngredient

function momoIRTweak.updates.HarderConcrete()
	-- stone-gravel
	AddIng("concrete", ITEM("stone-gravel", 12))
end

function momoIRTweak.updates.NerfEnrichedOre()
	SetTime("enriched-copper", 86.8)
	SetTime("enriched-iron", 86.8)
end

function momoIRTweak.updates.EffectiveCopperIron()
	local unlockTech = "advanced-assembler"
	local refSubgroup = momoIRTweak.GetSubgroupFromRecipe("copper-powder")
	local orderCounter = 0
	
	local function NewEffectiveRecipe(itemName, baseItem)
		local get = NewRecipePrefix("advanced-assembler", baseItem.name, 12, {
			ITEM(itemName .. "-powder", 4),
			ITEM("enriched-" .. itemName, 2)
		}, 38.4)
		get.subgroup = refSubgroup
		get.order = "zz-" .. orderCounter
		orderCounter = orderCounter + 1
		tech.AddUnlockEffect(unlockTech, get.name)
		
		local result = NewRecipePrefix("smelting-5", itemName .. "-scrap", 12, {
			ITEM(baseItem, 12),
		}, 38.4)
		result.subgroup = refSubgroup
		tech.AddUnlockEffect(unlockTech, result.name)
	end
	
	NewEffectiveRecipe("copper", items.packedCopper)
	NewEffectiveRecipe("iron", items.packedIron)
end
