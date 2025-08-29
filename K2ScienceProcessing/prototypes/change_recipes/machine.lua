MomoLib.recipe.ReplaceIngredient(Item.fuelProc.n, Item.ironPlate.n, Item.chest:I(2))
MomoLib.recipe.ReplaceIngredient(Item.burnerAssembly.n, Item.ironPlate, Item.chest:I()):TIME(2)
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
}):AMOUNT(2):TIME(6)
MomoLib.technology.SetRequired("automation-2", {"fast-inserter", Item.greenSci.n})

MomoLib.recipe.SetIngredients(Item.flareStack, {
    Item.boiler:I(2),
    Item.engine:I(2),
    Item.steelBeam:I(2),
    Item.greenChip:I(5)
}):TIME(10)
MomoLib.technology.SetRequired("kr-silicon-processing", "kr-fluid-excess-handling")
MomoLib.recipe.SetIngredients(Item.filtration, {
    Item.flareStack:I(2),
    Item.steamEngine:I(2),
    Item.storageTank:I(2),
    Item.lamp:I(8),
})
MomoLib.technology.SetRequired(Item.atmospheric.tech, {"kr-mineral-water-gathering", Item.flareStack.tech, Item.blueSci.n})
MomoLib.recipe.SetIngredients(Item.atmospheric, {
    Item.filtration:I(1),
    Item.redChip:I(20),
    Item.mineralWaterPump:I(4),
    Item.steelChest:I(2)
}):TIME(10)
MomoLib.technology.SetRequired("kr-mineral-water-gathering", {"plastics", Item.flareStack.tech})
MomoLib.recipe.SetIngredients(Item.mineralWaterPump, {
    Item.steelPipe:I(8),
    Item.burnerMiner:I(2),
    Item.plastic:I(12),
    Item.flareStack:I(),
}):TIME(10)
MomoLib.recipe.SetIngredients(Item.oilPump, {
    Item.pipe:I(8),
    Item.pump:I(2),
    Item.burnerMiner:I(2),
    Item.steelBeam:I(4)
}):TIME(10)
MomoLib.recipe.SetIngredients(Item.electrolyser, {
    Item.redChip:I(10),
    Item.chemicalPlant:I(4),
    Item.atmospheric:I(),
    Item.electricMotor:I(16),
    Item.plastic:I(25),
}):TIME(20)

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
}):TIME(10):AMOUNT(2)

MomoLib.technology.AddRequired(Item.blueChip.n, Item.electrolyser.tech)
MomoLib.technology.SetRequired(Item.researchServer.n, {Item.substation.tech, Item.radar.n, Item.lab2.n})
MomoLib.recipe.SetIngredients(Item.researchServer, {
    Item.researchCenter:I(),
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
    Item.lab:I(3),
    Item.biolab:I(),
    Item.assembly2:I(3)
}):AMOUNT(3)

MomoLib.recipe.SetIngredients(Item.gasPower, {
    Item.steamEngine:I(2),
    Item.refinery:I(1),
    Item.storageTank:I(2),
    Item.steelPump:I(2),
})
MomoLib.technology.SetRequired(Item.indFurnace.tech, {Item.gasPower.tech, Item.recycler.tech, Item.heatPipe.tech, Item.electrolytic.tech})
MomoLib.recipe.SetIngredients(Item.indFurnace, {
    Item.gasPower:I(),
    Item.recycler:I(),
    Item.atmospheric:I(2),
    Item.heatPipe:I(20),
    Item.electrolytic:I(45),
    Item.refConcrete:I(100),
})
MomoLib.technology.SetRequired(Item.recycler.tech, {"logistics-3", Item.elecFurnace.tech})
MomoLib.recipe.SetIngredients(Item.recycler, {  
    Item.elecFurnace:I(),
    Item.crusher:I(2),
    Item.airPurifier:I(2), 
    Item.expressBelt:I(20),
    Item.blueChip:I(6),
    Item.concrete:I(50),
})
MomoLib.technology.AddRequired(Item.assembly3.tech, {"logistics-3", Item.airPurifier.tech})
MomoLib.recipe.SetIngredients(Item.assembly3, {
    Item.assembly2:I(),
    Item.airPurifier:I(2),
    Item.bulkInserter:I(3),
    Item.expressSplitter:I(2),
    Item.electricEngine:I(3),
    Item.speedModule:I()
})

MomoLib.recipe.SafeAddIngredients(Item.heatPipe, Item.steelPipe:I(4))
MomoLib.recipe.SetIngredients(Item.heatExchange, {
    Item.boiler:I(),
    Item.copperPlate:I(100),
    Item.titaniumPlate:I(20),
    Item.heatPipe:I(20),
    Item.bigStorageTank:I(),
})

MomoLib.recipe.SetIngredients(Item.centrifuge, {
    Item.fastInserter:I(24),
    Item.fastBelt:I(40),
    Item.electricMotor:I(16),
    Item.oreCrusher:I(),
    Item.strongBox:I(2),
})

MomoLib.recipe.ReplaceIngredient(Item.oreCrusher2, {
    Item.redChip.n,
    Item.brick.n,
},{
    Item.mineralWaterPump:I(2),
    Item.bulkInserter:I(6)
})
MomoLib.recipe.ReplaceIngredient(Item.echamber1, {
    Item.redChip.n,
    Item.brick.n,
},{
    Item.mineralWaterPump:I(2),
    Item.strongBox:I(),
})

MomoLib.recipe.SetIngredients(Item.echamber2, {
    Item.productivityModule2:I(2),
    Item.hdpeAlloy:I(12),
    Item.blueChip:I(7),
    Item.accumulator:I(4),
    Item.echamber1:I(),
})

MomoLib.recipe.SetIngredients(Item.pchamber1, {
    Item.assembly3:I(),
    Item.strongBox:I(),
    Item.blueChip:I(12),
    Item.electrolytic:I(16),
    Item.electricEngine:I(8)
})

MomoLib.recipe.SetIngredients(Item.rocketSilo, {
    Item.mineralWaterPump:I(25),
    Item.electricEngine:I(200),
    Item.bigStorageTank:I(4),
    Item.blueChip:I(200),
    Item.logisticBot:I(120),
    Item.refConcrete:I(1000)
})