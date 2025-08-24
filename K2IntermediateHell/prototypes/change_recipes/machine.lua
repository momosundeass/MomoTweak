MomoLib.recipe.ReplaceIngredient(Item.fuelProc.n, Item.ironPlate.n, Item.chest:I(2))
MomoLib.recipe.SetIngredients(Item.steamEngine.n, {Item.fuelProc:I(), Item.burnerTurbine:I(), Item.inserter:I(3)})

MomoLib.recipe.ReplaceIngredient(Item.burnerAssembly.n, Item.ironPlate, Item.chest:I(2))
MomoLib.recipe.ReplaceIngredient(Item.assembly.n, Item.ironGear.n, Item.inserter:I(6))
MomoLib.recipe.ReplaceIngredient(Item.assembly.n, Item.electricMotor, Item.steamEngine:I()):AMOUNT(2)
MomoLib.technology.SetRequired("automation", {"steam-power"})


MomoLib.recipe.ReplaceIngredient(Item.crusher, Item.cable, Item.belt:I(6))
MomoLib.recipe.ReplaceIngredient(Item.crusher, Item.core, Item.burnerAssembly:I())

-- Miner
MomoLib.recipe.ReplaceIngredient(Item.miningDrill, Item.electricMotor, Item.inserter:I(2))

MomoLib.recipe.ReplaceIngredient(Item.lamp, Item.ironPlate, Item.ironStick:I(2))
MomoLib.recipe.ReplaceIngredient(Item.greenHouse, Item.glass, Item.lamp:I(10))
MomoLib.recipe.ReplaceIngredient(Item.greenHouse, Item.core, Item.assembly:I(2))

MomoLib.technology.SetRequired("electric-lab", Item.lamp.n)
MomoLib.recipe.SetIngredients(Item.lab, {
    Item.lamp:I(2),
    Item.belt:I(10),
    Item.electricMotor:I(8),
    Item.greenChip:I(20),
    MomoLib.MakeIngredient("burner-lab", 1)
})

MomoLib.technology.SetRequired("kr-greenhouse", {"automation", "lamp"})

MomoLib.recipe.SetIngredients(Item.chemicalPlant, {
    Item.lamp:I(3),
    Item.boiler:I(2),
    Item.steelBeam:I(4),
    Item.assembly:I(1)
})
MomoLib.recipe.SetIngredients(Item.refinery, {
    Item.chemicalPlant:I(),
    Item.engine:I(6),
    Item.boiler:I(6),
    Item.steelBeam:I(10),
    Item.storageTank:I(2),
})

MomoLib.recipe.SetIngredients(Item.assembly2, {
    Item.greenChip:I(15),
    Item.fastInserter:I(6),
    Item.steamEngine:I(),
    Item.assembly:I(2)
}):AMOUNT(2)
MomoLib.technology.SetRequired("automation-2", {"fast-inserter", Item.greenSci.n})

MomoLib.recipe.SetIngredients(Item.flareStack, {
    Item.boiler:I(2),
    Item.engine:I(4),
    Item.steelBeam:I(6),
    Item.greenChip:I(5)
})
MomoLib.technology.SetRequired("kr-silicon-processing", "kr-fluid-excess-handling")
MomoLib.recipe.SetIngredients(Item.filtration, {
    Item.flareStack:I(2),
    Item.steamEngine:I(2),
    Item.storageTank:I(2),
    Item.lamp:I(8),
})

MomoLib.technology.SetRequired(Item.atmospheric.tech, {"kr-mineral-water-gathering", "kr-fluid-excess-handling", Item.blueSci.n})
MomoLib.recipe.SetIngredients(Item.atmospheric, {
    Item.filtration:I(1),
    Item.redChip:I(20),
    Item.mineralWaterPump:I(4),
    Item.steelChest:I(2)
})
MomoLib.technology.SetRequired("kr-mineral-water-gathering", "plastics")
MomoLib.recipe.SetIngredients(Item.mineralWaterPump, {
    Item.steelPipe:I(8),
    Item.pump:I(),
    Item.plastic:I(12),
    Item.steelGear:I(6),
})
MomoLib.recipe.SetIngredients(Item.oilPump, {
    Item.pipe:I(8),
    Item.pump:I(2),
    Item.boiler:I(),
    Item.steelBeam:I(4)
})
MomoLib.recipe.SetIngredients(Item.electrolyser, {
    Item.redChip:I(10),
    Item.chemicalPlant:I(4),
    Item.atmospheric:I(),
    Item.electricMotor:I(16),
    Item.plastic:I(25),
})

MomoLib.recipe.SetIngredients(Item.biolab, {
    Item.greenHouse:I(),
    Item.lab:I(4),
    Item.lamp:I(8),
    Item.refinery:I(2),
    Item.concrete:I(100)
})
MomoLib.recipe.SetIngredients(Item.fuelRef, {
    Item.refinery:I(),
    Item.chemicalPlant:I(),
    Item.pump:I(2),
    Item.pipe:I(10)
})
MomoLib.recipe.SafeAddIngredients(Item.accumulator, {Item.bigPole:I()})
MomoLib.technology.AddRequired(Item.blueChip.n, Item.electrolyser.tech)
MomoLib.technology.SetRequired(Item.researchServer.n, {Item.substation.tech, Item.radar.n, Item.lab2.n})
MomoLib.recipe.SetIngredients(Item.researchServer, {
    Item.resCenter:I(),
    Item.substation:I(2),
    Item.radar:I(2),
    Item.atmospheric:I(4),
    Item.lab2:I(10),
}):AMOUNT(2)
MomoLib.technology.SetRequired(Item.radar.n, {Item.electrolyser.tech, "electric-energy-accumulators"})
MomoLib.recipe.SetIngredients(Item.radar, {
    Item.redChip:I(10),
    Item.steelChest:I(),
    Item.accumulator:I(3),
    Item.ammonia:I(300),
    MomoLib.MakeIngredient("kr-sentinel", 2),
}):CATEGORY("crafting-with-fluid")
MomoLib.technology.SetRequired(Item.lab2.n, {Item.blueChip.n})
MomoLib.recipe.SetIngredients(Item.lab2, {
    Item.blueChip:I(14),
    Item.fastSplitter:I(6),
    Item.lab:I(2),
    Item.biolab:I(),
    Item.atmospheric:I()
}):AMOUNT(3)

-- TODO: assembly3
-- TODO: bulk inserter

-- TODO: nuclear and heat

-- TODO: gas power -> ind furnace
-- TODO: advanced furnace

-- TODO: electromagnetic need researchServer