local funcs = {}


function funcs.AfterItem(itemName)
    local order = "z"
    MomoLib.GetIngredient(itemName, function(p) order = p.order end)
    MomoLib.currentOrder = MomoLib.currentOrder + 1
    return order .. MomoLib.currentOrder
end

function funcs.AfterRecipe(itemName)
    local order = "z"
    MomoLib.GetRecipe(itemName, function(p) order = p.order end)
    MomoLib.currentOrder = MomoLib.currentOrder + 1
    return order .. MomoLib.currentOrder
end

---@param key string
---@return string
function funcs.Auto(key)
    local order 
    if MomoLib.autoOrder[key] == nil then
        order = 0
    else
        order = MomoLib.autoOrder[key]
    end
    order = order + 1
    MomoLib.autoOrder[key] = order
    return "z-" .. string.char(string.byte("a") + order)
end

MomoLib.currentOrder = 1
MomoLib.autoOrder = {}
MomoLib.order = funcs