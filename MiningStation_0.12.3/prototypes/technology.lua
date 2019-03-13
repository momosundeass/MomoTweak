data:extend(
{   
    {
    type = "technology",
    name = "ms-mining-pre",
    icon = "__MiningStation__/graphics/icons/driller-component.png",
    prerequisites =
    {
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ms-d-component"
      },
    },
    unit =
    {
      count = 50,
      ingredients = 
      {
        {"science-pack-1", 1},
      },
      time = 15
    },
    upgrade = true,
    order = "d-b-a1"
  },
	{
    type = "technology",
    name = "ms-mining-1",
    icon = "__MiningStation__/graphics/icons/c1.png",
    prerequisites =
    {
	  "ms-mining-pre",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mining-class-1"
      },
      {
        type = "unlock-recipe",
        recipe = "mining-station-1"
      },
	  {
        type = "unlock-recipe",
        recipe = "mining-class-0-1"
      },
	  {
		type = "unlock-recipe",
        recipe = "ms-d-class1"
	  }
    },
    unit =
    {
      count = 200,
      ingredients = 
      {
        {"science-pack-1", 1},
      },
      time = 15
    },
    upgrade = true,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "ms-mining-2",
    icon = "__MiningStation__/graphics/icons/c1.png",
    prerequisites =
    {
		"ms-mining-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mining-class-2"
      },
      {
        type = "unlock-recipe",
        recipe = "mining-station-2"
      },
	  {
		type = "unlock-recipe",
        recipe = "ms-d-class2"
	  }
    },
    unit =
    {
      count = 400,
      ingredients = 
      {
        {"science-pack-1", 2},
		{"science-pack-2", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "ms-mining-3",
    icon = "__MiningStation__/graphics/icons/c1.png",
    prerequisites =
    {
		"ms-mining-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mining-class-3"
      },
	  {
        type = "unlock-recipe",
        recipe = "mining-crystal"
      },
      {
        type = "unlock-recipe",
        recipe = "mining-station-3"
      },
	  {
        type = "unlock-recipe",
        recipe = "mining-oil"
      },
	  {
		type = "unlock-recipe",
		recipe = "ms-d-class3"
	  },
	  {
		type = "unlock-recipe",
		recipe = "ms-d-oil"
	  }
    },
    unit =
    {
      count = 600,
      ingredients = 
      {
        {"science-pack-1", 3},
		{"science-pack-2", 2},
		{"science-pack-3", 1},
      },
      time = 45
    },
    upgrade = true,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "ms-mining-4",
    icon = "__MiningStation__/graphics/icons/c1.png",
    prerequisites =
    {
		"ms-mining-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mining-class-4"
      },
      {
        type = "unlock-recipe",
        recipe = "mining-station-4"
      },
	  {
        type = "unlock-recipe",
        recipe = "mining-lava"
      },
	  {
		type = "unlock-recipe",
		recipe = "ms-d-class4"
	  },
	  {
		type = "unlock-recipe",
		recipe = "ms-d-lava"
	  }
    },
    unit =
    {
      count = 800,
      ingredients = 
      {
        {"science-pack-1", 4},
		{"science-pack-2", 3},
		{"science-pack-3", 2},
		{"science-pack-4", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "d-b-a1"
  },
  {
    type = "technology",
    name = "ms-mining-5",
    icon = "__MiningStation__/graphics/icons/c1.png",
    prerequisites =
    {
		"ms-mining-4",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mining-station-5"
      },
    },
    unit =
    {
      count = 3200,
      ingredients = 
      {
        {"science-pack-1", 5},
		{"science-pack-2", 3},
		{"science-pack-3", 2},
		{"science-pack-4", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "d-b-a1"
  },
}
)
