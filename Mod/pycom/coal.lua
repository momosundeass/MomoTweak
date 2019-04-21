local subG = data.raw.recipe[momoTweak.sciLogistic].subgroup
data.raw.recipe[momoTweak.sci1].subgroup = subG
data.raw.recipe[momoTweak.sci1].order = "1"

data.raw.recipe[momoTweak.sci2].subgroup = subG
data.raw.recipe[momoTweak.sci2].order = "2"

data.raw.recipe[momoTweak.sci3].subgroup = subG
data.raw.recipe[momoTweak.sci3].order = "3"

data.raw.recipe[momoTweak.sciProduction].subgroup = subG
data.raw.recipe[momoTweak.sciProduction].order = "4"

momoTweak.set_amount_ingredient("equipment-chassi", {"bronze-alloy", 6})
momoTweak.set_amount_ingredient("equipment-chassi", {"iron-plate", 7})
momoTweak.set_amount_ingredient("lens", {"glass", 9})
momoTweak.set_amount_ingredient("optical-fiber", {"plastic-bar", 6})
bobmods.lib.recipe.add_ingredient("nichrome", {"plastic-bar", 4})

-- nerf automater factory
momoTweak.replace_with_ingredient("automated-factory-mk01", "assembling-machine-1", {"assembling-machine-3", 3})

local tech_chem2 = momoTweak.get_tech_of_recipe("angels-chemical-plant")

-- Bio ins balanced wood and charcoal
if mods["Bio_Industries"] then
	data.raw.recipe["coal-fawogae"].results[1].amount = 4
	if data.raw.fluid["gas-oxygen"] then
		local res = momoTweak.createRecipe("hpf", {{"coal", 4}}, {
			{type="item", name="fawogae", amount=8},
			{type="fluid", name="gas-oxygen", amount=30}
		}, 2, tech_chem2)
		local ori = data.raw.recipe["coal-fawogae"]
		data.raw.recipe[res].order = ori.order .. "1"
		data.raw.recipe[res].subgroup = ori.subgroup
		data.raw.recipe[res].icon = ori.icon
		data.raw.recipe[res].icon_size = 32
	end
	if data.raw.recipe["bi_recipe_charcoal_2"] then
		data.raw.recipe["bi_recipe_charcoal_2"].result_count = 32
	end
	if data.raw.recipe["bi_recipe_logs_mk1"] then
		momoTweak.set_amount_ingredient("log-wood", {"log", 3})
	end
	bobmods.lib.recipe.add_ingredient("rail", {"steel-plate", 2})
end

data.raw.item["raw-borax"].stack_size = 400

bobmods.lib.recipe.remove_result("coal-gas-from-coke", "coal-gas")
bobmods.lib.recipe.add_result("coal-gas-from-coke", {type="fluid", name="coal-gas", amount = 60})

-- ash from coke
momoTweak.createRecipe("gasifier", {{"ash", 6}}, {
	{type="item", name="solid-coke", amount=2},
	{type="fluid", name="gas-oxygen", amount=75}},
	2, tech_chem2)


-- fawogae from soil (tech - coal-processing-1)
data:extend({
	{type="recipe",
	name="momo-soil-fawogea", 
	category="fawogae",
	energy_required=5, 
	enabled = "false",
	ingredients = {
		{type="item", name="soil", amount=15},
		{type="fluid", name="water", amount=900}
	}, 
	results={{type="item", name="fawogae", amount=14}}
	}
})
bobmods.lib.tech.add_recipe_unlock("coal-processing-1", "momo-soil-fawogea")

-- tailling liqifying
data:extend({{
	type="recipe", name="momo-tailling-slag", localised_name="Slag from tailings",
	enabled="false", energy_required=7, 
	category="liquifying", subgroup="water-salination",
	ingredients={{type="fluid", name="dirty-water", amount=300}},
	results={
		{type="fluid", name="water", amount=300},
		{type="item", name="slag", amount=3}, 
		{type="item", name="solid-sand", amount=2}},
	icon = "__angelsrefining__/graphics/icons/slag.png", icon_size = 32
	
}})
bobmods.lib.tech.add_recipe_unlock("basic-chemistry", "momo-tailling-slag")

-- solid-soil
if (data.raw.item["solid-soil"]) then	
	data:extend({{
		type="recipe", name="momo-soil-to-solid",
		enabled="false", energy_required=4, 
		category="crafting",
		ingredients={{"soil", 12}, {"solid-compost", 1}},
		results={{type="item", name="solid-soil", amount=1}},
	}})
	bobmods.lib.tech.add_recipe_unlock("bio-farm", "momo-soil-to-solid")
	data.raw.item["solid-soil"].localised_name = "Fertile Soil"
end

-- pure-sand -- glass mixture
if data.raw.item["solid-glass-mixture"] and data.raw["recipe-category"]["powder-mixing"] then
	data:extend({
		{type="recipe", name="momo-solid-glass-mixer",
			enabled = "false", energy_required = 4,
			category = "powder-mixing",
			ingredients = {{"pure-sand", 15}, {"crushed-quartz", 4}, {"solid-lime", 10}},
			result = "solid-glass-mixture", result_count = 26
		},
		{type="recipe", name="momo-pure-glass-mixer",
			enabled = "false", energy_required = 4,
			category = "powder-mixing",
			ingredients = {{"pure-sand", 14}, {"solid-lime", 2}},
			result = "solid-glass-mixture", result_count = 5
		}
	})
	bobmods.lib.tech.add_recipe_unlock("angels-glass-smelting-1", "momo-solid-glass-mixer")
	bobmods.lib.tech.add_recipe_unlock("angels-glass-smelting-1", "momo-pure-glass-mixer")
end

momoTweak.createRecipe("soil-extraction", {{"soil", 36}}, {
	{type="fluid", name="water-viscous-mud", amount=300}
	},2, momoTweak.get_tech_of_recipe("washing-plant-2"))
