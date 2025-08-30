require("MomoLib.underground-belt")

local ingredients = {}
ingredients["underground-belt-2"] = {
    MomoLib.MakeIngredient("underground-belt", 4),
    MomoLib.MakeIngredient("kr-loader", 2),
}
ingredients["fast-underground-belt-2"] = {
    MomoLib.MakeIngredient("underground-belt-2", 2),
    MomoLib.MakeIngredient("fast-underground-belt", 2),
    MomoLib.MakeIngredient("kr-fast-loader", 2),
}
ingredients["express-underground-belt-2"] = {
    MomoLib.MakeIngredient("fast-underground-belt-2", 2),
    MomoLib.MakeIngredient("express-underground-belt", 2),
    MomoLib.MakeIngredient("kr-express-loader", 2),
}
ingredients["kr-advanced-underground-belt-2"] = {
    MomoLib.MakeIngredient("express-underground-belt-2", 2),
    MomoLib.MakeIngredient("kr-advanced-underground-belt", 2),
    MomoLib.MakeIngredient("kr-advanced-loader", 2),
}
ingredients["kr-superior-underground-belt-2"] = {
    MomoLib.MakeIngredient("kr-advanced-underground-belt-2", 2),
    MomoLib.MakeIngredient("kr-superior-underground-belt", 2),
    MomoLib.MakeIngredient("kr-superior-loader", 2),
}

local belts = MomoLib.GenAllUndergroundBeltEntityItem(2, MomoLib.subgroup.uBelt.name)
for _, b in pairs(belts) do
    local entities = b[1]
    local item = b[2]
    local oriItem = b[3]

    local recipe = MomoLib.recipe.New(ingredients[item.name], {
        MomoLib.MakeIngredient(item, 2)
    }):UNLOCK(MomoLib.technology.FindUnlock(oriItem))
    recipe:Extend()
end
