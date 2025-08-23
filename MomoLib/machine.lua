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

function funcs.GetPrototype(prototypeName)
    return data.raw["assembling-machine"][prototypeName] or data.raw["furnace"][prototypeName]
end

MomoLib.machine = funcs