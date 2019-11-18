local ITEM = momoIRTweak.FastItem
local Fluid = momoIRTweak.FastFluid
local NewRecipe = momoIRTweak.recipe.NewRecipe
local NewRecipePrefix = momoIRTweak.recipe.NewRecipePrefix
local NewPrototype = momoIRTweak.recipe.BuildPrototype
local tech = momoIRTweak.technology
local AddIng = momoIRTweak.recipe.AddOrUpdateIngredient

local function WoodToCoke()
	local unlockTech = data.raw.technology["advanced-oil-processing"]

	-- wood 2 coke
	local woodToCoke = NewRecipePrefix("coke-smelting", "k-coke", 8, {
		ITEM("wood", 16)
	}, 12)
	woodToCoke.subgroup = "non-handcrafting"
	tech.AddUnlockEffect(unlockTech.name, woodToCoke.name)
	momoIRTweak.recipe.SetLocalizedName(woodToCoke.name, "Coke from woods")
	
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

local function NewTechnology()
	local prototype = tech.Clone("deadlock-forestry-2", "momo-forestry")
	tech.SetPrerequire(prototype, {"deadlock-forestry-2", "deadlock-barrelling"})
	tech.ClearEffects(prototype)
	tech.SetUnit(prototype, {
		{momoIRTweak.science.pack1, 1},
		{momoIRTweak.science.pack2, 1},
		{momoIRTweak.science.pack3, 1}
	}, 60, 300)
	data:extend({prototype})
end

local function WoodRecipe()
	local woodRecipe = NewPrototype("momo-wood", "forestry", "wood", 0, {
		ITEM("wood-sapling", 10),
		ITEM("landfill", 1),
		ITEM("water-barrel", 6)
	}, 240)
	woodRecipe.subgroup = "non-handcrafting"
	momoIRTweak.recipe.ChangePrototypeResults(woodRecipe, "momo-wood", {
		ITEM("wood", 60),
		ITEM("stone-gravel", 5),
		ITEM("sand", 5),
		ITEM("empty-barrel", 6),
		momoIRTweak.recipe.GetResultWithAmount("wood-sapling", 10, 11)
	})
	data:extend({woodRecipe})
	momoIRTweak.recipe.SetLocalizedName(woodRecipe.name, "Advanced wood growing")
	tech.AddUnlockEffect("momo-forestry", woodRecipe.name)
	momoIRTweak.recipe.SetEmissions(woodRecipe.name, 3)
	
	woodRecipe = NewPrototype("momo-wood", "forestry", "rubber-wood", 0, {
		ITEM("rubber-sapling", 10),
		ITEM("landfill", 1),
		ITEM("water-barrel", 6)
	}, 240)
	woodRecipe.subgroup = "non-handcrafting"
	momoIRTweak.recipe.ChangePrototypeResults(woodRecipe, "momo-rubber-wood", {
		ITEM("rubber-wood", 60),
		ITEM("stone-gravel", 5),
		ITEM("sand", 5),
		ITEM("empty-barrel", 6),
		momoIRTweak.recipe.GetResultWithAmount("rubber-sapling", 10, 11)
	})
	data:extend({woodRecipe})
	momoIRTweak.recipe.SetLocalizedName(woodRecipe.name, "Advanced rubber wood growing")
	tech.AddUnlockEffect("momo-forestry", woodRecipe.name)
	momoIRTweak.recipe.SetEmissions(woodRecipe.name, 3)
end

function momoIRTweak.updates.WoodProcess()
	WoodToCoke()
	NewTechnology()
	WoodRecipe()
end