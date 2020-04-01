data:extend({
  -- ONE TO ONE PIPES
  {
    type = "recipe",
    name = "one-to-one-forward-t2-pipe",
    ingredients =
    {
      {"pipe", 1},
      {"swivel-joint", 1},
      {"medium-pipe-coupler", 1},
      {"underground-pipe-segment-t2", 5}
    },
	enabled = false,
    result = "one-to-one-forward-t2-pipe"
  },
  -- ONE TO TWO PIPES
  {
    type = "recipe",
    name = "one-to-two-perpendicular-t2-pipe",
    ingredients =
    {
      {"pipe", 1},
      {"swivel-joint", 1},
      {"medium-pipe-coupler", 2},
      {"underground-pipe-segment-t2", 10},
    },
	enabled = false,
    result = "one-to-two-perpendicular-t2-pipe"
  },
  --[[{
    type = "recipe",
    name = "one-to-two-L-FL-t2-pipe",
    ingredients =
    {
      {"pipe", 1},
      {"swivel-joint", 1},
      {"medium-pipe-coupler", 2},
      {"underground-pipe-segment-t2", 10},
    },
	enabled = false,
    result = "one-to-two-L-FL-t2-pipe"
  },]]--


  -- ONE TO THREE PIPES
  {
    type = "recipe",
    name = "one-to-three-forward-t2-pipe",
    ingredients =
    {
      {"pipe", 1},
      {"swivel-joint", 1},
      {"medium-pipe-coupler", 3},
      {"underground-pipe-segment-t2", 15},
    },
	enabled = false,
    result = "one-to-three-forward-t2-pipe"
  },

  -- ONE TO FOUR PIPE
  {
    type = "recipe",
    name = "one-to-four-t2-pipe",
    ingredients =
    {
      {"pipe", 1},
      {"medium-pipe-coupler", 4},
      {"underground-pipe-segment-t2", 20},
    },
	enabled = false,
    result = "one-to-four-t2-pipe"
  },
  -- UNDERGROUND I PIPES
  {
    type = "recipe",
    name = "underground-i-t2-pipe",
    ingredients =
    {
      {"medium-pipe-coupler", 2},
      {"underground-pipe-segment-t2", 10},
    },
	enabled = false,
    result = "underground-i-t2-pipe"
  },
  -- UNDERGROUND L PIPES
  {
    type = "recipe",
    name = "underground-L-t2-pipe",
    ingredients =
    {
      {"medium-pipe-coupler", 2},
      {"underground-pipe-segment-t2", 10},
    },
	enabled = false,
    result = "underground-L-t2-pipe"
  },
  -- UNDERGROUND T PIPES
  {
    type = "recipe",
    name = "underground-t-t2-pipe",
    ingredients =
    {
      {"medium-pipe-coupler", 3},
      {"underground-pipe-segment-t2", 15},
    },
	enabled = false,
    result = "underground-t-t2-pipe"
  },
  -- UNDERGROUND CROSS PIPES
  {
    type = "recipe",
    name = "underground-cross-t2-pipe",
    ingredients =
    {
      {"medium-pipe-coupler", 4},
      {"underground-pipe-segment-t2", 20},
    },
	enabled = false,
    result = "underground-cross-t2-pipe"
  },
})
