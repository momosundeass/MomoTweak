-- smelting-3 grinding-2 coke-smelting chemistry
-- rubber-wood  wood  wood-sapling  rubber-sapling  k-coke 

-- using
local ITEM = momoIRTweak.FastItem
local Fluid = momoIRTweak.FastFluid
local NewRecipe = momoIRTweak.recipe.NewRecipe
local NewRecipePrefix = momoIRTweak.recipe.NewRecipePrefix
local NewPrototype = momoIRTweak.recipe.BuildPrototype
local tech = momoIRTweak.technology

function momoIRTweak.updates.WoodToCokeRecipe()
	local unlockTech = data.raw.technology[tech.FindFromRecipe("k-coke")]
	
	-- wood 2 coke
	-- local woodToCoke = NewRecipePrefix("coke-smelting", "k-coke", 20, {
		-- ITEM("wood", 24)
	-- }, 12)
	-- woodToCoke.subgroup = "non-handcrafting"
	-- tech.AddUnlockEffect(unlockTech.name, woodToCoke.name)
	
	local tintTable = momoIRTweak.recipe.GetCraftingMachineTint("light-oil-cracking")
	
	local function NewOilRecipe(category, subgroup, name, ingredients, times, results)
		local toOil = NewPrototype(category, "coal", 1, ingredients, times)
		toOil.subgroup = subgroup
		momoIRTweak.recipe.ChangePrototypeResults(toOil, name, results)
		-- data:extend({toOil})
		tech.AddUnlockEffect(unlockTech.name, toOil.name)
		momoIRTweak.recipe.SetCraftingMachineTint(toOil.name, tintTable)
	end
	
	
	-- -- rubber wood to oil
	-- NewOilRecipe("chemistry", "fluid-recipes", "sapling-2-oil", {ITEM("sapling", 20)}, 20, {Fluid("light-oil", 20)}) 
	
	
	-- -- -- rubber wood to oil
	-- NewOilRecipe("chemistry", "fluid-recipes", "rubber-wood-2-oil", {ITEM("rubber-wood", 20)}, 20, {Fluid("light-oil", 80)}) 
	
	
	-- -- -- sapling to oil
	-- NewOilRecipe("chemistry", "fluid-recipes", "rubber-sapling-2-oil", {ITEM("rubber-sapling", 20)}, 20, {Fluid("light-oil", 40)}) 
	
	tech.AddUnitCount(unlockTech.name, 40)
end