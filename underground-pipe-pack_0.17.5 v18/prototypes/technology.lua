data:extend({
  {
    type = "technology",
    name = "advanced-underground-piping",
    icon_size = 128,
    icon = "__underground-pipe-pack__/graphics/technology/advanced-underground-piping-t1.png",
    prerequisites = {"fluid-handling"},
    effects =
    {
	  -- ONE TO ONE PIPES
	  {
        type = "unlock-recipe",
        recipe = "one-to-one-forward-pipe"
      },
	  -- ONE TO TWO PIPES
	  {
        type = "unlock-recipe",
        recipe = "one-to-two-perpendicular-pipe"
      },
      --[[{
        type = "unlock-recipe",
        recipe = "one-to-two-L-FL-pipe"
      },]]--
	  -- ONE TO THREE PIPES
      {
        type = "unlock-recipe",
        recipe = "one-to-three-forward-pipe"
      },
	  -- ONE TO FOUR PIPE
      {
        type = "unlock-recipe",
        recipe = "one-to-four-pipe"
      },
	  -- UNDERGROUND I PIPES
      {
        type = "unlock-recipe",
        recipe = "underground-i-pipe"
      },
	  -- UNDERGROUND L PIPES
      {
        type = "unlock-recipe",
        recipe = "underground-L-pipe"
      },
	  -- UNDERGROUND T PIPES
      {
        type = "unlock-recipe",
        recipe = "underground-t-pipe"
      },
	  -- UNDERGROUND CROSS PIPES
      {
        type = "unlock-recipe",
        recipe = "underground-cross-pipe"
      },
	  -- UNDERGROUND BUILDINGS
	  {
        type = "unlock-recipe",
        recipe = "underground-mini-pump"
    },
	  -- MULTI PIPES
	  {
        type = "unlock-recipe",
        recipe = "4-to-4-pipe"
    },
    -- INTERMEDIARY MATERIALS
    {
      type = "unlock-recipe",
      recipe = "swivel-joint"
    },
    {
      type = "unlock-recipe",
      recipe = "small-pipe-coupler"
    },
    {
      type = "unlock-recipe",
      recipe = "underground-pipe-segment-t1"
    },
    -- VALVES
    {
      type = "unlock-recipe",
      recipe = "80-overflow-valve"
    },
    {
      type = "unlock-recipe",
      recipe = "80-top-up-valve"
    },
    {
      type = "unlock-recipe",
      recipe = "check-valve"
    },
  },
    unit =
    {
      count = 50,
      ingredients = {{"automation-science-pack", 1}},
      time = 30
    },
    order = "d-a-a"
  },
    {
      type = "technology",
      name = "advanced-underground-piping-t2",
      icon_size = 128,
      icon = "__underground-pipe-pack__/graphics/technology/advanced-underground-piping-t2.png",
      prerequisites = {"advanced-underground-piping"},
      effects =
      {
      -- ONE TO ONE PIPES
      {
          type = "unlock-recipe",
          recipe = "one-to-one-forward-t2-pipe"
        },
      -- ONE TO TWO PIPES
      {
          type = "unlock-recipe",
          recipe = "one-to-two-perpendicular-t2-pipe"
        },
        --[[{
          type = "unlock-recipe",
          recipe = "one-to-two-L-FL-t2-pipe"
        },]]--
      -- ONE TO THREE PIPES
        {
          type = "unlock-recipe",
          recipe = "one-to-three-forward-t2-pipe"
        },
      -- ONE TO FOUR PIPE
        {
          type = "unlock-recipe",
          recipe = "one-to-four-t2-pipe"
        },
      -- UNDERGROUND I PIPES
        {
          type = "unlock-recipe",
          recipe = "underground-i-t2-pipe"
        },
      -- UNDERGROUND L PIPES
        {
          type = "unlock-recipe",
          recipe = "underground-L-t2-pipe"
        },
      -- UNDERGROUND T PIPES
        {
          type = "unlock-recipe",
          recipe = "underground-t-t2-pipe"
        },
      -- UNDERGROUND CROSS PIPES
        {
          type = "unlock-recipe",
          recipe = "underground-cross-t2-pipe"
        },
      -- INTERMEDIARY MATERIALS
        {
          type = "unlock-recipe",
          recipe = "medium-pipe-coupler"
        },
        {
          type = "unlock-recipe",
          recipe = "underground-pipe-segment-t2"
        },
      },
      unit =
      {
        count = 100,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1}
        },
        time = 30
      },
      order = "d-a-a"
    },
    {
      type = "technology",
      name = "advanced-underground-piping-t3",
      icon_size = 128,
      icon = "__underground-pipe-pack__/graphics/technology/advanced-underground-piping-t3.png",
      prerequisites = {"advanced-underground-piping-t2"},
      effects =
      {
      -- ONE TO ONE PIPES
      {
          type = "unlock-recipe",
          recipe = "one-to-one-forward-t3-pipe"
        },
      -- ONE TO TWO PIPES
      {
          type = "unlock-recipe",
          recipe = "one-to-two-perpendicular-t3-pipe"
        },
        --[[{
          type = "unlock-recipe",
          recipe = "one-to-two-L-FL-t3-pipe"
        },]]--
      -- ONE TO THREE PIPES
        {
          type = "unlock-recipe",
          recipe = "one-to-three-forward-t3-pipe"
        },
      -- ONE TO FOUR PIPE
        {
          type = "unlock-recipe",
          recipe = "one-to-four-t3-pipe"
        },
      -- UNDERGROUND I PIPES
        {
          type = "unlock-recipe",
          recipe = "underground-i-t3-pipe"
        },
      -- UNDERGROUND L PIPES
        {
          type = "unlock-recipe",
          recipe = "underground-L-t3-pipe"
        },
      -- UNDERGROUND T PIPES
        {
          type = "unlock-recipe",
          recipe = "underground-t-t3-pipe"
        },
      -- UNDERGROUND CROSS PIPES
        {
          type = "unlock-recipe",
          recipe = "underground-cross-t3-pipe"
        },
      -- INTERMEDIARY MATERIALS
        {
          type = "unlock-recipe",
          recipe = "large-pipe-coupler"
        },
        {
          type = "unlock-recipe",
          recipe = "underground-pipe-segment-t3"
        },
      },
      unit =
      {
        count = 200,
        ingredients =
        {
          {"automation-science-pack", 1},
          {"logistic-science-pack", 1},
          {"chemical-science-pack", 1},
        },
        time = 30
      },
      order = "d-a-a"
    }
})
