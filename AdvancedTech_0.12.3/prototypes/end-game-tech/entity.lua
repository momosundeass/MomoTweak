data:extend(
{
   {
    type = "item",
    name = "lab-3",
    icon = "__bobtech__/graphics/icons/lab2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "production-machine",
    order = "g[lab-3]",
    place_result = "lab-3",
    stack_size = 10
  },
  {
    type = "lab",
    name = "lab-3",
    icon = "__bobtech__/graphics/icons/lab2.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "lab-3"},
    max_health = 250,
    corpse = "big-remnants",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {intensity = 0.75, size = 8},
    on_animation =
    {
      filename = "__bobtech__/graphics/entity/lab/lab2.png",
      width = 113,
      height = 91,
      frame_count = 33,
      line_length = 11,
      animation_speed = 1 / 3,
      shift = {0.2, 0.15}
    },
    off_animation =
    {
      filename = "__bobtech__/graphics/entity/lab/lab2.png",
      width = 113,
      height = 91,
      frame_count = 1,
      shift = {0.2, 0.15}
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "450kW",
    inputs =
    {
      "science-pack-1",
      "science-pack-2",
      "science-pack-3",
      "science-pack-4",
      "alien-science-pack",
	  "quantum-photon-printing-computer",
    },
    researching_speed = 2,
    module_specification =
    {
      module_slots = 8,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    fast_replaceable_group = "lab",
  },
  {
	type = "recipe",
    name = "lab-3",
    category = "crafting",
    energy_required = 80,
	enabled = false,
    ingredients =
    {
		{"lab-2", 20},
		{"alva", 15},
		{"quantum-photon-printing-computer", 500},
		{"photon-manipulator",1},
    },
    result = "lab-3"
  },
}
)

