local I = MomoLib.MakeIngredient



-- gold
-- rutile
-- tungsten
-- silver
-- x3
MomoLib.recipe.ReplaceIngredient("bob-titanium-plate", "bob-rutile-ore", I("bob-rutile-ore", 6)) -- original was 2
MomoLib.recipe.ReplaceIngredient("bob-tungstic-acid", "bob-tungsten-ore", I("bob-tungsten-ore", 6)) -- original was 2
MomoLib.recipe.ReplaceIngredient("bob-silver-plate", "bob-silver-ore", I("bob-silver-ore", 3)) 
MomoLib.recipe.ReplaceIngredient("bob-gold-plate", "bob-gold-ore", I("bob-gold-ore", 3))

-- nickel
-- aluminium
-- x2
MomoLib.recipe.ReplaceIngredient("bob-nickel-plate", "bob-nickel-ore", I("bob-nickel-ore", 2)) 
MomoLib.recipe.ReplaceIngredient("bob-alumina", "bob-bauxite-ore", I("bob-bauxite-ore", 2))

-- zinc x6
MomoLib.recipe.ReplaceIngredient("bob-zinc-plate", "bob-zinc-ore", I("bob-zinc-ore", 6)) 