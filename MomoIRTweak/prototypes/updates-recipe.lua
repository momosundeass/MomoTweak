
-- using
local items = momoIRTweak.item
local ITEM = momoIRTweak.FastItem
local Fluid = momoIRTweak.FastFluid
local SetTime = momoIRTweak.recipe.SetTime
local NewRecipe = momoIRTweak.recipe.NewRecipe
local NewRecipePrefix = momoIRTweak.recipe.NewRecipePrefix
local NewPrototype = momoIRTweak.recipe.BuildPrototype
local tech = momoIRTweak.technology

function momoIRTweak.updates.NerfEnrichedOre()
	SetTime("enriched-copper", 86.8)
	SetTime("enriched-iron", 86.8)
end

function momoIRTweak.updates.EffectiveCopperIron()
	local unlockTech = "advanced-assembler"
	local refSubgroup = momoIRTweak.GetSubgroupFromRecipe("advanced-copper-pure")
	
	local function NewEffectiveRecipe(itemName, baseItem)
		local get = NewRecipePrefix("advanced-assembler", baseItem.name, 12, {
			ITEM(itemName .. "-powder", 4),
			ITEM("enriched-" .. itemName, 2)
		}, 38.4)
		get.subgroup = refSubgroup
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

function momoIRTweak.updates.WoodToCokeRecipe()
	local unlockTech = data.raw.technology["advanced-oil-processing"]

	-- wood 2 coke
	local woodToCoke = NewRecipePrefix("coke-smelting", "k-coke", 8, {
		ITEM("wood", 16)
	}, 12)
	woodToCoke.subgroup = "non-handcrafting"
	tech.AddUnlockEffect(unlockTech.name, woodToCoke.name)
	
	local tintTable = momoIRTweak.recipe.GetCraftingMachineTint("light-oil-cracking")
	
	local function NewOilRecipe(category, subgroup, name, ingredients, times, results)
		local toOil = NewPrototype(name, category, "coal", 1, ingredients, times)
		toOil.subgroup = subgroup
		momoIRTweak.recipe.ChangePrototypeResults(toOil, name, results)
		-- toOil.enabled = true
		data:extend({toOil})
		tech.AddUnlockEffect(unlockTech.name, toOil.name)
		momoIRTweak.recipe.SetCraftingMachineTint(toOil.name, tintTable)
	end
	
	
	-- -- rubber wood to oil
	NewOilRecipe("chemistry", "fluid-recipes", "sapling-2-oil", {
		ITEM("wood-sapling", 10)
	}, 6, {
		Fluid("light-oil", 36)
	}) 
	
	
	-- -- rubber wood to oil
	NewOilRecipe("chemistry", "fluid-recipes", "rubber-wood-2-oil", {
		ITEM("rubber-wood", 10)
	}, 12, {
		Fluid("light-oil", 96)
	}) 
	
	
	-- -- sapling to oil
	NewOilRecipe("chemistry", "fluid-recipes", "rubber-sapling-2-oil", 
		{ITEM("rubber-sapling", 10)
	}, 6, {
		Fluid("light-oil", 54)
	}) 
	
	tech.AddUnitCount(unlockTech.name, 40)
end