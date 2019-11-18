-- using 
local ITEM = momoIRTweak.FastITEM
local AddIng = momoIRTweak.recipe.AddOrUpdateIngredient
local GetIng = momoIRTweak.recipe.GetIngredient
local Rem = momoIRTweak.recipe.RemoveIngredient

local sciencePacks = {momoTweak.sci2, momoTweak.sci3, momoTweak.sciGun,
	momoTweak.sciProduction, momoTweak.sciTech, momoTweak.sciLogistic}

for i, sci in pairs(sciencePacks) do
	momoIRTweak.recipe.ValidateRecipe(sci, function(recipe)
		AddIng(recipe.name, ITEM("momo-vial", GetIng(recipe.name, sci).amount))
	end)
end

if momoTweak.mods.sct then
	for i, sci in pairs({momoTweak.sciLogistic, momoTweak.sciProduction}) do
		momoIRTweak.recipe.ValidateRecipe(sci, function(recipe)
			Rem(recipe.name, "momo-vial")
			AddIng(recipe.name, ITEM("momo-vial", GetIng(recipe.name, sci).amount))
		end)
	end
end

if momoTweak.mods.msp then
	for i = 3,30 do
		local msp = "more-science-pack-" .. i
		momoIRTweak.recipe.ValidateRecipe(msp, function(recipe) 
			AddIng(recipe.name, ITEM("momo-vial", GetIng(recipe.name, msp).amount))
		end)
	end
end

momoIRTweak.Log("finished add vial")