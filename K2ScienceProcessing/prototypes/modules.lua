local item = MomoLib.itemNames

local function NewModule(name, level, icon, speed, consumption, productivity, pollution)
    local itemName = name.."-module-"..level
    local prototype = MomoLib.item.Create(itemName, icon, 50, "module")
    local item = MomoLib.itemName:New(prototype)
    table.insert(MomoLib.itemNames.Prototypes, prototype)
    prototype.subgroup = "module"
    prototype.order = "e["..itemName.."]"
    prototype.effect = {quality = -0.25, speed = speed or 0, consumption = consumption or 0, productivity = productivity or 0, pollution = pollution or 0}
    prototype.category = name
    prototype.tier = level
    prototype.localised_name = {"", {"item-name."..name.."-module"}, " ", tostring(level)}
    return item 
end

function MomoLib.NewModules()
    data:extend{
        { type = "module-category", name = "yield" },
        { type = "module-category", name = "pure" },
    }
    -- matter
    MomoLib.itemNames.yieldModule1 = NewModule("yield", 1, MomoLib.SpaceEx("modules/productivity-3"), .1, .9 , .14, 1)
    -- matter + optimization
    MomoLib.itemNames.yieldModule2 = NewModule("yield", 2, MomoLib.SpaceEx("modules/productivity-6"), .4, 1.8, .26, 2)
    -- singularity
    MomoLib.itemNames.yieldModule3 = NewModule("yield", 3, MomoLib.SpaceEx("modules/productivity-9"), .9, 2.7, .42, 3.5)

    -- optimization
    MomoLib.itemNames.pureModule1 = NewModule("pure", 1, MomoLib.SpaceEx("modules/speed-3"), 1.0, 1, nil, 0.5)
    -- advanced
    MomoLib.itemNames.pureModule2 = NewModule("pure", 2, MomoLib.SpaceEx("modules/speed-6"), 1.5, 1, nil, 1)
end
function MomoLib.ModulesTechRecipe()
    -- yield
    MomoLib.technology.Clone(item.speedModule.tech, "yield-module-1")
    :INGREDIENTS{
        MomoLib.MakeResearchIngredient(item.purpleSci),
        MomoLib.MakeResearchIngredient(item.yellowSci),
        MomoLib.MakeResearchIngredient(item.matterSci),
    }:EFFECTS():PRE{item.imersiteBeam.tech, item.ecu.tech}:ICON{MomoLib.SpaceExGraphics("technology/modules/productivity-3"), 128}:Extend()
    MomoLib.recipe.New({
        item.productivityModule3:I(3),
        item.speedModule3:I(2),
        item.aiCore:I(12),
        item.imersitePlate:I(10),
        item.ecu:I(5)
    }, item.yieldModule1:I()):UNLOCK("yield-module-1"):TIME(25):CATEGORY(MomoLib.category.electromagnetic):Extend()

    MomoLib.technology.Clone(item.speedModule.tech, "yield-module-2")
    :INGREDIENTS{
        MomoLib.MakeResearchIngredient(item.purpleSci),
        MomoLib.MakeResearchIngredient(item.yellowSci),
        MomoLib.MakeResearchIngredient(item.whiteSci),
        MomoLib.MakeResearchIngredient(item.matterSci),
    }:EFFECTS():PRE{"yield-module-1", "pure-module-1"}:ICON{MomoLib.SpaceExGraphics("technology/modules/productivity-6"), 128}:Extend()
    MomoLib.recipe.New({
        item.yieldModule1:I(4),
        item.pureModule1:I(1),
        item.ecu:I(20),
        item.copper2:I(20),
        item.matterStabilizer:I(),
    }, item.yieldModule2:I()):UNLOCK("yield-module-2"):TIME(35):CATEGORY(MomoLib.category.electromagnetic):Extend()
    -- TODO: yield 3


    -- pure
    MomoLib.technology.Clone(item.speedModule.tech, "pure-module-1")
    :INGREDIENTS{
        MomoLib.MakeResearchIngredient(item.purpleSci),
        MomoLib.MakeResearchIngredient(item.yellowSci),
        MomoLib.MakeResearchIngredient(item.whiteSci),
    }:EFFECTS():PRE(item.copper2.tech):ICON{MomoLib.SpaceExGraphics("technology/modules/speed-3"), 128}:Extend()
    MomoLib.recipe.New({
        item.speedModule3:I(3),
        item.efficiencyModule3:I(5),
        item.copper2:I(10),
        item.whiteSciN:I(2),
        item.aiCore:I(6)
    }, item.pureModule1:I()):UNLOCK("pure-module-1"):TIME(25):CATEGORY(MomoLib.category.electromagnetic):Extend()
    -- TODO: pure 2


    MomoLib.technology.Clone(item.speedModule.tech, "wide-beacon")
    :INGREDIENTS{
        MomoLib.MakeResearchIngredient(item.purpleSci),
        MomoLib.MakeResearchIngredient(item.yellowSci),
        MomoLib.MakeResearchIngredient(item.whiteSci),
        MomoLib.MakeResearchIngredient(item.matterSci),
    }:EFFECTS():PRE{"yield-module-1", "pure-module-1", item.beacon.tech, item.eqBattery3.tech}:ICON{MomoLib.SpaceExGraphics("technology/wide-beacon-2"), 128}:Extend()
    MomoLib.recipe.New({
        item.beacon:I(2),
        item.matterStabilizer:I(4),
        item.researchServer:I(6),
        item.inconShape:I(40),
        item.scienceHardware2:I(20),
        item.eqBattery3:I(4),
    }, item.wideBeacon:I()):UNLOCK("wide-beacon"):TIME(50):CATEGORY(MomoLib.category.electronics):Extend()
end

function MomoLib.WideBeacon()
    -- TODO: Width beacon on advanced tech
    local shift = {0, -0.8}
    local frame = 8 * 4
    local wideBeacon = MomoLib.machine.CreateEntity("beacon", MomoLib.itemNames.beacon2.name, {
        name = "wide-beacon",
        icon = MomoLib.SpaceEx("wide-beacon-2"),
        icon_size = MomoLib.icon.DefaultSize,
        selection_box = { { -2, -2 }, { 2, 2 } },
        animation = {
            layers = {
                {
                    filename = MomoLib.SpaceExGraphics4("entity/wide-beacon/wide-beacon-shadow"),
                    priority = "high",
                    size = { 1320 / 4, 1392 / 8 },
                    scale = 0.5,
                    line_length = 4,
                    frame_count = frame,
                    draw_as_shadow = true,
                    animation_speed = 0.7,
                    shift = {0.6, -0.8 + 1.1},
                },
                {
                    size = { 2048 / 8, 1280 / 4 },
                    scale = 0.5,
                    line_length = 8,
                    frame_count = frame,
                    shift = shift,
                    animation_speed = 0.7,
                    filename = MomoLib.SpaceExGraphics4("entity/wide-beacon/wide-beacon-2"),
                }
            }
        },
        corpse = "medium-remnants",
        drawing_box_vertical_extension = 0.7, 
        supply_area_distance = 9.0,
        quality_affects_supply_area_distance = true,
        distribution_effectivity = 0.75,
        distribution_effectivity_bonus_per_quality_level = 0.05,
        module_slots = 4
    })
    MomoLib.machine.Power(wideBeacon.machine.name, "1GW")
    MomoLib.itemNames.wideBeacon = MomoLib.itemName:New(wideBeacon.item)
end 

function MomoLib.UpdateModulesEffect()
    MomoLib.SetEffect(item.efficiencyModule.n,  "consumption", -0.50)
    MomoLib.SetEffect(item.efficiencyModule2.n, "consumption", -1.20)
    MomoLib.SetEffect(item.efficiencyModule3.n, "consumption", -2.00)

    MomoLib.SetEffect(item.qualityModule.n,  "quality", 0.02)
    MomoLib.SetEffect(item.qualityModule2.n, "quality", 0.05)
    MomoLib.SetEffect(item.qualityModule3.n, "quality", 0.08)

    MomoLib.GetPrototype("beacon", "beacon", function (p)
        p.allowed_module_categories = {"efficiency", "speed"}
    end)

    MomoLib.GetPrototype("beacon", MomoLib.itemNames.beacon2.name, function (p)
        p.allowed_effects = MomoLib.EffectLimitation(true, true, true, true, false)
        p.allowed_module_categories = {"efficiency", "speed", "productivity" }

        -- TODO: change how module icons here
        -- p.quality_affects_module_slots = true
    end)
end

