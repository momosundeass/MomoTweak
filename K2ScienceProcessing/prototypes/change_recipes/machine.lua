MomoLib.recipe.ReplaceIngredient(Item.fuelProc.n, Item.ironPlate.n, Item.chest:I(2))
MomoLib.recipe.ReplaceIngredient(Item.burnerAssembly.n, {Item.ironPlate, Item.core:I()}, {Item.chest:I(), Item.core:I(1)}):TIME(2)
MomoLib.recipe.ReplaceIngredient(Item.assembly.n, Item.ironGear.n, Item.inserter:I(6))
MomoLib.recipe.ReplaceIngredient(Item.assembly.n, Item.electricMotor, Item.steamEngine:I()):AMOUNT(2):INTERMEDIATE()

MomoLib.technology.SetRequired("automation", {"steam-power"})


MomoLib.recipe.ReplaceIngredient(Item.crusher, {Item.cable, Item.core}, {Item.belt:I(20), Item.burnerMiner:I()})

-- Miner
MomoLib.recipe.ReplaceIngredient(Item.miningDrill, Item.electricMotor, Item.inserter:I(2))
MomoLib.machine.ModuleSlot(Item.miningDrill.n, 3)

MomoLib.technology.SetRequired(Item.miningDrill2.tech, {Item.atmospheric.tech})
MomoLib.recipe.SetIngredients(Item.miningDrill2, {
    Item.miningDrill:I(2),
    Item.fastInserter:I(16), 
    Item.engine:I(12),
    Item.jawCrusher:I(10), 
    Item.atmospheric:I()
}):AMOUNT(2)
MomoLib.machine.ModuleSlot(Item.miningDrill2.n, 4)

MomoLib.machine.ModuleSlot(Item.miningDrill3.n, 6, MomoLib.entity.IconPositioning(defines.inventory.mining_drill_modules, 3))


MomoLib.recipe.ReplaceIngredient(Item.lamp, Item.ironPlate, Item.ironStick:I(2)):INTERMEDIATE()

MomoLib.technology.SetRequired("kr-greenhouse", {"automation", "lamp"})
MomoLib.recipe.ReplaceIngredient(Item.greenHouse, Item.glass, Item.lamp:I(10))
MomoLib.recipe.ReplaceIngredient(Item.greenHouse, Item.core, Item.assembly:I(2)):ADDPRODUCT(Item.windmill:I())

MomoLib.technology.SetRequired("electric-lab", Item.lamp.n)
MomoLib.recipe.SetIngredients(Item.lab, {
    Item.glass:I(20),
    Item.lamp:I(4),
    Item.core:I(10),
    Item.greenChip:I(20),
    Item.burnerLab:I()
}):INTERMEDIATE()

MomoLib.technology.SetRequired(Item.chemicalPlant.tech, {Item.steelBeam.tech, Item.greenChip.tech, Item.lamp.tech})
MomoLib.recipe.SetIngredients(Item.chemicalPlant, {
    Item.lamp:I(3),
    Item.greenChip:I(8),
    Item.steelBeam:I(4),
    Item.assembly:I(1)
}):INTERMEDIATE()

MomoLib.recipe.SetIngredients(Item.refinery, {
    Item.chemicalPlant:I(),
    Item.engine:I(6),
    Item.boiler:I(6),
    Item.steelBeam:I(10),
    Item.storageTank:I(2),
}):ADDPRODUCT(Item.windmill:I(1))

MomoLib.recipe.SetIngredients(Item.assembly2, {
    Item.greenChip:I(15),
    Item.fastInserter:I(6),
    Item.steamEngine:I(),
    Item.assembly:I(2)
}):AMOUNT(2):TIME(6):INTERMEDIATE():ADDPRODUCT(Item.windmill:I())

MomoLib.technology.SetRequired("automation-2", {"fast-inserter", Item.greenSci.n})
MomoLib.recipe.SetIngredients(Item.flareStack, {
    Item.boiler:I(2),
    Item.engine:I(1),
    Item.steelBeam:I(2),
    Item.greenChip:I(5)
}):TIME(10):INTERMEDIATE()
MomoLib.machine.Speed(Item.flareStack.n, 0.2)

MomoLib.technology.SetRequired("kr-silicon-processing", "kr-fluid-excess-handling")
MomoLib.recipe.SetIngredients(Item.filtration, {
    Item.flareStack:I(2),
    Item.steamEngine:I(1),
    Item.storageTank:I(2),
    Item.lamp:I(8),
}):ADDPRODUCT(Item.windmill:I(2))
MomoLib.technology.SetRequired(Item.atmospheric.tech, {"kr-mineral-water-gathering", Item.flareStack.tech, Item.blueSci.n, Item.strongBox.tech})
MomoLib.recipe.SetIngredients(Item.atmospheric, {
    Item.filtration:I(1),
    Item.redChip:I(20),
    Item.mineralWaterPump:I(8),
    Item.strongBox:I(1)
}):TIME(20):AMOUNT(2):INTERMEDIATE():ADDPRODUCT(Item.windmill:I())

MomoLib.technology.SetRequired("kr-mineral-water-gathering", {"plastics", Item.flareStack.tech})
MomoLib.recipe.SetIngredients(Item.mineralWaterPump, {
    Item.steelPipe:I(8),
    Item.oilPump:I(),
    Item.flareStack:I(),
}):AMOUNT(2):TIME(10):INTERMEDIATE():ADDPRODUCT(Item.windmill:I())

MomoLib.recipe.SetIngredients(Item.oilPump, {
    Item.pipe:I(8),
    Item.pump:I(2),
    Item.burnerMiner:I(2),
    Item.steelBeam:I(4)
}):TIME(10)

MomoLib.recipe.SetIngredients(Item.electrolyser, {
    Item.redChip:I(10),
    Item.chemicalPlant:I(2),
    Item.atmospheric:I(),
    Item.electricMotor:I(16),
    Item.plastic:I(40),
}):TIME(20):ADDPRODUCT(Item.windmill:I(3))

MomoLib.technology.RemoveIngredient(Item.biolab.tech, Item.blackSci.n)
MomoLib.recipe.SetIngredients(Item.biolab, {
    Item.greenHouse:I(),
    Item.lab:I(4),
    Item.lamp:I(8),
    Item.refinery:I(),
    Item.concrete:I(100)
}):ADDPRODUCT(Item.windmill:I())
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
}):AMOUNT(2):INTERMEDIATE()

MomoLib.technology.SetRequired(Item.radar.n, {Item.electrolyser.tech, "electric-energy-accumulators"})
MomoLib.recipe.SetIngredients(Item.radar, {
    Item.redChip:I(10),
    Item.steelChest:I(),
    Item.accumulator:I(3),
    Item.ammonia:I(100),
    MomoLib.MakeIngredient("kr-sentinel", 2),
}):CATEGORY("crafting-with-fluid"):INTERMEDIATE()

MomoLib.technology.SetRequired(Item.lab2.n, {Item.blueChip.n, Item.biolab.tech})
MomoLib.recipe.SetIngredients(Item.lab2, {
    Item.blueChip:I(14),
    Item.fastSplitter:I(6),
    Item.eqSolar:I(20),
    Item.biolab:I(),
    Item.assembly2:I(3)
}):AMOUNT(2):ADDPRODUCT(Item.windmill:I(3)):INTERMEDIATE()

MomoLib.technology.AddRequired(Item.gasPower.tech, Item.steelPump.tech)
MomoLib.recipe.SetIngredients(Item.gasPower, {
    Item.steamEngine:I(2),
    Item.refinery:I(1),
    Item.storageTank:I(2),
    Item.steelPump:I(2),
})

MomoLib.technology.AddRequired(Item.elecFurnace.tech, Item.strongBox.tech)
MomoLib.recipe.SetIngredients(Item.elecFurnace, {
    Item.steelFurnace:I(2),
    Item.strongBox:I(1),
    Item.redChip:I(12),
    Item.flareStack:I(1)
})

MomoLib.technology.SetRequired(Item.indFurnace.tech, {Item.gasPower.tech, Item.recycler.tech, Item.heatPipe.tech, Item.electrolytic.tech})
MomoLib.recipe.SetIngredients(Item.indFurnace, {
    Item.gasPower:I(),
    Item.recycler:I(),
    Item.elecFurnace:I(1),
    Item.heatPipe:I(40),
    Item.electrolytic:I(45),
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
}):INTERMEDIATE()

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
    Item.mineralWaterPump:I(4),
    Item.bulkInserter:I(6)
})

MomoLib.technology.AddRequired(Item.echamber1.tech, {"enriched-titanium"})
MomoLib.recipe.ReplaceIngredient(Item.echamber1, {
    Item.redChip.n,
    Item.brick.n,
},{
    Item.mineralWaterPump:I(4),
    Item.strongBox:I(),
})

MomoLib.technology.AddRequired(Item.echamber2.tech, Item.hdpeAlloy.tech)
MomoLib.recipe.SetIngredients(Item.echamber2, {
    Item.productivityModule2:I(2),
    Item.hdpeAlloy:I(12),
    Item.blueChip:I(7),
    Item.accumulator:I(4),
    Item.echamber1:I(),
})

MomoLib.recipe.SetIngredients(Item.pchamber1, {
    Item.assembly3:I(),
    Item.filtration:I(1),
    Item.strongBox:I(),
    Item.blueChip:I(12),
    Item.electrolytic:I(16),
})

MomoLib.recipe.SetIngredients(Item.rocketSilo, {
    Item.mineralWaterPump:I(50),
    Item.electricEngine:I(200),
    Item.bigStorageTank:I(4),
    Item.blueChip:I(200),
    Item.logisticBot:I(120),
    Item.refConcrete:I(1000)
})