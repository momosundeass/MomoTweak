
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
local SaveAddIng = momoIRTweak.recipe.SaveAddIngredient
local Rem = momoIRTweak.recipe.RemoveIngredient

function momoIRTweak.updates.HarderConcrete()
	-- stone-gravel
	AddIng("concrete", ITEM("stone-gravel", 12))
end

function momoIRTweak.updates.NerfEnrichedOre()
	SetTime("enriched-copper", 86.8)
	SetTime("enriched-iron", 86.8)
end

function momoIRTweak.updates.MenariteImersite()
	SaveAddIng("duranium-ring", ITEM("imersite-glass", 16))
	SaveAddIng("duranium-bulkhead", ITEM("imersite-glass", 8))
	
	Rem(momoIRTweak.science.kProductionUtility, "k-processor")
	local amount = {2, 4, 8}
	if (momoIRTweak.science.isHarderPack) then amount = {8, 16, 32} end
	
	SaveAddIng("menarite-wafer", ITEM("k-lithium", 2))
	SaveAddIng("menarite-wafer", ITEM("k-silicon", 6))
	
	SaveAddIng(momoIRTweak.science.kProductionUtility, ITEM("menarite-processor", amount[1]))
	SaveAddIng(momoIRTweak.science.kSpace, ITEM("menarite-processor", amount[2]))
	SaveAddIng(momoIRTweak.science.kMatter, ITEM("menarite-processor", amount[3]))
	
	local sapphire = momoIRTweak.recipe.NewComplexRecipe(
		"grinding-3", 
		"momo-menarite-2-sapphire", {
			ITEM("menarite-powder", 40)
		}, {
			ITEM("sapphire-gem", 1),
			{ type        = item,
		      name        = "ruby-gem",
		      amount      = 1,
		      probability = 0.2 }
		}, 160)
	local ruby = momoIRTweak.recipe.NewComplexRecipe(
		"grinding-3",
		"momo-imersite-2-ruby", {
			ITEM("imersite-powder", 40)
		}, {
			ITEM("ruby-gem", 1),
			{ type        = item,
			  name         = "sapphire-gem",
			  amount       = 1,
			  probability  = 0.2 }
		}, 160)
	
	tech.AddUnlockEffect("menarite-processor", sapphire.name)
	tech.AddUnlockEffect("imersite-energy", ruby.name)
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
