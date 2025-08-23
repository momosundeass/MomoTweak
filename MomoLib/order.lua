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

MomoLib.currentOrder = 1
MomoLib.order = funcs