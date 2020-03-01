data:extend({
  -- ONE TO ONE PIPES
  {
    type = "recipe",
    name = "one-to-one-forward-t3-pipe",
    ingredients =
    {
      {"pipe", 1},
      {"swivel-joint", 1},
      {"large-pipe-coupler", 1},
      {"underground-pipe-segment-t3", 5}
    },
	enabled = false,
    result = "one-to-one-forward-t3-pipe"
  },
  -- ONE TO TWO PIPES
  {
    type = "recipe",
    name = "one-to-two-perpendicular-t3-pipe",
    ingredients =
    {
      {"pipe", 1},
      {"swivel-joint", 1},
      {"large-pipe-coupler", 2},
      {"underground-pipe-segment-t3", 10},
    },
	enabled = false,
    result = "one-to-two-perpendicular-t3-pipe"
  },
  --[[{
    type = "recipe",
    name = "one-to-two-L-FL-t3-pipe",
    ingredients =
    {
      {"pipe", 1},
      {"swivel-joint", 1},
      {"large-pipe-coupler", 2},
      {"underground-pipe-segment-t3", 10},
    },
	enabled = false,
    result = "one-to-two-L-FL-t3-pipe"
  },]]--


  -- ONE TO THREE PIPES
  {
    type = "recipe",
    name = "one-to-three-forward-t3-pipe",
    ingredients =
    {
      {"pipe", 1},
      {"swivel-joint", 1},
      {"large-pipe-coupler", 3},
      {"underground-pipe-segment-t3", 15},
    },
	enabled = false,
    result = "one-to-three-forward-t3-pipe"
  },

  -- ONE TO FOUR PIPE
  {
    type = "recipe",
    name = "one-to-four-t3-pipe",
    ingredients =
    {
      {"pipe", 1},
      {"large-pipe-coupler", 4},
      {"underground-pipe-segment-t3", 20},
    },
	enabled = false,
    result = "one-to-four-t3-pipe"
  },
  -- UNDERGROUND I PIPES
  {
    type = "recipe",
    name = "underground-i-t3-pipe",
    ingredients =
    {
      {"large-pipe-coupler", 2},
      {"underground-pipe-segment-t3", 10},
    },
	enabled = false,
    result = "underground-i-t3-pipe"
  },
  -- UNDERGROUND L PIPES
  {
    type = "recipe",
    name = "underground-L-t3-pipe",
    ingredients =
    {
      {"large-pipe-coupler", 2},
      {"underground-pipe-segment-t3", 10},
    },
	enabled = false,
    result = "underground-L-t3-pipe"
  },
  -- UNDERGROUND T PIPES
  {
    type = "recipe",
    name = "underground-t-t3-pipe",
    ingredients =
    {
      {"large-pipe-coupler", 3},
      {"underground-pipe-segment-t3", 15},
    },
	enabled = false,
    result = "underground-t-t3-pipe"
  },
  -- UNDERGROUND CROSS PIPES
  {
    type = "recipe",
    name = "underground-cross-t3-pipe",
    ingredients =
    {
      {"large-pipe-coupler", 4},
      {"underground-pipe-segment-t3", 20},
    },
	enabled = false,
    result = "underground-cross-t3-pipe"
  },
})
