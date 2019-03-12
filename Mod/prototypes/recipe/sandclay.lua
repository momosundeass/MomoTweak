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
          ingredients = {{"coal-crushed", 4}, {"solid-clay", 5}},
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
              {type="item", name="solid-clay", amount=5},
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