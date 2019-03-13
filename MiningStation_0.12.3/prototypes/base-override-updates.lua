data.raw.technology["alva-1"].unit = {
      count = 800,
      ingredients =
      {
        {"science-pack-1", 5},
        {"science-pack-2", 3},
        {"science-pack-3", 2},
		{"science-pack-4", 1}
      },
      time = 60
    }
 data.raw.technology["alva-2"].unit = {
      count = 1200,
      ingredients =
      {
        {"science-pack-1", 5},
        {"science-pack-2", 3},
        {"science-pack-3", 2},
		{"science-pack-4", 1}
      },
      time = 60
    }
data.raw["assembling-machine"]["greenhouse"].fluid_boxes =
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
    }
data.raw.item["raw-wood"].stack_size = 200