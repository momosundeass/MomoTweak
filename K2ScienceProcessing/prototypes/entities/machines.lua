local shift = {0, 0}
local line_length = 8
local length = 60
local ingameScale = 1
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


-- research center
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
MomoLib.itemNames.researchCenter = MomoLib.itemName:New(resCenter.item)
MomoLib.machine.FluidBoxes(resCenter.machine.name, {
    MomoLib.machine.FluidBox({0, -4}, "output"),
    MomoLib.machine.FluidBox({0, 4}, "input", defines.direction.south),
    MomoLib.machine.FluidBox({2, -4}, "output"),
    MomoLib.machine.FluidBox({2, 4}, "input", defines.direction.south),
})
MomoLib.machine.CopySounds("k11-advanced-centrifuge", resCenter.machine.name)
MomoLib.machine.Power(resCenter.machine.name, "300kW")
MomoLib.machine.ProductivityAdded(resCenter.machine.name, 0.3)
MomoLib.machine.ModuleSlot(resCenter.machine, 4)


-- manufacturer
shift = {0,-0.5}
line_length = 8
length = 64 * 2
ingameScale = 1.25
local manufacturer = MomoLib.machine.CreateEntity("assembling-machine", "assembling-machine-2", {
    name = "manufacturer",
    icon = MomoLib.Graphics("manufacturer/manufacturer-icon.png"),
    icon_size = MomoLib.icon.DefaultSize,
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    drawing_box_vertical_extension = 0.3, 
    crafting_categories = {MomoLib.category.manufacture, MomoLib.category.manufactureCrafting},
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = MomoLib.Graphics("manufacturer/manufacturer-hr-shadow.png"),
                    priority = "high",
                    size = { 1200, 700 },
                    scale = 0.35 * ingameScale,
                    line_length = 1,
                    repeat_count = length,
                    draw_as_shadow = true,
                    animation_speed = 0.8,
                    shift = shift,
                },
                {
                    size = { 2160 / 8, 2256 / 8 },
                    scale = 0.5 * ingameScale,
                    frame_count = length,
                    animation_speed = 0.8,
                    shift = shift,
                    stripes = {
                        {
                            filename = MomoLib.Graphics("manufacturer/manufacturer-hr-animation-1.png"),
                            width_in_frames = 8,
                            height_in_frames = 8,
                        },
                        {
                            filename = MomoLib.Graphics("manufacturer/manufacturer-hr-animation-2.png"),
                            width_in_frames = 8,
                            height_in_frames = 8,
                        },
                    },
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
                            size = { 2160 / 8, 2256 / 8 },
                            scale = 0.5 * ingameScale,
                            frame_count = length,
                            draw_as_glow = true,
                            blend_mode = "additive",
                            animation_speed = 0.8,
                            shift = shift,
                            stripes = {
                                {
                                    filename = MomoLib.Graphics("manufacturer/manufacturer-hr-emission-1.png"),
                                    width_in_frames = 8,
                                    height_in_frames = 8,
                                },
                                {
                                    filename = MomoLib.Graphics("manufacturer/manufacturer-hr-emission-2.png"),
                                    width_in_frames = 8,
                                    height_in_frames = 8,
                                },
                            },
                        },
                    }
                },
            },
        },
    }
})
MomoLib.itemNames.manufacturer = MomoLib.itemName:New(manufacturer.item)
MomoLib.machine.CopySounds(MomoLib.itemNames.crusher.n, manufacturer.machine.name)
MomoLib.machine.Power(manufacturer.machine.name, "1MW")
MomoLib.machine.Speed(manufacturer.machine.name, 2)
MomoLib.machine.ProductivityAdded(manufacturer.machine.name, 0.25)
MomoLib.machine.ModuleSlot(manufacturer.machine, 4)
MomoLib.machine.FluidBoxes(manufacturer.machine, {
    MomoLib.machine.FluidBox({0, 2}, "input", defines.direction.south)
})
manufacturer.machine.allowed_effects = MomoLib.EffectLimitation(false)


-- photometric-lab
shift = {0,-0.5}
line_length = 8
length = (8 * 8) + (8 * 2)
local animSpeed = 0.55 
local photolab = MomoLib.machine.CreateEntity("assembling-machine", "assembling-machine-2", {
    name = "photometric-lab",
    icon = MomoLib.Graphics("photometric-lab/photometric-lab-icon.png"),
    icon_size = MomoLib.icon.DefaultSize,
    selection_box = { { -2.5, -2.5 }, { 2.5, 2.5 } },
    graphics_set = {
        animation = {
            layers = {
                {
                    filename = MomoLib.Graphics("photometric-lab/photometric-lab-hr-shadow.png"),
                    priority = "high",
                    size = { 800, 500 },
                    scale = 0.5,
                    line_length = 1,
                    repeat_count = length,
                    draw_as_shadow = true,
                    animation_speed = animSpeed,
                    shift = shift,
                },
                {
                    size = { 2640 / 8, 3120 / 8 },
                    scale = 0.5,
                    frame_count = length,
                    animation_speed = animSpeed,
                    shift = shift,
                    stripes = {
                        {
                            filename = MomoLib.Graphics("photometric-lab/photometric-lab-hr-animation-1.png"),
                            width_in_frames = 8,
                            height_in_frames = 8,
                        },
                        {
                            filename = MomoLib.Graphics("photometric-lab/photometric-lab-hr-animation-2.png"),
                            width_in_frames = 8,
                            height_in_frames = 2,
                        },
                    },
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
                            size = { 2640 / 8, 3120 / 8 },
                            scale = 0.5,
                            frame_count = length,
                            draw_as_glow = true,
                            blend_mode = "additive",
                            animation_speed = animSpeed,
                            shift = shift,
                            stripes = {
                                {
                                    filename = MomoLib.Graphics("photometric-lab/photometric-lab-hr-emission1-1.png"),
                                    width_in_frames = 8,
                                    height_in_frames = 8,
                                },
                                {
                                    filename = MomoLib.Graphics("photometric-lab/photometric-lab-hr-emission1-2.png"),
                                    width_in_frames = 8,
                                    height_in_frames = 2,
                                },
                            },
                        },
                        {
                            size = { 2640 / 8, 3120 / 8 },
                            scale = 0.5,
                            frame_count = length,
                            draw_as_glow = true,
                            blend_mode = "additive",
                            animation_speed = animSpeed,
                            shift = shift,
                            stripes = {
                                {
                                    filename = MomoLib.Graphics("photometric-lab/photometric-lab-hr-emission2-1.png"),
                                    width_in_frames = 8,
                                    height_in_frames = 8,
                                },
                                {
                                    filename = MomoLib.Graphics("photometric-lab/photometric-lab-hr-emission2-2.png"),
                                    width_in_frames = 8,
                                    height_in_frames = 2,
                                },
                            },
                        },
                    }
                },
            },
        },
    },
    energy_source = {
        type = "burner",
        fuel_inventory_size = 1,
        burnt_inventory_size = 1,
        fuel_categories = {"kr-fusion-fuel", "fusion-ion"}
    },
    drawing_box_vertical_extension = 0.8, 
    crafting_categories = {MomoLib.category.photometric, MomoLib.category.photometricCrafting},
})
MomoLib.itemNames.photolab = MomoLib.itemName:New(photolab.item)
MomoLib.machine.CopySounds(MomoLib.itemNames.lab2.n, photolab.machine.name)
MomoLib.machine.Power(photolab.machine.name, "100MW")
MomoLib.machine.Speed(photolab.machine.name, 2)
MomoLib.machine.ModuleSlot(photolab.machine, 8)
MomoLib.machine.FluidBoxes(photolab.machine, {
    MomoLib.machine.FluidBox({1, -2.05}, "input", defines.direction.north),
    MomoLib.machine.FluidBox({-1, -2.05}, "input", defines.direction.north),
    MomoLib.machine.FluidBox({1, 2.05}, "output", defines.direction.south),
    MomoLib.machine.FluidBox({-1, 2.05}, "output", defines.direction.south),
})
