data:extend(
{

  -- UNDERGROUND 2 WAY EXTENSIONS
  {
    type = "pipe-to-ground",
    name = "underground-i-t2-pipe",
    icon = "__underground-pipe-pack__/graphics/icons/underground-i.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "underground-i-t2-pipe"},
    max_health = 150,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 40
      }
	},
	fast_replaceable_group = "pipe-to-ground",
	base_render_layer = "transport-belt",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
	collision_mask = {"water-tile"},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	selection_priority = 51,
    fluid_box =
    {
      base_area = 1,
      pipe_covers = nil,
      pipe_connections =
      {

        {
          position = {0, -1},
          max_underground_distance = 22
        },
        {
          position = {0, 1},
          max_underground_distance = 22
        },
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    pictures =
    {
      up =
      {
        filename = "__underground-pipe-pack__/graphics/entity/level-2/underground-i-pipe-NS.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {0.10, -0.04}
        hr_version =
        {
           filename = "__underground-pipe-pack__/graphics/entity/level-2/hr-underground-i-pipe-NS.png",
           priority = "extra-high",
           width = 128,
           height = 128,
           scale = 0.65
        }
      },
      down =
      {
        filename = "__underground-pipe-pack__/graphics/entity/level-2/underground-i-pipe-NS.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {0.05, 0}
        hr_version =
        {
           filename = "__underground-pipe-pack__/graphics/entity/level-2/hr-underground-i-pipe-NS.png",
           priority = "extra-high",
           width = 128,
           height = 128,
           scale = 0.65
        }
      },
      left =
      {
        filename = "__underground-pipe-pack__/graphics/entity/level-2/underground-i-pipe-EW.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {-0.12, 0.1}
        hr_version =
        {
           filename = "__underground-pipe-pack__/graphics/entity/level-2/hr-underground-i-pipe-EW.png",
           priority = "extra-high",
           width = 128,
           height = 128,
           scale = 0.65
        }
      },
      right =
      {
        filename = "__underground-pipe-pack__/graphics/entity/level-2/underground-i-pipe-EW.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {0.1, 0.1}
        hr_version =
        {
           filename = "__underground-pipe-pack__/graphics/entity/level-2/hr-underground-i-pipe-EW.png",
           priority = "extra-high",
           width = 128,
           height = 128,
           scale = 0.65
        }
      }
    }
  },

  {
    type = "pipe-to-ground",
    name = "underground-L-t2-pipe",
    icon = "__underground-pipe-pack__/graphics/icons/underground-L.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "underground-L-t2-pipe"},
    max_health = 150,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 40
      }
	},
	fast_replaceable_group = "pipe-to-ground",
	base_render_layer = "transport-belt",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
	collision_mask = {"water-tile"},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	selection_priority = 51,
    fluid_box =
    {
      base_area = 1,
      pipe_covers = nil,
      pipe_connections =
      {

        {
          position = {1, 0},
          max_underground_distance = 22
        },
        {
          position = {0, 1},
          max_underground_distance = 22
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    pictures =
    {
      up =
      {
        filename = "__underground-pipe-pack__/graphics/entity/level-2/underground-L-pipe-SE.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {0.10, -0.04}
        hr_version =
        {
           filename = "__underground-pipe-pack__/graphics/entity/level-2/hr-underground-L-pipe-SE.png",
           priority = "extra-high",
           width = 128,
           height = 128,
           scale = 0.65
        }
      },
      down =
      {
        filename = "__underground-pipe-pack__/graphics/entity/level-2/underground-L-pipe-NW.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {0.05, 0}
        hr_version =
        {
           filename = "__underground-pipe-pack__/graphics/entity/level-2/hr-underground-L-pipe-NW.png",
           priority = "extra-high",
           width = 128,
           height = 128,
           scale = 0.65
        }
      },
      left =
      {
        filename = "__underground-pipe-pack__/graphics/entity/level-2/underground-L-pipe-NE.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {-0.12, 0.1}
        hr_version =
        {
           filename = "__underground-pipe-pack__/graphics/entity/level-2/hr-underground-L-pipe-NE.png",
           priority = "extra-high",
           width = 128,
           height = 128,
           scale = 0.65
        }
      },
      right =
      {
        filename = "__underground-pipe-pack__/graphics/entity/level-2/underground-L-pipe-SW.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {0.1, 0.1}
        hr_version =
        {
           filename = "__underground-pipe-pack__/graphics/entity/level-2/hr-underground-L-pipe-SW.png",
           priority = "extra-high",
           width = 128,
           height = 128,
           scale = 0.65
        }
      }
    }
  },

  -- UNDERGROUND T EXTENSION
  {
    type = "pipe-to-ground",
    name = "underground-t-t2-pipe",
    icon = "__underground-pipe-pack__/graphics/icons/underground-t.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "underground-t-t2-pipe"},
    max_health = 150,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 40
      }
	},
	fast_replaceable_group = "pipe-to-ground",
	base_render_layer = "transport-belt",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
	collision_mask = {"water-tile"},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	selection_priority = 51,
    fluid_box =
    {
      base_area = 1,
      pipe_covers = nil,
      pipe_connections =
      {

        {
          position = {0, 1},
          max_underground_distance = 22
        },
        {
          position = {1, 0},
          max_underground_distance = 22
        },
        {
          position = {-1, 0},
          max_underground_distance = 22
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    pictures =
    {
      up =
      {
        filename = "__underground-pipe-pack__/graphics/entity/level-2/underground-t-pipe-down.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {0.10, -0.04}
        hr_version =
        {
           filename = "__underground-pipe-pack__/graphics/entity/level-2/hr-underground-t-pipe-down.png",
           priority = "extra-high",
           width = 128,
           height = 128,
           scale = 0.65
        }
      },
      down =
      {
        filename = "__underground-pipe-pack__/graphics/entity/level-2/underground-t-pipe-up.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {0.05, 0}
        hr_version =
        {
           filename = "__underground-pipe-pack__/graphics/entity/level-2/hr-underground-t-pipe-up.png",
           priority = "extra-high",
           width = 128,
           height = 128,
           scale = 0.65
        }
      },
      left =
      {
        filename = "__underground-pipe-pack__/graphics/entity/level-2/underground-t-pipe-right.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {-0.12, 0.1}
        hr_version =
        {
           filename = "__underground-pipe-pack__/graphics/entity/level-2/hr-underground-t-pipe-right.png",
           priority = "extra-high",
           width = 128,
           height = 128,
           scale = 0.65
        }
      },
      right =
      {
        filename = "__underground-pipe-pack__/graphics/entity/level-2/underground-t-pipe-left.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {0.1, 0.1}
        hr_version =
        {
           filename = "__underground-pipe-pack__/graphics/entity/level-2/hr-underground-t-pipe-left.png",
           priority = "extra-high",
           width = 128,
           height = 128,
           scale = 0.65
        }
      }
    }
  },

  -- UNDERGROUND CROSS EXTENSION
  {
    type = "pipe-to-ground",
    name = "underground-cross-t2-pipe",
    icon = "__underground-pipe-pack__/graphics/icons/underground-cross.png",
    icon_size = 32,
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "underground-cross-t2-pipe"},
    max_health = 150,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 40
      }
	},
	fast_replaceable_group = "pipe-to-ground",
	base_render_layer = "transport-belt",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
	collision_mask = {"water-tile"},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
	selection_priority = 51,
    fluid_box =
    {
      base_area = 1,
      pipe_covers = nil,
      pipe_connections =
      {

        {
          position = {0, -1},
          max_underground_distance = 22
        },
        {
          position = {0, 1},
          max_underground_distance = 22
        },
        {
          position = {1, 0},
          max_underground_distance = 22
        },
        {
          position = {-1, 0},
          max_underground_distance = 22
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    pictures =
    {
      up =
      {
        filename = "__underground-pipe-pack__/graphics/entity/level-2/underground-cross-pipe.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {0.10, -0.04}
        hr_version =
        {
           filename = "__underground-pipe-pack__/graphics/entity/level-2/hr-underground-cross-pipe.png",
           priority = "extra-high",
           width = 128,
           height = 128,
           scale = 0.65
        }
      },
      down =
      {
        filename = "__underground-pipe-pack__/graphics/entity/level-2/underground-cross-pipe.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {0.05, 0}
        hr_version =
        {
           filename = "__underground-pipe-pack__/graphics/entity/level-2/hr-underground-cross-pipe.png",
           priority = "extra-high",
           width = 128,
           height = 128,
           scale = 0.65
        }
      },
      left =
      {
        filename = "__underground-pipe-pack__/graphics/entity/level-2/underground-cross-pipe.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {-0.12, 0.1}
        hr_version =
        {
           filename = "__underground-pipe-pack__/graphics/entity/level-2/hr-underground-cross-pipe.png",
           priority = "extra-high",
           width = 128,
           height = 128,
           scale = 0.65
        }
      },
      right =
      {
        filename = "__underground-pipe-pack__/graphics/entity/level-2/underground-cross-pipe.png",
        priority = "high",
        width = 64,
        height = 64, --, shift = {0.1, 0.1}
        hr_version =
        {
           filename = "__underground-pipe-pack__/graphics/entity/level-2/hr-underground-cross-pipe.png",
           priority = "extra-high",
           width = 128,
           height = 128,
           scale = 0.65
        }
      }
    }
  },
})