local funcs = {}
function funcs.CreateEntity(category, baseMachine, overrideTable)
    local ref = data.raw[category][baseMachine]
    if not ref then error("no base entity with " .. category .. ":" .. baseMachine) end 

    local machine = MomoLib.DeepCopy(ref)

    for key, value in pairs(overrideTable) do
        machine[key] = value    
    end

    local item = MomoLib.item.Create(machine.name, machine.icon, 50, "item")
    local refItem
    MomoLib.GetIngredient(ref.minable.result, function(p) refItem = p end)
    item.subgroup = refItem.subgroup
    
    machine.name = overrideTable.name
    item.place_result = overrideTable.name

    machine.fast_replaceable_group = nil
    machine.next_upgrade = nil
    machine.minable.result = item.name
    machine.collision_box = funcs._CollisionBox(machine.selection_box)
    machine.fluid_boxes_off_when_no_fluid_recipe = true
    machine.reset_animation_when_frozen = true

    data:extend{machine}

    return {machine = machine, item= item}
end

function funcs._CollisionBox(box)
    local leftBottom = box[1]
    local rightTop = box[2]
    local newLeftBottom = { leftBottom[1] + 0.1, leftBottom[2] + 0.1 }
    local newRightTop = { rightTop[1] - 0.1, rightTop[2] - 0.1 }
    return { newLeftBottom, newRightTop }
end

---@param insertMode? boolean
function funcs.FluidBoxes(prototypeName, fluidBoxes, insertMode)
    if not MomoLib.IsArray(fluidBoxes) then fluidBoxes = {fluidBoxes} end
    insertMode = insertMode or false
    local prototype = funcs.GetPrototype(prototypeName)
    if not prototype then MoLog("No machine with name "..prototypeName) return end
    if insertMode then
        for _, f in pairs(fluidBoxes) do
            table.insert(prototype.fluid_boxes, f)
        end
    else 
        prototype.fluid_boxes = fluidBoxes
    end
end

---@class FluidBox
---@field pipe_connections table
funcs.fluidbox = {}
function funcs.fluidbox:New(o)
    setmetatable(o, self)
    self.__index = self
    return o
end

---@alias flow
---| '"input"'
---| '"output"'
---| '"input-output"'
---@param production_type flow
---@param direction any
---| 'defines.direction' #defines direction
---@param aug? {picture:table, cover:table, drawOrder:(table|nil)}
---@return FluidBox
function funcs.FluidBox(position, production_type, direction, aug)
    if direction == nil then direction = defines.direction.north end
    local picture = assembler2pipepictures()
    if aug ~= nil and aug.picture ~= nil then picture = aug.picture end
    local cover = pipecoverspictures()
    if aug ~= nil and aug.cover ~= nil then cover = aug.cover end
    local draw_order = { north = -1 }
    if aug ~= nil and aug.drawOrder ~= nil then draw_order = aug.drawOrder end
    return funcs.fluidbox:New{
        production_type = production_type,
        pipe_picture = picture,
        pipe_covers = cover,
        volume = 100,
        pipe_connections = {{ flow_direction = production_type, direction = direction, position = position }},
        secondary_draw_orders = draw_order
    }
end
---@return FluidBox
function funcs.fluidbox:FILTER(filter)
    self.filter = filter
return self end
---@return FluidBox
function funcs.fluidbox:SUPERHOT()
    self.max_temperature = 10000000
return self end
---@return FluidBox
function funcs.fluidbox:CATEGORY(categories)
    for _, pc in pairs(self.pipe_connections) do
        pc.connection_category = categories    
    end
return self end

---@param flow_direction flow
---@return FluidBox
function funcs.fluidbox:FLOW(flow_direction)
    for _, pc in pairs(self.pipe_connections) do
        pc.flow_direction = flow_direction
    end
return self end
function funcs.PipeEmptyPictures()
    return {
        north = util.empty_sprite(),
        east = util.empty_sprite(),
        south = util.empty_sprite(),
        west = util.empty_sprite(),
    }
end

function funcs.CopySounds(sourceName, pasteAtName)
    local source = funcs.GetPrototype(sourceName)
    if not source then MoLog("No machine with name "..sourceName) return end
    local pasteAt = funcs.GetPrototype(pasteAtName)
    
    if source.working_sound then pasteAt.working_sound = source.working_sound end
    if source.repair_sound then pasteAt.repair_sound = source.repair_sound end
    if source.build_sound then pasteAt.build_sound = source.build_sound end
    if source.mined_sound then pasteAt.mined_sound = source.mined_sound end
    if source.mining_sound then pasteAt.mining_sound = source.mining_sound end
    if source.open_sound then pasteAt.open_sound = source.open_sound end
    if source.close_sound then pasteAt.close_sound = source.close_sound end
    if source.ambient_sounds_group then pasteAt.ambient_sounds_group = source.ambient_sounds_group end
    if source.ambient_sounds then pasteAt.ambient_sounds = source.ambient_sounds end
end

function funcs.ProductivityAdded(machine, prod)
	local prototype = data.raw["assembling-machine"][machine] or data.raw["furnace"][machine]
	if prototype == nil then error("No assembling-machine or furnace; with name : " .. machine) end
    if not prototype.effect_receiver then
        prototype.effect_receiver = {}
    end
    if not prototype.effect_receiver.base_effect then
        prototype.effect_receiver.base_effect = {}
    end 
    if not prototype.effect_receiver.base_effect.productivity then
        prototype.effect_receiver.base_effect.productivity = prod
    else
        prototype.effect_receiver.base_effect.productivity = prototype.effect_receiver.base_effect.productivity + prod
    end
end

function funcs.Power(prototypeName, power)
    funcs.GetPrototype(prototypeName).energy_usage = power
end

function funcs.Speed(prototypeName, speed)
    funcs.GetPrototype(prototypeName).crafting_speed = speed
end

function funcs.AddCategory(prototypeName, categories)
    local prototype = funcs.GetPrototype(prototypeName)
    if not prototype then MoLog("No machine with name "..prototypeName) return end
    if prototype.crafting_categories == nil then prototype.additionalcrafting_categories_categories = {} end
	if type(categories) ~= "table" then categories = {categories} end
	for _, c in pairs(categories) do
		table.insert(prototype.crafting_categories, c)	
	end
end

---@param positioning? table see MomoLib.entity.IconPositioning
function funcs.ModuleSlot(prototypeName, slot, positioning)
    local prototype = funcs.GetPrototype(prototypeName)
    if not prototype then MomoLib.Log("No machine with name "..prototypeName) return end 
    prototype.module_slots = slot
    if not prototype.icons_positioning then prototype.icons_positioning = {} end
    prototype.icons_positioning[#prototype.icons_positioning + 1] = positioning
end

function funcs.EnableQualityModuleSlot(machine)
    machine = machine.name or machine
    local p = funcs.GetPrototype(machine)
    p.quality_affects_module_slots = true
end

---@param effectLimiter table see MomoLib.EffectLimitation
function funcs.ModuleLimit(prototypeName, effectLimiter)
    funcs.GetPrototype(prototypeName).allowed_effects = effectLimiter
end

---@param allowed table of string module category
function funcs.ModuleCategory(prototypeName, allowed)
    funcs.GetPrototype(prototypeName).allowed_module_categories = allowed
end
function funcs.GetPrototype(prototypeName)
    if type(prototypeName) ~= "string" then prototypeName = prototypeName.name end
    return MomoLib.Raw("assembling-machine",prototypeName) 
        or MomoLib.Raw("furnace",prototypeName) 
        or MomoLib.Raw("mining-drill",prototypeName)
        or MomoLib.Raw("offshore-pump",prototypeName)
        or MomoLib.Raw("beacon",prototypeName)
        or MomoLib.Raw("lab",prototypeName)
        or MomoLib.Raw("roboport",prototypeName)
        or MomoLib.Raw("radar",prototypeName)
        or MomoLib.Raw("pump",prototypeName)
        or MomoLib.Raw("lamp",prototypeName)
        or MomoLib.Raw("boiler",prototypeName)
        or MomoLib.Raw("generator",prototypeName)
        or MomoLib.Raw("fusion-generator",prototypeName)
        or MomoLib.Raw("burner-generator",prototypeName)
        or MomoLib.Raw("reactor",prototypeName)
        or MomoLib.Raw("fusion-reactor",prototypeName)
        or MomoLib.Raw("solar-panel",prototypeName)
        or MomoLib.Raw("accumulator",prototypeName)
        or MomoLib.Raw("rocket-silo",prototypeName)
end

function funcs.MinerDrainRate(minerName, drainRate) 
    MomoLib.GetPrototype("mining-drill", minerName, function(p) p.resource_drain_rate_percent = drainRate end)
end

function funcs.MinerBeltStack(minerName, isStack)
    if isStack == nil then isStack = true end
    MomoLib.GetPrototype("mining-drill", minerName, function(p) p.drops_full_belt_stacks = isStack end)
end

--[[
    see https://lua-api.factorio.com/latest/types/IconDrawSpecification.html
]]
function funcs.IconDraw(prototypeName, drawSpecific)
    funcs.GetPrototype(prototypeName).icon_draw_specification = drawSpecific
end

MomoLib.machine = funcs