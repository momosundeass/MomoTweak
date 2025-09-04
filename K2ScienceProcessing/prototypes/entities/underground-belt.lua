require("MomoLib.underground-belt")

local data = {}
local alpha = 1
data["underground-belt-2"] = { ingredients = {
    MomoLib.MakeIngredient("underground-belt", 4),
    MomoLib.MakeIngredient("kr-loader", 2),
}, color = {r=1, g=1, b=0, a=alpha}}
data["fast-underground-belt-2"] = { ingredients = {
    MomoLib.MakeIngredient("underground-belt-2", 2),
    MomoLib.MakeIngredient("fast-underground-belt", 2),
    MomoLib.MakeIngredient("kr-fast-loader", 2),
}, color = {r=1, g=0, b=0, a=alpha}}
data["express-underground-belt-2"] = { ingredients = {
    MomoLib.MakeIngredient("fast-underground-belt-2", 2),
    MomoLib.MakeIngredient("express-underground-belt", 2),
    MomoLib.MakeIngredient("kr-express-loader", 2),
}, color = {r=0, g=1, b=1, a=alpha}}
data["kr-advanced-underground-belt-2"] = { ingredients = {
    MomoLib.MakeIngredient("express-underground-belt-2", 2),
    MomoLib.MakeIngredient("kr-advanced-underground-belt", 2),
    MomoLib.MakeIngredient("kr-advanced-loader", 2),
}, color = {r=0, g=1, b=0, a=alpha}}
data["kr-superior-underground-belt-2"] = { ingredients = {
    MomoLib.MakeIngredient("kr-advanced-underground-belt-2", 2),
    MomoLib.MakeIngredient("kr-superior-underground-belt", 2),
    MomoLib.MakeIngredient("kr-superior-loader", 2),
}, color = {r=1, g=0, b=1, a=alpha}}

local belts = MomoLib.GenAllUndergroundBeltEntityItem(2, MomoLib.subgroup.uBelt.name)
for _, b in pairs(belts) do
    local entities = b[1]
    local item = b[2]
    local oriItem = b[3]

    local recipe = MomoLib.recipe.New(data[item.name].ingredients, {
        MomoLib.MakeIngredient(item, 2)
    }):UNLOCK(MomoLib.technology.FindUnlock(oriItem))
    recipe:Extend()
    local folder = "entity/deep-space-underground-belt/"
    local MakeSheets = function(color, y) 
        local size = 192
        return { 
            {filename = MomoLib.SpaceExGraphics(folder.."deep-space-underground-belt-structure"), y = size * y, size = size, scale = 0.5},
            {filename = MomoLib.SpaceExGraphics(folder.."deep-space-underground-belt-structure-glow"), y = size * y, size = size, tint = color, draw_as_glow = true, scale = 0.5},
     } end

    entities.structure.direction_in = {sheets = MakeSheets(data[item.name].color, 1)}
    entities.structure.direction_out = {sheets = MakeSheets(data[item.name].color, 0)}
    entities.structure.direction_in_side_loading = {sheets = MakeSheets(data[item.name].color, 3)}
    entities.structure.direction_out_side_loading = {sheets = MakeSheets(data[item.name].color, 2)}
    
    entities.structure.front_patch = {sheet = {filename = MomoLib.SpaceExGraphics(folder.."deep-space-underground-belt-structure-front-patch"), size = 192, scale = 0.5}}
    entities.structure.back_patch  = {sheet = {filename = MomoLib.SpaceExGraphics(folder.."deep-space-underground-belt-structure-back-patch"), size = 192, scale = 0.5}}
end