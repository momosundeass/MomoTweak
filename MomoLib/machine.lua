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
    if insertMode then
        for _, f in pairs(fluidBoxes) do
            table.insert(prototype.fluid_boxes, f)
        end
    else 
        prototype.fluid_boxes = fluidBoxes
    end
end

funcs.fluidbox = {}
function funcs.fluidbox:New(o)
    setmetatable(o, self)
    self.__index = self
    return o
end
---@alias production
---| '"input"'
---| '"output"'
---| '"input-output"'
---@param production_type production
---@param picture? table
---@param cover? table 
function funcs.FluidBox(position, production_type, direction, picture, cover)
    if direction == nil then direction = defines.direction.north end
    if picture == nil then
       picture = assembler2pipepictures()
    end
    if cover == nil then
        cover = pipecoverspictures()
    end
    return funcs.fluidbox:New{
        production_type = production_type,
        pipe_picture = picture,
        pipe_covers = cover,
        volume = 100,
        pipe_connections = {{ flow_direction = production_type, direction = direction, position = position }},
        secondary_draw_orders = { north = -1 }
    }
end
function funcs.fluidbox:FILTER(filter)
    self.filter = filter
return self end
function funcs.fluidbox:SUPERHOT()
    self.max_temperature = 10000000
return self end
function funcs.fluidbox:CATEGORY(categories)
    for _, pc in pairs(self.pipe_connections) do
        pc.connection_category = categories    
    end
return self end
---@alias flow
---| '"input"'
---| '"output"'
---| '"input-output"'
---@param flow_direction flow
function funcs.fluidbox:FLOW(flow_direction)
    for _, pc in pairs(self.pipe_connections) do
        pc.flow_direction = flow_direction
    end
end
function funcs.PipeEmptyPictures()
    return {
        north = util.empty_sprite(),
        east = util.empty_sprite(),
        south = util.empty_sprite(),
        west = util.empty_sprite(),
    }
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

function funcs.CopySounds(sourceName, pasteAtName)
    local source = funcs.GetPrototype(sourceName)
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

function funcs.Power(prototypeName, power)
    funcs.GetPrototype(prototypeName).energy_usage = power
end

function funcs.Speed(prototypeName, speed)
    funcs.GetPrototype(prototypeName).crafting_speed = speed
end

function funcs.AddCategory(prototypeName, categories)
    local prototype = funcs.GetPrototype(prototypeName)
    if prototype.crafting_categories == nil then prototype.additionalcrafting_categories_categories = {} end
	if type(categories) ~= "table" then categories = {categories} end
	for _, c in pairs(categories) do
		table.insert(prototype.crafting_categories, c)	
	end
end

function funcs.ModuleSlot(prototypeName, slot)
    funcs.GetPrototype(prototypeName).module_slots = slot
end

function funcs.GetPrototype(prototypeName)
    if type(prototypeName) ~= "string" then prototypeName = prototypeName.name end
    return data.raw["assembling-machine"][prototypeName] 
        or data.raw["furnace"][prototypeName] 
        or data.raw["mining-drill"][prototypeName]
        or data.raw["beacon"][prototypeName]
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