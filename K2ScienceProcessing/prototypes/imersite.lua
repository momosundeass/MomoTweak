local quarry = MomoLib.machine.GetPrototype(Item.quarry.n)
quarry.input_fluid_box = MomoLib.machine.FluidBox({0, 3}, "input-output", defines.direction.south)
    :FILTER(Item.methanol.name)
    :CATEGORY({"default", "pipe", "kr-steel-pipe"})

MomoLib.GetPrototype("resource", "kr-imersite", function(res)
    res.minable.required_fluid = Item.methanol.name
    res.minable.fluid_amount = 15
end)

MomoLib.recipe.SetIngredients(Item.quarry, {
    Item.steamTurbine:I(2),
    Item.jawCrusher:I(20),
    Item.mineralWaterPump:I(4),
    Item.atmospheric:I(2),
    Item.electricMotor:I(100),
    Item.blueChip:I(40),
})