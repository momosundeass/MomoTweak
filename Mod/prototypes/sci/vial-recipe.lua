for i, sci in pairs({momoTweak.sci2, momoTweak.sci3, momoTweak.sciGun,
 momoTweak.sciProduction, momoTweak.sciTech, momoTweak.sciLogistic}) do
	if (data.raw.recipe[sci]) then
		bobmods.lib.recipe.add_ingredient(sci, {"momo-vial", momoTweak.get_result_amount(sci)})
	else
		log("MTKL => no recipe with name :: " .. sci)
	end
end

if (momoTweak.mods.sct) then
	for i, sci in pairs({momoTweak.sciLogistic, momoTweak.sciProduction}) do
		if (data.raw.recipe[sci]) then
			bobmods.lib.recipe.remove_ingredient(sci, "momo-vial")
			table.insert(data.raw.recipe[sci].ingredients, {"momo-vial", momoTweak.get_result_amount(sci)})
		else
			log("MTKL => [Science Cost Tweak] no recipe with name :: " .. sci)
		end
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