local shift = {0, 0}
local line_length = 8
local length = 60
local oxidizer = MomoLib.machine.CreateEntity("assembling-machine", "assembling-machine-2", {
    name = "oxidizer",
    icon = MomoLib.Graphics("oxidizer/oxidizer-icon.png"),
    icon_size = MomoLib.icon.DefaultSize,
    selection_box = { { -2, -2 }, { 2, 2 } },
    drawing_box_vertical_extension = 1, 
    crafting_categories = {MomoLib.category.oxidizer},
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = MomoLib.Graphics("oxidizer/oxidizer-hr-shadow.png"),
                    priority = "high",
                    size = { 700, 500 },
                    scale = 0.5,
                    line_length = 1,
                    repeat_count = length,
                    draw_as_shadow = true,
                    animation_speed = 0.8,
                    shift = shift,
                },
                {
                    filename = MomoLib.Graphics("oxidizer/oxidizer-hr-animation-1.png"),
                    size = { 280, 320 },
                    scale = 0.5,
                    line_length = line_length,
                    frame_count = length,
                    animation_speed = 0.8,
                    shift = shift,
                }
            },
        },
        working_visualisations = {
            {
                fadeout = true,
                secondary_draw_order = 1,
                animation = {
                    layers = {
                        {
                            filename = MomoLib.Graphics("oxidizer/oxidizer-hr-emission-1.png"),
                            size = { 280, 320 },
                            scale = 0.5,
                            line_length = line_length,
                            lines_per_file = line_length,
                            frame_count = length,
                            draw_as_glow = true,
                            blend_mode = "additive",
                            animation_speed = 0.8,
                            shift = shift,
                        },
                    }
                },
            },
        },
    }
})
MomoLib.itemNames.oxidizer = MomoLib.itemName:New(oxidizer.item)

shift = {0,-0.8}
line_length = 10
length = 80
local resCenter = MomoLib.machine.CreateEntity("assembling-machine", "assembling-machine-2", {
    name = "research-center",
    icon = MomoLib.Graphics("research-center/research-center-icon.png"),
    icon_size = MomoLib.icon.DefaultSize,
    selection_box = { { -4.5, -4.5 }, { 4.5, 4.5 } },
    drawing_box_vertical_extension = 0.8, 
    crafting_categories = {MomoLib.category.researchCenter},
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = MomoLib.Graphics("research-center/research-center-hr-shadow.png"),
                    priority = "high",
                    size = { 1200, 700 },
                    scale = 0.5,
                    line_length = 1,
                    repeat_count = length,
                    draw_as_shadow = true,
                    animation_speed = 0.8,
                    shift = shift,
                },
                {
                    filename = MomoLib.Graphics("research-center/research-center-animation.png"),
                    size = { 590, 640 },
                    scale = 0.5,
                    line_length = line_length,
                    lines_per_file = 8,
                    frame_count = length,
                    animation_speed = 0.8,
                    shift = shift,
                }
            },
        },
        working_visualisations = {
            {
                fadeout = true,
                secondary_draw_order = 1,
                animation = {
                    layers = {
                        {
                            filename = MomoLib.Graphics("research-center/research-center-emission1.png"),
                            size = { 590, 640 },
                            scale = 0.5,
                            line_length = line_length,
                            frame_count = length,
                            draw_as_glow = true,
                            blend_mode = "additive",
                            animation_speed = 0.8,
                            shift = shift,
                        },
                        {
                            filename = MomoLib.Graphics("research-center/research-center-emission2.png"),
                            size = { 590, 640 },
                            scale = 0.5,
                            line_length = line_length,
                            frame_count = length,
                            draw_as_glow = true,
                            blend_mode = "additive",
                            animation_speed = 0.8,
                            shift = shift,
                        },
                    }
                },
            },
        },
    }
})
MomoLib.itemNames.resCenter = MomoLib.itemName:New(resCenter.item)
MomoLib.machine.FluidBoxes(resCenter.machine, {
    MomoLib.machine.FluidBox({0, -4}, "output"),
    MomoLib.machine.FluidBox({0, 4}, "input", defines.direction.south),
    MomoLib.machine.FluidBox({2, -4}, "output"),
    MomoLib.machine.FluidBox({2, 4}, "input", defines.direction.south),
})
MomoLib.machine.CopySounds("k11-advanced-centrifuge", resCenter.machine.name)
MomoLib.machine.ProductivityAdded(resCenter.machine.name, 0.3)
MomoLib.machine.ModuleSlot(resCenter.machine, 4)
