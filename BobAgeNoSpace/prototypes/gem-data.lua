local function Recycle(gem)
	local prototype = MomoLib.recipe.NewRecycle(gem, MomoLib.MakeIngredient("stone", 1, 0.25))
	prototype.localised_name = {"recipe-name.gem-recycle"}
	prototype:Extend()
end
Recycle("bob-ruby-3")
Recycle("bob-sapphire-3")
Recycle("bob-emerald-3")
Recycle("bob-amethyst-3")
Recycle("bob-topaz-3")
Recycle("bob-diamond-3")