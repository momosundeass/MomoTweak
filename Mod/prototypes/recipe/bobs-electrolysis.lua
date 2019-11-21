if data.raw["recipe-category"]["electrolysis"] then
  data:extend({
    {
          type = "recipe",
          name = "momo-silicon-plate",
          enabled = "false",
          energy_required = 3.5,
          category = "electrolysis",
          subgroup = data.raw.recipe["lithium"].subgroup,
          ingredients = {{"quartz", 4}, {"carbon", 1}},
          result = "silicon",
          result_count = 3
    }
  })
  bobmods.lib.tech.add_recipe_unlock("silicon-processing", "momo-silicon-plate")
  
  bobmods.lib.recipe.add_ingredient("module-contact", {"silicon", 4})
  bobmods.lib.recipe.add_ingredient("low-density-structure", {"silicon", 10})
  
  data.raw.recipe[momoTweak.batterys.lithium].category = "electrolysis"
  data.raw.recipe[momoTweak.batterys.silver].category = "electrolysis"
  if (momoTweak.mods.angelBio) then
	momoTweak.angel_electrolysis_recipe()
  end
end