data:extend({
  -- Couplers
  {
    type = "recipe",
    name = "small-pipe-coupler",
    ingredients =
    {
      {"iron-plate", 1},
    },
	enabled = false,
    result = "small-pipe-coupler"
  },
  {
    type = "recipe",
    name = "medium-pipe-coupler",
    ingredients =
    {
      {"small-pipe-coupler", 1},
      {"iron-plate", 1},
    },
	enabled = false,
    result = "medium-pipe-coupler"
  },
  {
    type = "recipe",
    name = "large-pipe-coupler",
    ingredients =
    {
      {"medium-pipe-coupler", 1},
      {"steel-plate", 1},
    },
	enabled = false,
    result = "large-pipe-coupler"
  },

  --Swivel Joint

  {
    type = "recipe",
    name = "swivel-joint",
    ingredients =
    {
      {"iron-plate", 1},
      {"iron-gear-wheel", 1},
    },
	enabled = false,
    result = "swivel-joint"
  },

  -- Segments

  {
    type = "recipe",
    name = "underground-pipe-segment-t1",
    ingredients =
    {
      {"iron-plate", 1},
    },
	enabled = false,
    result = "underground-pipe-segment-t1"
  },
  {
    type = "recipe",
    name = "underground-pipe-segment-t2",
    ingredients =
    {
      {"underground-pipe-segment-t1", 1},
      {"iron-plate", 2},
    },
	enabled = false,
    result = "underground-pipe-segment-t2"
  },
  {
    type = "recipe",
    name = "underground-pipe-segment-t3",
    ingredients =
    {
      {"underground-pipe-segment-t2", 1},
      {"steel-plate", 2},
    },
	enabled = false,
    result = "underground-pipe-segment-t3"
  },
})