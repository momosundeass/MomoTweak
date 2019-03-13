data:extend(
{
  {
    type = "technology",
    name = "steel-processing-2",
    icon = "__base__/graphics/technology/steel-processing.png",
    prerequisites =
    {
		"steel-processing",
    },
	effects =
    {
      {
        type = "unlock-recipe",
        recipe = "carbon-steel"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	                 {"science-pack-1", 1},
	                 {"science-pack-2", 1}
					 },
      time = 30
    },
	upgrade = true,
    order = "c-a"
  },
  {
    type = "technology",
    name = "tin-processing-2",
    icon = "__CORE-DyTech-Core__/graphics/metallurgy/tin/plate-icon.png",
	prerequisites =
    {
		"tin-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "carbon-tin"
      },
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
	upgrade = true,
    order = "tin-processing",
  },
}
)