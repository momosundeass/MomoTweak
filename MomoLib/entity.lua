---@class Entity
local funcs = {}

function funcs.GetPrototype(name)
    local entity = MomoLib.machine.GetPrototype(name) 
        or MomoLib.Raw("resource", name)
        or MomoLib.Raw("wall", name)
        or MomoLib.Raw("car", name)
        or MomoLib.Raw("projectile", name)
    return entity
end

---@return number rounded entity width
function funcs.Width(entity)
    local box = entity.collision_box
    local lt = box.left_top or box[1]
    local rb = box.right_bottom or box[2]
    return math.ceil(math.abs((lt.x or lt[1]) - (rb.x or rb[1])))
end

---@return number rounded entity height
function funcs.Height(entity)
    local box = entity.collision_box
    local lt = box.left_top or box[1]
    local rb = box.right_bottom or box[2]
    return math.ceil(math.abs((lt.y or lt[2]) - (rb.y or rb[2])))
end


---@see any https://lua-api.factorio.com/latest/types/IconSequencePositioning.html
---@param definesInventory any see https://lua-api.factorio.com/latest/defines.html#defines.inventory
function funcs.IconPositioning(definesInventory, column, row, more)
    local tbl = {
        inventory_index = definesInventory,
        max_icons_per_row = column or 6,
    }
    if row then tbl.max_icon_rows = row end
    if more then 
        for k, v in pairs(more) do
            tbl[k] = v
        end
    end
    return tbl
end

function funcs.BeltSpeed(prototype, itemPerSec)
	if type(prototype) == "string" then
		MomoLib.GetPrototype("transport-belt", prototype, function(p) prototype = p end, false)
		MomoLib.GetPrototype("underground-belt", prototype, function(p) prototype = p end, false)
		MomoLib.GetPrototype("splitter", prototype, function(p) prototype = p end, false)
		MomoLib.GetPrototype("loader-1x1", prototype, function(p) prototype = p end, false)
		MomoLib.GetPrototype("loader", prototype, function(p) prototype = p end, false)
		MomoLib.GetPrototype("linked-belt", prototype, function(p) prototype = p end, false)
		MomoLib.GetPrototype("lane-splitter", prototype, function(p) prototype = p end, false)
	end
	prototype.speed = itemPerSec / 480
end


MomoLib.entity = funcs