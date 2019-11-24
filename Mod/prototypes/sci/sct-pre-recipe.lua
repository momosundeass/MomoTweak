if not momoTweak.sct.recipe then momoTweak.sct.recipe = {} end

function momoTweak.require.SctPreRecipe()
	local sci_cat = momoTweak.GetScienceCraftingCategory()

	local scts =       {"sct-2",        "sct-gun",        "sct-3",        "sct-production",        "sct-logistic",        "sct-high"}
	local refSciPack = {momoTweak.sci2, momoTweak.sciGun, momoTweak.sci3, momoTweak.sciProduction, momoTweak.sciLogistic, momoTweak.sciTech}
	local timeMap =    {5,              8,                10,             10,                      10,                    15}

	local multiplePackResultAmount = 2

	local refSubgroup = data.raw.recipe[momoTweak.sci1].subgroup 

	if (momoTweak.py.coal) then
		refSubgroup = "science-pack"
		data:extend({
			{
				type = "item-subgroup",
				name = "science-pack-py-com",
				group = data.raw["item-subgroup"][refSubgroup].group,
				order = "zzzzz"
			}
		})
		for i, sci in pairs(refSciPack) do
			data.raw.recipe[sci].subgroup = "science-pack-py-com"
		end
		multiplePackResultAmount = 3
	end

	data.raw["item-subgroup"]["momo-science-materials"].group = data.raw["item-subgroup"][refSubgroup].group
	data.raw["item-subgroup"]["momo-science-materials"].order = "zzz"

	for i, item in pairs(scts) do
		momoTweak.sct.recipe[item] = momoTweak.createRecipe(
			sci_cat, 
			{{item, 1}}, 
			{}, 
			timeMap[i], 
			false
		)
		data.raw.recipe[momoTweak.sct.recipe[item]].subgroup = data.raw.recipe[refSciPack[i]].subgroup
	end

	-- No longer use this recipes["sct-logistic"]

	function momoTweak.sct.AddToTechnology()
		local refTech = {
			momoTweak.get_tech_of_recipe_no_demo(refSciPack[1]),
			momoTweak.get_tech_of_recipe(refSciPack[2]),
			momoTweak.get_tech_of_recipe(refSciPack[3]),
			momoTweak.get_tech_of_recipe(refSciPack[4]),
			momoTweak.get_tech_of_recipe(refSciPack[5]),
			momoTweak.get_tech_of_recipe(refSciPack[6]),
		}
		local count = 1
		for i, recipe in pairs(momoTweak.sct.recipe) do
			bobmods.lib.tech.add_recipe_unlock(refTech[count], recipe)
			count = count + 1
		end
	end

	function momoTweak.sct.IncreaseSciencePackAmount()
		for i, sci in pairs(refSciPack) do
			local resultAmount = momoTweak.get_result_amount(sci)
			
			bobmods.lib.recipe.set_result(sci, {sci, resultAmount * multiplePackResultAmount})
		end
	end
end
