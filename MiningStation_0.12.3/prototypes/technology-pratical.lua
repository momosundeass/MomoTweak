data:extend(
{
	{
    type = "technology",
    name = "ms-iron-1",
    icon = "__MiningStation__/graphics/icons/iron-pratical.png",
    prerequisites =
    {
		"electrolysis-3",
		"advanced-material-processing-3"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "iron-pratical"
      },
	  {
        type = "unlock-recipe",
        recipe = "tin-pratical"
      },
	  {
		type = "unlock-recipe",
		recipe = "ms-go-iron"
	  },
	  {
		type = "unlock-recipe",
		recipe = "ms-go-i"
	  },
	  {
		type = "unlock-recipe",
		recipe = "ms-go-tin"
	  },
    },
    unit =
    {
      count = 400,
      ingredients = 
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "ms-copper-1",
    icon = "__MiningStation__/graphics/icons/copper-pratical.png",
    prerequisites =
    {
		"electrolysis-3",
		"advanced-material-processing-3"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "copper-pratical"
      },
	  {
        type = "unlock-recipe",
        recipe = "lead-pratical"
      },
	   {
		type = "unlock-recipe",
		recipe = "ms-go-copper"
	  },
	  {
		type = "unlock-recipe",
		recipe = "ms-go-lead"
	  },
	  {
		type = "unlock-recipe",
		recipe = "ms-go-c"
	  },
    },
    unit =
    {
      count = 400,
      ingredients = 
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "ms-iron-2",
    icon = "__MiningStation__/graphics/icons/iron-pratical.png",
    prerequisites =
    {
		"ms-iron-1"
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "zinc-pratical"
      },
	  {
		type = "unlock-recipe",
		recipe = "ms-go-zinc"
	  },
    },
    unit =
    {
      count = 500,
      ingredients = 
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "ms-copper-2",
    icon = "__MiningStation__/graphics/icons/copper-pratical.png",
    prerequisites =
    {
		"ms-copper-1"
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "gold-pratical"
      },
	  {
		type = "unlock-recipe",
		recipe = "ms-go-gold"
	  },
    },
    unit =
    {
      count = 500,
      ingredients = 
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "reverse-pratical",
    icon = "__MiningStation__/graphics/icons/copper-to-iron.png",
    prerequisites =
    {
		"ms-copper-2",
		"ms-iron-2"
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "copper-to-iron"
      },
	  {
		type = "unlock-recipe",
		recipe = "iron-to-copper"
	  },
    },
    unit =
    {
      count = 1000,
      ingredients = 
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 60
    },
    upgrade = false,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "ms-iron-3",
    icon = "__MiningStation__/graphics/icons/iron-pratical.png",
    prerequisites =
    {
		"ms-iron-2"
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "nickel-pratical"
      },
	  {
		type = "unlock-recipe",
		recipe = "ms-go-nickel"
	  },
    },
    unit =
    {
      count = 600,
      ingredients = 
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "ms-copper-3",
    icon = "__MiningStation__/graphics/icons/copper-pratical.png",
    prerequisites =
    {
		"ms-copper-2"
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "aluminium-pratical"
      },
	  {
		type = "unlock-recipe",
		recipe = "ms-go-bauxite"
	  },
    },
    unit =
    {
      count = 600,
      ingredients = 
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "ms-iron-4",
    icon = "__MiningStation__/graphics/icons/iron-pratical.png",
    prerequisites =
    {
		"ms-iron-3"
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "titanium-pratical"
      },
	  {
        type = "unlock-recipe",
        recipe = "titanium-pratical-back"
      },
	  {
		type = "unlock-recipe",
		recipe = "ms-go-titanium"
	  },
    },
    unit =
    {
      count = 600,
      ingredients = 
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"science-pack-4", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "ms-copper-4",
    icon = "__MiningStation__/graphics/icons/copper-pratical.png",
    prerequisites =
    {
		"ms-copper-3"
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "silver-pratical"
      },
	  {
        type = "unlock-recipe",
        recipe = "silver-pratical-back"
      },
	  {
		type = "unlock-recipe",
		recipe = "ms-go-silver"
	  },
    },
    unit =
    {
      count = 600,
      ingredients = 
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1},
		{"science-pack-4", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "ms-iron-5",
    icon = "__MiningStation__/graphics/icons/iron-pratical.png",
    prerequisites =
    {
		"ms-iron-4"
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "tungsten-pratical"
      },
	  {
		type = "unlock-recipe",
		recipe = "ms-go-tungsten"
	  },
    },
    unit =
    {
      count = 700,
      ingredients = 
      {
        {"science-pack-1", 5},
		{"science-pack-2", 3},
		{"science-pack-3", 1},
		{"science-pack-4", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "ms-copper-5",
    icon = "__MiningStation__/graphics/icons/copper-pratical.png",
    prerequisites =
    {
		"ms-copper-4"
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "cobalt-pratical"
      },
	  {
		type = "unlock-recipe",
		recipe = "ms-go-cobalt"
	  },
    },
    unit =
    {
      count = 700,
      ingredients = 
      {
        {"science-pack-1", 5},
		{"science-pack-2", 3},
		{"science-pack-3", 1},
		{"science-pack-4", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-b-a1"
  },
}
)
