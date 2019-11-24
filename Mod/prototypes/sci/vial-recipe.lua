-- using 
local ITEM = momoIRTweak.FastItem
local AddIng = momoIRTweak.recipe.SaveAddIngredient
local GetResultAmount = momoIRTweak.recipe.SaveGetResultAmount
local Rem = momoIRTweak.recipe.RemoveIngredient

local sciencePacks = {momoTweak.sci2, momoTweak.sci3, momoTweak.sciGun,
	momoTweak.sciProduction, momoTweak.sciTech, momoTweak.sciLogistic}
	
	
for i, sci in pairs(sciencePacks) do
	momoIRTweak.recipe.ValidateRecipe(sci, function(recipe)
		local result = GetResultAmount(recipe.name)
		AddIng(recipe.name, ITEM("momo-vial", result))
	end)
end

if momoTweak.mods.sct then
	for i, sci in pairs({momoTweak.sciLogistic, momoTweak.sciProduction}) do
		momoIRTweak.recipe.ValidateRecipe(sci, function(recipe)
			local result = GetResultAmount(recipe.name)
			Rem(recipe.name, "momo-vial")
			AddIng(recipe.name, ITEM("momo-vial", result))
		end)
	end
end

if momoTweak.mods.msp then
	for i = 3,30 do
		local msp = "more-science-pack-" .. i
		momoIRTweak.recipe.ValidateRecipe(msp, function(recipe) 
			local result = GetResultAmount(recipe.name)
			AddIng(recipe.name, ITEM("momo-vial", result))
		end)
	end
end

momoIRTweak.Log("finished add vial")