for i, sci in pairs({momoTweak.sci2, momoTweak.sci3, momoTweak.sciGun,
 momoTweak.sciProduction, momoTweak.sciTech, momoTweak.sciLogistic}) do
	if (data.raw.recipe[sci]) then
		if (IsScienceCostM) then
			table.insert(momoTweak.get_ingredients(sci), {"momo-vial", momoTweak.get_result_amount(sci)})
		else 
			bobmods.lib.recipe.add_ingredient(sci, {"momo-vial", momoTweak.get_result_amount(sci)})
		end
	else
		log("MTKL => no recipe with name :: " .. sci)
	end
	
end

local function getRecipe(number)
	return "more-science-pack-" .. number
end

if data.raw["tool"]["more-science-pack-1"] then
	for i = 3,30 do
		local recipe = getRecipe(i)
		bobmods.lib.recipe.add_ingredient(recipe, {"momo-vial", momoTweak.get_result_amount(recipe)})
	end
end

log("MTKL => finished add vial")