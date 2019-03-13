data:extend(
{   
    {
    type = "technology",
    name = "iron-oxide",
    icon = "__MiningStation__/graphics/icons/adv-iron.png",
    prerequisites =
    {
		"steel-processing"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "iron-oxide"
      },
	  {
        type = "unlock-recipe",
        recipe = "adv-iron"
      },
    },
    unit =
    {
      count = 150,
      ingredients = 
      {
        {"science-pack-1", 3},
		{"science-pack-2", 1},
      },
      time = 30
    },
    upgrade = false,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "iron-oxide-2",
    icon = "__MiningStation__/graphics/icons/adv-iron.png",
    prerequisites =
    {
		"iron-oxide"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "iron-oxide-2"
      },
    },
    unit =
    {
      count = 450,
      ingredients = 
      {
        {"science-pack-1", 5},
		{"science-pack-2", 3},
		{"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "lead-oxide-2",
    icon = "__bobplates__/graphics/icons/lead-silver.png",
    prerequisites =
    {
		"lead-processing"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "lead-oxide-2"
      },
    },
    unit =
    {
      count = 450,
      ingredients = 
      {
        {"science-pack-1", 5},
		{"science-pack-2", 3},
		{"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "nickel-processing-2",
    icon = "__MiningStation__/graphics/icons/adv-nickel.png",
    prerequisites =
    {
		"nickel-processing"
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "adv-nickel"
      },
    },
    unit =
    {
      count = 150,
      ingredients = 
      {
        {"science-pack-1", 3},
		{"science-pack-2", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-b-a1"
  },
}
)
