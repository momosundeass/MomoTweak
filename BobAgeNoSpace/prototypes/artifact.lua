-- artifact
local I = MomoLib.MakeIngredient
local prototype = MomoLib.recipe.New(I("bob-science-pack-gold"), I("bob-small-alien-artifact", {25, 50}, 0.25), "bob-science-pack-gold-recycle")
prototype:TIME(60):PRODUCTIVITY()
MomoLib.recipe.ToRecycle(prototype, false)
data:extend{prototype}

