  data:extend({
    {
      type = "assembling-machine",
      name = momoTweak.burner,
      icon = "__MomoTweak__/graphics/icons/burner-assembling-machine.png",
      icon_size = 32,
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      minable = {hardness = 0.25, mining_time = 0.5, result = momoTweak.burner},
      max_health = 200,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      resistances =
      {
        {
          type = "fire",
          percent = 70
        }
      },
      collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      fast_replaceable_group = "assembling-machine",
      alert_icon_shift = util.by_pixel(-3, -12),
      animation =
      {
        layers =
        {
          {
            filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
            priority="high",
            width = 108,
            height = 114,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 2),
            tint = {r = 0.7, g = 0.6, b = 0.6},
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1.png",
              priority="high",
              width = 214,
              height = 226,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel(0, 2),
              tint = {r = 0.7, g = 0.6, b = 0.6},
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
            priority="high",
            width = 95,
            height = 83,
            frame_count = 1,
            line_length = 1,
            repeat_count = 32,
            draw_as_shadow = true,
            shift = util.by_pixel(8.5, 5.5),
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1-shadow.png",
              priority="high",
              width = 190,
              height = 165,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              draw_as_shadow = true,
              shift = util.by_pixel(8.5, 5),
              scale = 0.5
            }
          },
        },
      },
      crafting_categories = {"crafting"},
      crafting_speed = 0.35,
      energy_source = {
        type = "burner",
        effectivity = 1,
        fuel_inventory_size = 1,
        emissions = 0.01,
        smoke =
        {
          {
            name = "smoke",
            deviation = {0.1, 0.1},
            frequency = 0.5,
            position = {0, 0},
            starting_vertical_speed = 0.05
          }
        }
      },
      energy_usage = "160kW",
      ingredient_count = 50,
      open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
      close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
      vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/assembling-machine-t1-1.ogg",
            volume = 0.8
          },
          {
            filename = "__base__/sound/assembling-machine-t1-2.ogg",
            volume = 0.8
          },
        },
        idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
        apparent_volume = 1.5,
      }
    },

    {
      type = "item",
      name = momoTweak.burner,
      icon = "__MomoTweak__/graphics/icons/burner-assembling-machine.png",
      icon_size = 32,
      subgroup = data.raw.item["assembling-machine-1"].subgroup,
      order = "a[momoTweak.burner]",
      place_result = momoTweak.burner,
      stack_size = 50
    },

    {
      type = "recipe",
      name = momoTweak.burner,
      ingredients = {{"stone-furnace", 1}, {"iron-gear-wheel", 3}, {"iron-plate", 9}},
      result = momoTweak.burner
    }
  })

