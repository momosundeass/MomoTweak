if data.raw.fluid["liquid-molten-silicon"] then
  data:extend({
    {
          type = "recipe",
          name = "momo-silicon-plate",
          enabled = "false",
          energy_required = 3.5,
          category = data.raw.recipe["lithium"].category,
          subgroup = data.raw.recipe["lithium"].subgroup,
          ingredients = {{"quartz", 4}, {"carbon", 1}},
          result = "silicon",
          result_count = 3
    }
  })
  bobmods.lib.tech.add_recipe_unlock("silicon-processing", "momo-silicon-plate")
  -- data.raw.recipe["angels-plate-silicon"].category = data.raw.recipe["lithium"].category
  
  bobmods.lib.recipe.add_ingredient("module-contact", {"silicon", 4})
  bobmods.lib.recipe.add_ingredient("low-density-structure", {"silicon", 10})
end