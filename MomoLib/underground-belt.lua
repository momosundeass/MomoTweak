
---@return table prototypes array of {entityPrototype, itemPrototype, originalItem}
function MomoLib.GenAllUndergroundBeltEntityItem(distanceMul, newSubgroup)
    MomoLib.uBelts = {}
    for _, u in pairs(data.raw["underground-belt"]) do
        local newBelt = MomoLib.DeepCopy(u)
        newBelt.max_distance = u.max_distance * (distanceMul or 2) + 1
        local newItemName = u.name.."-2"
        newBelt.name = newItemName
        newBelt.minable.result = newItemName
        MomoLib.MakeAltUndergroundGraphic(newBelt)
        
        local newItem
        local itemPrototype = data.raw.item[u.minable.result]
        newItem = MomoLib.DeepCopy(itemPrototype)
        newItem.name = newItemName
        newItem.place_result = newBelt.name 
        newItem.subgroup = newSubgroup or newItem.subgroup
        
        local localized = {"", {"entity-name."..u.name}, " : ", {"description.underground-2"}}
        newItem.localised_name = localized
        newBelt.localised_name = localized

        MomoLib.icon.AddPlusOverlay(newBelt)
        MomoLib.icon.AddPlusOverlay(newItem)
        table.insert(MomoLib.uBelts, {newBelt, newItem, itemPrototype})
    end
    for _, d in pairs(MomoLib.uBelts) do
        data:extend{d[1], d[2]}
    end
    return MomoLib.uBelts
end

function MomoLib.UpdateUndergroundBeltNextUpgrade()
    for _, b in pairs(MomoLib.uBelts) do
        local newBelt = b[1]
        local item = b[2]
        local ori = b[3]
        local u = data.raw["underground-belt"][ori.name]
        if u.next_upgrade then
            newBelt.next_upgrade = u.next_upgrade.."-2"
        end
    end
end

function MomoLib.MakeAltUndergroundGraphic(prototype)
    if (prototype.structure.direction_in) then MomoLib.ApplyAltGraphics(prototype.structure.direction_in) end
    if (prototype.structure.direction_out) then MomoLib.ApplyAltGraphics(prototype.structure.direction_out) end
    if (prototype.structure.back_patch) then MomoLib.ApplyAltGraphics(prototype.structure.back_patch) end
    if (prototype.structure.front_patch ) then MomoLib.ApplyAltGraphics(prototype.structure.front_patch ) end
    if (prototype.structure.direction_in_side_loading) then MomoLib.ApplyAltGraphics(prototype.structure.direction_in_side_loading) end
    if (prototype.structure.direction_out_side_loading) then MomoLib.ApplyAltGraphics(prototype.structure.direction_out_side_loading) end
    if (prototype.structure.frozen_patch_in) then MomoLib.ApplyAltGraphics(prototype.structure.frozen_patch_in) end
    if (prototype.structure.frozen_patch_out) then MomoLib.ApplyAltGraphics(prototype.structure.frozen_patch_out) end
end


function MomoLib.ApplyAltGraphics(sprite4Way)
    --[[
        @param sprite4Way "https://lua-api.factorio.com/latest/types/Sprite4Way.html"
    ]]
    local gray = 0.01
    local color = {r =gray, g=gray, b=gray, a=0.01}
    local brown = {r=115/255, g=83/255, b=13/255, a=1}
    -- color = brown
    -- if sprite4Way.sheet then MomoLib.Tint(sprite4Way.sheet, color) end
    -- if sprite4Way.north then MomoLib.Tint(sprite4Way.north, color) end
    -- if sprite4Way.south then MomoLib.Tint(sprite4Way.south, color) end
    -- if sprite4Way.east then MomoLib.Tint(sprite4Way.east, color) end
    -- if sprite4Way.west then MomoLib.Tint(sprite4Way.west, color) end

    if sprite4Way.sheet then 
        sprite4Way.sheets = {sprite4Way.sheet} 
        sprite4Way.sheet = nil
    end
    local sprite = MomoLib.DeepCopy(sprite4Way.sheets[1])
    sprite.filename = "__"..MomoLib.ModName.."__/MomoLib/graphics/underground-belt.png"
    sprite.blend_mode = "normal"
    table.insert(sprite4Way.sheets, sprite)
end