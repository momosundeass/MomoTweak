data:extend{MomoLib.subgroup.New("unused", "logistics", "zzzzzzzzzzzzz")}

local function Remove(recipe)
	MomoLib.recipe.Remove(recipe)
	MomoLib.subgroup.ChangeItem(recipe, "unused", "z")
	MomoLib.subgroup.ChangeRecipe(recipe, "unused", "z")
end

Remove("swivel-joint")
Remove("4-to-4-pipe")

Remove("small-pipe-coupler")
Remove("medium-pipe-coupler")
Remove("large-pipe-coupler")

Remove("underground-pipe-segment-t1")
Remove("underground-pipe-segment-t2")
Remove("underground-pipe-segment-t3")

Remove("one-to-four-pipe")
Remove("one-to-four-t2-pipe")
Remove("one-to-four-t3-pipe")

Remove("underground-cross-pipe")
Remove("underground-cross-t2-pipe")
Remove("underground-cross-t3-pipe")



local item = MomoLib.MakeIngredient

local Set = MomoLib.recipe.SetIngredients
Set("one-to-one-forward-pipe", { item("pipe-to-ground", 2), item("pipe")})
Set("one-to-two-perpendicular-pipe", { item("pipe-to-ground"), item("one-to-one-forward-pipe")})
Set("one-to-three-forward-pipe", { item("pipe-to-ground"), item("one-to-two-perpendicular-pipe")})

Set("underground-i-pipe", { item("pipe-to-ground", 2), item("glass")})
Set("underground-L-pipe", { item("pipe-to-ground"), item("underground-i-pipe")})
Set("underground-t-pipe", { item("pipe-to-ground"), item("underground-L-pipe")})

Set("one-to-one-forward-t2-pipe", { item("niobium-pipe-to-ground", 2), item("niobium-pipe")})
Set("one-to-two-perpendicular-t2-pipe", { item("niobium-pipe-to-ground"), item("one-to-one-forward-t2-pipe")})
Set("one-to-three-forward-t2-pipe", { item("niobium-pipe-to-ground"), item("one-to-two-perpendicular-t2-pipe")})

Set("underground-i-t2-pipe", { item("niobium-pipe-to-ground", 2), item("niobium-plate", 2)})
Set("underground-L-t2-pipe", { item("niobium-pipe-to-ground"), item("underground-i-t2-pipe")})
Set("underground-t-t2-pipe", { item("niobium-pipe-to-ground"), item("underground-L-t2-pipe")})

Set("one-to-one-forward-t3-pipe", { item("ht-pipes-to-ground", 2), item("ht-pipes")})
Set("one-to-two-perpendicular-t3-pipe", { item("ht-pipes-to-ground"), item("one-to-one-forward-t3-pipe")})
Set("one-to-three-forward-t3-pipe", { item("ht-pipes-to-ground"), item("one-to-two-perpendicular-t3-pipe")})

Set("underground-i-t3-pipe", { item("ht-pipes-to-ground", 2), item("titanium-plate", 4)})
Set("underground-L-t3-pipe", { item("ht-pipes-to-ground"), item("underground-i-t3-pipe")})
Set("underground-t-t3-pipe", { item("ht-pipes-to-ground"), item("underground-L-t3-pipe")})


Set("underground-mini-pump", {item("pump", 1), item("glass", 2)})
Set("underground-mini-pump-t2", {item("pump", 2), item("niobium-plate", 4)})
Set("underground-mini-pump-t3", {item("pump", 4), item("titanium-plate", 4)})
