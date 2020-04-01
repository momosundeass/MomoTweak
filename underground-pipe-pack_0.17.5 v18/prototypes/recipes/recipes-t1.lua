data:extend({
  -- ONE TO ONE PIPES
  {
    type = "recipe",
    name = "one-to-one-forward-pipe",
    ingredients =
    {
      {"pipe", 1},
      {"swivel-joint", 1},
      {"small-pipe-coupler", 1},
      {"underground-pipe-segment-t1", 5}
    },
	enabled = false,
    result = "one-to-one-forward-pipe"
  },
  -- ONE TO TWO PIPES
  {
    type = "recipe",
    name = "one-to-two-perpendicular-pipe",
    ingredients =
    {
      {"pipe", 1},
      {"swivel-joint", 1},
      {"small-pipe-coupler", 2},
      {"underground-pipe-segment-t1", 10},
    },
	enabled = false,
    result = "one-to-two-perpendicular-pipe"
  },
  --[[{
    type = "recipe",
    name = "one-to-two-L-FL-pipe",
    ingredients =
    {
      {"pipe", 1},
      {"swivel-joint", 1},
      {"small-pipe-coupler", 2},
      {"underground-pipe-segment-t1", 10},
    },
	enabled = false,
    result = "one-to-two-L-FL-pipe"
  },]]--


  -- ONE TO THREE PIPES
  {
    type = "recipe",
    name = "one-to-three-forward-pipe",
    ingredients =
    {
      {"pipe", 1},
      {"swivel-joint", 1},
      {"small-pipe-coupler", 3},
      {"underground-pipe-segment-t1", 15},
    },
	enabled = false,
    result = "one-to-three-forward-pipe"
  },

  -- ONE TO FOUR PIPE
  {
    type = "recipe",
    name = "one-to-four-pipe",
    ingredients =
    {
      {"pipe", 1},
      {"small-pipe-coupler", 4},
      {"underground-pipe-segment-t1", 20},
    },
	enabled = false,
    result = "one-to-four-pipe"
  },
  -- UNDERGROUND I PIPES
  {
    type = "recipe",
    name = "underground-i-pipe",
    ingredients =
    {
      {"small-pipe-coupler", 2},
      {"underground-pipe-segment-t1", 10},
    },
	enabled = false,
    result = "underground-i-pipe"
  },
  -- UNDERGROUND L PIPES
  {
    type = "recipe",
    name = "underground-L-pipe",
    ingredients =
    {
      {"small-pipe-coupler", 2},
      {"underground-pipe-segment-t1", 10},
    },
	enabled = false,
    result = "underground-L-pipe"
  },
  -- UNDERGROUND T PIPES
  {
    type = "recipe",
    name = "underground-t-pipe",
    ingredients =
    {
      {"small-pipe-coupler", 3},
      {"underground-pipe-segment-t1", 15},
    },
	enabled = false,
    result = "underground-t-pipe"
  },
  -- UNDERGROUND CROSS PIPES
  {
    type = "recipe",
    name = "underground-cross-pipe",
    ingredients =
    {
      {"small-pipe-coupler", 4},
      {"underground-pipe-segment-t1", 20},
    },
	enabled = false,
    result = "underground-cross-pipe"
  },
  -- UNDERGROUND BUILDINGS
  {
    type = "recipe",
    name = "underground-mini-pump",
    ingredients =
    {
      {"engine-unit", 1},
      {"steel-plate", 1},
      {"small-pipe-coupler", 2},
      {"underground-pipe-segment-t1", 10},
    },
	enabled = false,
    result = "underground-mini-pump"
  },
  -- MULTI PIPES
  {
    type = "recipe",
    name = "4-to-4-pipe",
    ingredients =
    {
      {"pipe", 1},
      {"small-pipe-coupler", 4},
      {"underground-pipe-segment-t1", 20},
    },
	enabled = false,
    result = "4-to-4-pipe"
  },
})
