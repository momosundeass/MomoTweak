local quarry = MomoLib.machine.GetPrototype(Item.quarry.n)
quarry.input_fluid_box = MomoLib.machine.FluidBox({0, 3}, "input-output", defines.direction.south)
    :FILTER(Item.methanol.name)
    :CATEGORY({"default", "pipe", "kr-steel-pipe"})

MomoLib.GetPrototype("resource", "kr-imersite", function(res)
    res.minable.required_fluid = Item.methanol.name
    res.minable.fluid_amount = 15
end)

MomoLib.recipe.ReplaceIngredient(Item.imersiteCrystal, Item.imersite, Item.imersiteJelly:I(12))

MomoLib.technology.AddRequired(Item.quarry.tech,{ Item.rareMetalClump.tech, Item.assembly3.tech })
MomoLib.recipe.SetIngredients(Item.quarry, {
    Item.assembly3:I(4),
    Item.jawCrusher:I(20),
    Item.atmospheric:I(2),
    Item.electricMotor:I(100),
    Item.blueChip:I(40),
})

MomoLib.recipe.SafeAddIngredients(Item.imersiteBeam, Item.iron2:I(8))
MomoLib.recipe.SafeAddIngredients("kr-easy-imersium-beam", Item.iron2:I(8))
MomoLib.recipe.SafeAddIngredients(Item.imersiteGear, Item.iron2:I(6))