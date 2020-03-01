local Color = require('__stdlib__/stdlib/utils/color')

local north = {position = {0, -1}}
local south = {position = {0, 1}}
local west = {position = {-1, 0}}
local east = {position = {1, 0}}

local direction_table = {
    ['NS'] = {north, south},
    ['ES'] = {east, south},
    ['ESW'] = {east, south, west},
    ['NSEW'] = {north, south, east, west}
}
local base_ug_distance = util.table.deepcopy(data.raw["pipe-to-ground"]["pipe-to-ground"].fluid_box.pipe_connections[2].max_underground_distance)
local function build_connections_table(directions, level)
    local connections_table = {}
    for _, datas in pairs(direction_table[directions]) do
        connections_table[#connections_table + 1] = {
        position = datas.position,
        max_underground_distance = (base_ug_distance + 1) * level
    }
    end
    return connections_table
end

local names_table = {
    ["underground-i-"] = {
        directions = 'NS',
        picture_variants = {
            up = 'NS',
            right = 'EW',
            down = 'NS',
            left = 'EW'
        }
    },
    ["underground-L-"] = {
        directions = 'ES',
        picture_variants = {
            up = 'ES',
            down = 'NW',
            right = 'SW',
            left = 'NE'
        }
    },
    ["underground-t-"] = {
        directions = 'ESW',
        picture_variants = {
            up = 'ESW',
            right = 'NSW',
            down = 'NEW',
            left = 'NES'
        }
    },
    ["underground-cross-"] = {
        directions = 'NSEW',
        picture_variants = {
            up = 'NESW',
            down = 'NESW',
            left = 'NESW',
            right = 'NESW'
        }
    },
}

local levels_table = {
    [1] = Color.from_rgb(255,191,0,255/2),
    [2] = Color.from_rgb(227,38,45,255/2),
    [3] = Color.from_rgb(38,173,227,255/2),
    --[4] = Color.from_rgb(75,0,130,255),
    --[5] = Color.from_rgb(5,73,53,255)
}

local file_path = "__underground-pipe-pack__/graphics/entity/underground-cap/"
local a_file_path = "__underground-pipe-pack__/graphics/entity/arrows/"

local function build_picture_table(variants, color)
    local picture_table = {}
    for direction, variant in pairs(variants) do
        picture_table[direction] =
        {
            layers = {
                {
                    filename = file_path .. "underground-metal.png",
                    priority = "high",
                    width = 48,
                    height = 48,
                    shift = {0,0.1875},
                    hr_version =
                    {
                        filename = file_path .. "hr-ug-" .. variant .. ".png",
                        priority = "extra-high",
                        width = 96,
                        height = 96,
                        shift = {0,0.1875},
                        scale = 0.5
                    }
                },
                {
                    filename = a_file_path .. "hr-ug-arrow-" .. variant .. ".png",
                    priority = "high",
                    width = 96,
                    height = 96,
                    shift = {0,0.1875},
                    scale = 0.5,
                    apply_runtime_tint = true,
                    tint = color,
                    hr_version =
                    {
                        filename = a_file_path .. "hr-ug-arrow-" .. variant .. ".png",
                        priority = "extra-high",
                        width = 96,
                        height = 96,
                        shift = {0,0.1875},
                        apply_runtime_tint = true,
                        tint = color,
                        scale = 0.5
                    }
                },
                {
                    filename = file_path .. "hr-underground-metal-mask.png",
                    priority = "high",
                    width = 96,
                    height = 96,
                    scale = 0.5,
                    shift = {0,0.1875},
                    apply_runtime_tint = true,
                    tint = color,
                    hr_version =
                    {
                        filename = file_path .. "hr-underground-metal-mask.png",
                        priority = "extra-high",
                        width = 96,
                        height = 96,
                        scale = 0.5,
                        apply_runtime_tint = true,
                        tint = color,
                        shift = {0,0.1875},
                    }
                },
                {
                    filename = "__underground-pipe-pack__/graphics/entity/shadows/lr-minipump-shadow.png",
                    priority = "high",
                    width = 48,
                    height = 48,
                    shift = {0,0.1875},
                    draw_as_shadow = true,
                    hr_version =
                    {
                        filename = "__underground-pipe-pack__/graphics/entity/shadows/hr-minipump-shadow.png",
                        priority = "high",
                        width = 96,
                        height = 96,
                        scale = 0.5,
                        shift = {0,0.1875},
                        draw_as_shadow = true,
                    }
                }
            }
        }
    end
    return picture_table
end

local pipes = {}
for name, properties in pairs(names_table) do
    for level, color in pairs(levels_table) do
        local current_pipe = util.table.deepcopy(data.raw["pipe-to-ground"]["pipe-to-ground"])
        if level == 1 then
            current_pipe.name = name .. "pipe"
            current_pipe.minable.result = name .. "pipe"
        else
            current_pipe.name = name .. "t" .. level .. "-pipe"
            current_pipe.minable.result = name .. "t" .. level .. "-pipe"
        end
        current_pipe.icon = "__underground-pipe-pack__/graphics/icons/" .. name .. "t" .. level .. ".png"
		current_pipe.icon_size = 32
        current_pipe.collision_mask = {"water-tile"}
        current_pipe.selection_priority = 51
        local fluid_box = util.table.deepcopy(current_pipe.fluid_box)
        fluid_box.pipe_connections = build_connections_table(properties.directions, level)
        fluid_box.pipe_covers = nil
        current_pipe.fluid_box = fluid_box
        current_pipe.fast_replaceable_group = "pipe-to-ground"
        current_pipe.pictures = build_picture_table(properties.picture_variants, color)
        --current_pipe.dont_flip_on_manual_build = true
        pipes[#pipes + 1] = current_pipe
    end
end
data:extend(pipes)
