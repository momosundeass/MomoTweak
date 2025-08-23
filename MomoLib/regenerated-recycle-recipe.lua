MomoLib.Log("Recycle recipes regeneration started")

for recipeName, contain in pairs(table.deepcopy(MomoLib.recipes)) do
    local recycle = data.raw.recipe[recipeName .. "-recycling"]
    if not recycle or recycle.category ~= "recycling" then goto continue end
    local recipe = {}
    if not MomoLib.GetRecipe(recipeName, function(p) recipe = p end) then goto continue end
    if not recipe.ingredients then goto continue end
    if not recycle.results or not recycle.ingredients then goto continue end
    if (recycle.ingredients[1].name or recycle.ingredients[1][1]) == (recycle.results[1].name or recycle.results[1][1]) then goto continue end
    if recipe.auto_recycle ~= nil and recipe.auto_recycle == false then goto continue end

    if not add_recipe_values(recycle, recipe, recycle) then goto continue end
    ::continue::
end 