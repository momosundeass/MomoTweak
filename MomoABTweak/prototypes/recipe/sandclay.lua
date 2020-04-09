-- solid-sand
-- solid-clay
-- solid-limestone

if data.raw.item["solid-clay"] and data.raw.item["solid-coke"] then
  data:extend({
    {
          type = "recipe",
          name = "momo-clay-coke",
          enabled = "false",
          energy_required = 2,
          category = "chemical-furnace",
          subgroup = data.raw.recipe["solid-coke"].subgroup,
          ingredients = {{"coal-crushed", 4}, {"solid-clay", 3}},
          result = "solid-coke",
          result_count = 5
    },
    {
          type = "recipe",
          name = "momo-clay-coke-2",
          enabled = "false",
          icon = data.raw.item["solid-coke"].icon,
          icon_size = 32,
          energy_required = 6,
          category = "liquifying",
          subgroup = data.raw.recipe["solid-coke"].subgroup,
          ingredients = {
              {type="item", name="coal-crushed", amount=4}, 
              {type="item", name="solid-clay", amount=3},
              {type="fluid", name="water-purified", amount=50}
            },
          results = {
            {type="item", name="solid-coke", amount=5},
            {type="fluid", name="water-yellow-waste", amount=80}
            }
    }
  })
  bobmods.lib.tech.add_recipe_unlock("angels-coal-processing", "momo-clay-coke")
  bobmods.lib.tech.add_recipe_unlock("angels-coal-processing-2", "momo-clay-coke-2")
end


--angel mud to sand
if data.raw["assembling-machine"]["washing-plant"] then
	data:extend({{
		 type = "recipe",
		 name = "momo-mud-sand",
		 localised_name = "Mud wash to sand",
		 enabled = "false",
		 subgroup = "water-salination",
		 energy_required =3,
		 category = "washing-plant",
		 ingredients = {
			{type="item", name="solid-mud", amount=2}, 
			{type="fluid", name="water", amount=100}
		 },
		 results = {
			{type="item", name="solid-sand", amount=2},
			{type="item", name="slag", amount=1}
		 },
		 icon = "__angelsrefining__/graphics/icons/solid-sand.png",
		 icon_size = 32
	}})
	bobmods.lib.tech.add_recipe_unlock("water-washing-1", "momo-mud-sand")
	data:extend({{
		 type = "recipe",
		 name = "momo-limestone-sand",
		 localised_name = "Limestone crushed to sand",
		 enabled = "false",
		 subgroup = "ore-processing-a",
		 order = "zzzz",
		 energy_required =1.5,
		 category = "ore-sorting-t1",
		 ingredients = {
			{type="item", name="solid-limestone", amount=1}
		 },
		 results = {
			{type="item", name="solid-sand", amount=4},
			{type="item", name="stone-crushed", amount=1}
		 },
		 icon = "__angelsrefining__/graphics/icons/solid-sand.png",
		 icon_size = 32
	}})
	bobmods.lib.tech.add_recipe_unlock("water-washing-1", "momo-limestone-sand")
end

if data.raw["recipe-category"]["biofarm-mod-crushing"] then
	momoTweak.createRecipe("biofarm-mod-crushing", 
	{{"solid-sand", 3}}, 
	{{"stone-crushed", 2}}, 
	4, momoTweak.get_tech_of_recipe("bi_recipe_stone_crusher"), "sand-upgrade")
end

momoTweak.createRecipe("chemical-furnace", {{"glass", 1}}, {
	{type="item", name="solid-sand", amount=12},
	{type="fluid", name="steam", amount=80, temperature=165}},
	13, momoTweak.get_tech_of_recipe("chemical-boiler"))
	

