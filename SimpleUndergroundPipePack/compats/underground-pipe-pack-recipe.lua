data:extend{MomoLib.subgroup.New("unused", "logistics", "zzzzzzzzzzzzz")}

local function Remove(recipe)
	MomoLib.recipe.Remove(recipe)
	MomoLib.subgroup.ChangeItem(recipe, "unused", "z")
	MomoLib.subgroup.ChangeRecipe(recipe, "unused", "z")
	
	MomoLib.GetItem(recipe, function (item)
		item.hidden = true
		item.hidden_in_factoriopedia = true
	end)
	MomoLib.GetRecipe(recipe, function (item)
		item.hidden = true
		item.hidden_in_factoriopedia = true
	end)
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



local bob = mods["boblogistics"]

local item = MomoLib.MakeIngredient

local Set = MomoLib.recipe.SetIngredients
local gPipe = "pipe-to-ground"
local pipe = "pipe"

if bob then gPipe = "bob-stone-pipe-to-ground" end
Set("one-to-one-forward-pipe", { item(gPipe, 2), item(pipe)})
Set("one-to-two-perpendicular-pipe", { item(gPipe), item("one-to-one-forward-pipe")})
Set("one-to-three-forward-pipe", { item(gPipe), item("one-to-two-perpendicular-pipe")})

if bob then gPipe = "bob-bronze-pipe-to-ground" end
Set("underground-i-pipe", { item(gPipe, 2), item("stone-brick", 4)})
Set("underground-L-pipe", { item(gPipe), item("underground-i-pipe")})
Set("underground-t-pipe", { item(gPipe), item("underground-L-pipe")})

if bob then gPipe = "bob-plastic-pipe-to-ground" end
Set("one-to-one-forward-t2-pipe", { item(gPipe, 2), item("steel-plate", 2)})
Set("one-to-two-perpendicular-t2-pipe", { item(gPipe), item("one-to-one-forward-t2-pipe")})
Set("one-to-three-forward-t2-pipe", { item(gPipe), item("one-to-two-perpendicular-t2-pipe")})

if bob then gPipe = "bob-ceramic-pipe-to-ground" end
Set("underground-i-t2-pipe", { item(gPipe, 2), item("concrete", 4)})
Set("underground-L-t2-pipe", { item(gPipe), item("underground-i-t2-pipe")})
Set("underground-t-t2-pipe", { item(gPipe), item("underground-L-t2-pipe")})

if bob then gPipe = "bob-tungsten-pipe-to-ground" end
Set("one-to-one-forward-t3-pipe", { item(gPipe, 2), item("refined-concrete", 8)})
Set("one-to-two-perpendicular-t3-pipe", { item(gPipe), item("one-to-one-forward-t3-pipe")})
Set("one-to-three-forward-t3-pipe", { item(gPipe), item("one-to-two-perpendicular-t3-pipe")})

if bob then gPipe = "bob-nitinol-pipe-to-ground" end
Set("underground-i-t3-pipe", { item(gPipe, 2), item("refined-concrete", 4)})
Set("underground-L-t3-pipe", { item(gPipe), item("underground-i-t3-pipe")})
Set("underground-t-t3-pipe", { item(gPipe), item("underground-L-t3-pipe")})


Set("underground-mini-pump", {item("pump", 1), item("stone-brick", 4)})
Set("underground-mini-pump-t2", {item("pump", 2), item("concrete", 4)})
Set("underground-mini-pump-t3", {item("pump", 4), item("refined-concrete", 4)})
