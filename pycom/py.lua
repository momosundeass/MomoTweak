local subG = data.raw.recipe["logistic-science-pack"].subgroup
data.raw.recipe["science-pack-1"].subgroup = subG
data.raw.recipe["science-pack-1"].order = "1"

data.raw.recipe["science-pack-2"].subgroup = subG
data.raw.recipe["science-pack-2"].order = "2"

data.raw.recipe["science-pack-3"].subgroup = subG
data.raw.recipe["science-pack-3"].order = "3"


data.raw.recipe["production-science-pack"].subgroup = subG
data.raw.recipe["production-science-pack"].order = "4"

-- scienced recipe
momoTweak.replace_with_ingredient("flask", "raw-wood", {"copper-plate", 3})
momoTweak.createRecipe("advanced-crafting", {{"flask", 1}}, {
	{"iron-plate", 2},
	{"copper-plate", 1},
	{"glass", 7}
}, 2, "automation-2")

momoTweak.set_amount_ingredient("equipment-chassi", {"bronze-alloy", 6})
momoTweak.set_amount_ingredient("equipment-chassi", {"iron-plate", 7})
momoTweak.set_amount_ingredient("lens", {"glass", 9})


-- end

local tech_chem2 = momoTweak.get_tech_of_recipe("angels-chemical-plant")

-- nerf automater factory
pcall( function() data.raw["assembling-machine"]["automated-factory"].crafting_speed = 2 end )

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

if not momoTweak.pyhigh then
	data:extend({
		{
			type = "recipe",
			  name = "momo-fibreglass-borax",
			  enabled = "false",
			  energy_required = 1,
			  category = data.raw.recipe["fibreglass-board"].category,
			  ingredients = {{"plastic-bar", 2}, {"glass", 1}, {"electronic-components", 4}, {"borax", 5}},
			  results = {{type="item", name="fibreglass-board", amount=4}},
		}
	})
	bobmods.lib.tech.add_recipe_unlock("advanced-electronics-2", "momo-fibreglass-borax")
end


data.raw.item["raw-borax"].stack_size = 400


	
	
if mods["PyCoalTBaA"] then
	--"coal-gas-from-coke"
	bobmods.lib.recipe.remove_result("coal-gas-from-coke", "coal-gas")
	bobmods.lib.recipe.add_result("coal-gas-from-coke", {type="fluid", name="coal-gas", amount = 60})
	if data.raw.fluid["gas-oxygen"] then
		local res = momoTweak.createRecipe("gasifier", {{"ash", 6}}, {
		{type="item", name="solid-coke", amount=2},
		{type="fluid", name="gas-oxygen", amount=75}},
		2, tech_chem2)
	end
	
end

--angel mud to sand
if data.raw["assembling-machine"]["washing-plant"] then
	data:extend({
		{
			  type = "recipe",
			  name = "momo-py-mud-sand",
			  localised_name = "Mud wash to sand",
			  enabled = "false",
			  subgroup = "water-salination",
			  energy_required =3,
			  category = "washing-plant",
			  ingredients = {{type="item", name="solid-mud", amount=2}, {type="fluid", name="water", amount=100}},
			  results = {
				{type="item", name="solid-sand", amount=12},
				{type="item", name="slag", amount=1},
				{type="fluid", name="dirty-water", amount=20}},

			  icon = "__angelsrefining__/graphics/icons/solid-sand.png",
			  icon_size = 32
		},
	})
	bobmods.lib.tech.add_recipe_unlock("water-washing-1", "momo-py-mud-sand")
	if not momoTweak.pyhigh then
		data:extend({
			{
				  type = "recipe",
				  name = "momo-py-limestone-sand",
				  localised_name = "Limestone crushed to sand",
				  enabled = "false",
				  subgroup = "ore-processing-a",
				  order = "zzzz",
				  energy_required =1.5,
				  category = "ore-sorting-t1",
				  ingredients = {{type="item", name="solid-limestone", amount=1}},
				  results = {
					{type="item", name="solid-sand", amount=4},
					{type="item", name="stone-crushed", amount=1}
				 },
				  icon = "__angelsrefining__/graphics/icons/solid-sand.png",
				  icon_size = 32
			}
		})
		bobmods.lib.tech.add_recipe_unlock("water-washing-1", "momo-py-limestone-sand")
	end
end

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
if data.raw["assembling-machine"]["liquifier"] then
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
end
-- solid-soil
if data.raw.item["solid-soil"] and data.raw.technology["bio-farm"] then
	data:extend({{
		type="recipe", name="momo-soil-to-solid",
		enabled="false", energy_required=4, 
		category="crafting",
		ingredients={{"soil", 12}, {"solid-compost", 1}},
		results={{type="item", name="solid-soil", amount=1}},
	}})
	bobmods.lib.tech.add_recipe_unlock("bio-farm", "momo-soil-to-solid")
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

if data.raw["recipe-category"]["biofarm-mod-crushing"] and data.raw.item["solid-sand"] then
	momoTweak.createRecipe("biofarm-mod-crushing", 
	{{"solid-sand", 3}}, 
	{{"stone-crushed", 2}}, 
	4, momoTweak.get_tech_of_recipe("bi_recipe_stone_crusher"), "sand-upgrade")
end
	
if data.raw.fluid["water-viscous-mud"] then
	momoTweak.createRecipe("soil-extraction", {{"soil", 36}}, {
	{type="fluid", name="water-viscous-mud", amount=300}
	},2, momoTweak.get_tech_of_recipe("washing-plant-2"))
end

-- sand smelting tier2
local sand = "sand"
if mods["PyCoalTBaA"] and mods["angelsrefining"] then sand = "solid-sand" end
momoTweak.createRecipe("chemical-furnace", {{"glass", 1}}, {
	{type="item", name=sand, amount=12},
	{type="fluid", name="steam", amount=80, temperature=165}},
	13, momoTweak.get_tech_of_recipe("chemical-boiler"))
	

momoTweak.set_amount_ingredient("optical-fiber", {"plastic-bar", 6})
bobmods.lib.recipe.add_ingredient("nichrome", {"plastic-bar", 4})
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	