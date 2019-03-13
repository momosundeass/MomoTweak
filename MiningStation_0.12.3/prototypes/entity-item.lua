data:extend(
{
  {
    type = "item",
    name = "miningstation-1",
    icon = "__MiningStation__/graphics/icons/m1.png",
    flags = {"goes-to-quickbar"},
    subgroup = "a-MiningStation",
    order = "1[MiningStation-1]",
    place_result = "miningstation-1",
    stack_size = 50
  },
  
  {
	type = "assembling-machine",
    name = "miningstation-1",
    icon = "__MiningStation__/graphics/icons/m1.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "miningstation-1"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0.5, 3.5} }}
      },
	  {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_area = -1,

        pipe_connections = {{ type="input", position = {-0.5, 3.5} }}
      },
      off_when_no_fluid_recipe = false
    },
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
        priority = "extra-high",
        width = 110,
        height = 76,
        line_length = 4,
        shift = {1.3375, -0.09375},
        filename = "__base__/graphics/entity/burner-mining-drill/north.png",
        frame_count = 32,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
		scale = 2.5,
		tint = {r = 1.0, g = 0.8, b = 0.8},
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/burner-mining-drill.ogg",
        volume = 0.8
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_categories = {"MiningStation-1"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01,
	  smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 1
        }
      }
    },
    energy_usage = "800kW",
    ingredient_count = 8,
    module_specification =
    {
      module_slots = 2,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  }
}
)
data:extend(
{
  {
    type = "item",
    name = "miningstation-2",
    icon = "__MiningStation__/graphics/icons/m2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "a-MiningStation",
    order = "1[MiningStation-2]",
    place_result = "miningstation-2",
    stack_size = 50
  },
  
  {
	type = "assembling-machine",
    name = "miningstation-2",
    icon = "__MiningStation__/graphics/icons/m2.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "miningstation-2"},
    max_health = 800,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_area = -1,

        pipe_connections = {{ type="input", position = {0.5, 3.5} }}
      },
	  {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_area = -1,

        pipe_connections = {{ type="input", position = {-0.5, 3.5} }}
      },
      off_when_no_fluid_recipe = false
    },
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
        priority = "extra-high",
        width = 110,
        height = 76,
        line_length = 4,
        shift = {1.1375, -0.09375},
        filename = "__base__/graphics/entity/burner-mining-drill/north.png",
        frame_count = 32,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
		scale = 2.5,
		tint = {r = 1.0, g = 1.0, b = 0.6},
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/burner-mining-drill.ogg",
        volume = 0.8
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_categories = {"MiningStation-1","MiningStation-2"},
    crafting_speed = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01,
	  smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 1
        }
      }
    },
    energy_usage = "1600kW",
    ingredient_count = 16,
    module_specification =
    {
      module_slots = 4,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  }
}
)
data:extend(
{
  {
    type = "item",
    name = "miningstation-3",
    icon = "__MiningStation__/graphics/icons/m3.png",
    flags = {"goes-to-quickbar"},
    subgroup = "a-MiningStation",
    order = "1[MiningStation-3]",
    place_result = "miningstation-3",
    stack_size = 50
  },
  
  {
	type = "assembling-machine",
    name = "miningstation-3",
    icon = "__MiningStation__/graphics/icons/m3.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "miningstation-3"},
    max_health = 1600,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_area = -1,

        pipe_connections = {{ type="input", position = {0.5, -3.5} }}
      },
	  {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_area = -1,

        pipe_connections = {{ type="input", position = {-0.5, -3.5} }}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_area = -1,

        pipe_connections = {{ type="output", position = {0.5, 3.5} }}
      },
	  {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_area = -1,

        pipe_connections = {{ type="output", position = {-0.5, 3.5} }}
      },
	  off_when_no_fluid_recipe = false
    },
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
        priority = "extra-high",
        width = 110,
        height = 76,
        line_length = 4,
        shift = {1.1375, -0.09375},
        filename = "__base__/graphics/entity/burner-mining-drill/north.png",
        frame_count = 32,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
		scale = 2.5,
		tint = {r = 0.6, g = 0.6, b = 0.6},
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/burner-mining-drill.ogg",
        volume = 0.8
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_categories = {"MiningStation-1","MiningStation-2","MiningStation-3"},
    crafting_speed = 3,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01,
	  smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 1
        }
      }
    },
    energy_usage = "3200kW",
    ingredient_count = 16,
    module_specification =
    {
      module_slots = 6,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  }
}
)
data:extend(
{
  {
    type = "item",
    name = "miningstation-4",
    icon = "__MiningStation__/graphics/icons/m4.png",
    flags = {"goes-to-quickbar"},
    subgroup = "a-MiningStation",
    order = "1[MiningStation-4]",
    place_result = "miningstation-4",
    stack_size = 50
  },
  
  {
	type = "assembling-machine",
    name = "miningstation-4",
    icon = "__MiningStation__/graphics/icons/m4.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "miningstation-4"},
    max_health = 3200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_area = -1,

        pipe_connections = {{ type="input", position = {0.5, -3.5} }}
      },
	  {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_area = -1,

        pipe_connections = {{ type="input", position = {-0.5, -3.5} }}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_area = -1,

        pipe_connections = {{ type="output", position = {0.5, 3.5} }}
      },
	  {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_area = -1,

        pipe_connections = {{ type="output", position = {-0.5, 3.5} }}
      },
	  off_when_no_fluid_recipe = false
    },
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
        priority = "extra-high",
        width = 110,
        height = 76,
        line_length = 4,
        shift = {1.1375, -0.09375},
        filename = "__base__/graphics/entity/burner-mining-drill/north.png",
        frame_count = 32,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
		scale = 2.5,
		tint = {r = 0.6, g = 1, b = 0.6},
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/burner-mining-drill.ogg",
        volume = 0.8
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_categories = {"MiningStation-1","MiningStation-2","MiningStation-3","MiningStation-4"},
    crafting_speed = 4,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01,
	  smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 1
        }
      }
    },
    energy_usage = "6400kW",
    ingredient_count = 16,
    module_specification =
    {
      module_slots = 8,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  }
}
)
data:extend(
{
  {
    type = "item",
    name = "miningstation-5",
    icon = "__MiningStation__/graphics/icons/m5.png",
    flags = {"goes-to-quickbar"},
    subgroup = "a-MiningStation",
    order = "1[MiningStation-5]",
    place_result = "miningstation-5",
    stack_size = 50
  },
  
  {
	type = "assembling-machine",
    name = "miningstation-5",
    icon = "__MiningStation__/graphics/icons/m5.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "miningstation-5"},
    max_health = 3200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_area = -1,

        pipe_connections = {{ type="input", position = {0.5, -3.5} }}
      },
	  {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_area = -1,

        pipe_connections = {{ type="input", position = {-0.5, -3.5} }}
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_area = -1,

        pipe_connections = {{ type="output", position = {0.5, 3.5} }}
      },
	  {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 500,
        base_area = -1,

        pipe_connections = {{ type="output", position = {-0.5, 3.5} }}
      },
      off_when_no_fluid_recipe = false
    },
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3.0, -3.0}, {3.0, 3.0}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
        priority = "extra-high",
        width = 110,
        height = 76,
        line_length = 4,
        shift = {1.1375, -0.09375},
        filename = "__base__/graphics/entity/burner-mining-drill/north.png",
        frame_count = 32,
        animation_speed = 0.5,
        run_mode = "forward-then-backward",
		scale = 2.5,
		tint = {r = 0.4, g = 0.8, b = 1},
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/burner-mining-drill.ogg",
        volume = 0.8
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_categories = {"MiningStation-1","MiningStation-2","MiningStation-3","MiningStation-4"},
    crafting_speed = 8,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01,
	  smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 1
        }
      }
    },
    energy_usage = "12800kW",
    ingredient_count = 16,
    module_specification =
    {
      module_slots = 10,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  }
}
)