---@class ItemNames
local item = {}
---@class ItemName
---@field tech string
---@field n string name in short
local itemName = {
    name = "invalid"
}

---@return ItemName 
function itemName:New(nameOrTbl, tech)
    local obj = {}
    obj.name = nameOrTbl.name or nameOrTbl
    setmetatable(obj, self)
    self.__index = self
    obj.n = obj.name
    if tech == nil then
        local result = MomoLib.technology.FindUnlock(obj.name)
        if result then obj.tech = result.name end
    else
        obj.tech = tech
    end
    return obj
end
item.ItemType = {}
item.Prototypes = {}

---@return Prototype
function itemName:Prototype()
    if item.Prototypes[self] ~= nil then
        return item.Prototypes[self]
    end
    if not MomoLib.GetIngredient(self.name, function(p) item.Prototypes[self] = p end) then
        error(self.name .. " have no Prototype")
    end
    return item.Prototypes[self]
end

function itemName:I(amount, prob)
    if item.ItemType[self] == nil then
        item.ItemType[self] = self:Prototype().type
    end
    if item.ItemType[self] == "fluid" then
        return self:F(amount)
    end
    return MomoLib.MakeIngredient(self.name, amount, prob)
end
function itemName:F(amount) return MomoLib.MakeFluidIngredient(self.name, amount) end



item.techCard       = itemName:New("kr-blank-tech-card")
item.basicSci       = itemName:New("kr-basic-tech-card")
item.redSci         = itemName:New("automation-science-pack")
item.greenSci       = itemName:New("logistic-science-pack")
item.blackSci       = itemName:New("military-science-pack")
item.blueSci        = itemName:New("chemical-science-pack")
item.purpleSci      = itemName:New("production-science-pack")
item.yellowSci      = itemName:New("utility-science-pack")
item.whiteSci       = itemName:New("space-science-pack")
item.matterSci      = itemName:New("kr-matter-tech-card")
item.advSci         = itemName:New("kr-advanced-tech-card")
item.singularitySci = itemName:New("kr-singularity-tech-card")
item.biterResearch  = itemName:New("kr-biter-research-data")
item.spaceResearch  = itemName:New("kr-space-research-data")
item.matterResearch  = itemName:New("kr-matter-research-data")


item.ironPlate      = itemName:New("iron-plate")
item.ironGear       = itemName:New("iron-gear-wheel")
item.ironBeam       = itemName:New("kr-iron-beam")
item.ironStick      = itemName:New("iron-stick")
item.ironMolten     = itemName:New("molten-iron")
item.ironDust       = itemName:New("iron-dust")
item.copperPlate    = itemName:New("copper-plate")
item.copperMolten   = itemName:New("molten-copper")
item.cable          = itemName:New("copper-cable")
item.steelPlate     = itemName:New("steel-plate", "steel-processing")
item.steelGear      = itemName:New("kr-steel-gear-wheel", "steel-processing")
item.steelBeam      = itemName:New("kr-steel-beam", "steel-processing")
item.steelPipe      = itemName:New("kr-steel-pipe")
item.steelPipeGround= itemName:New("kr-steel-pipe-to-ground")
item.brick          = itemName:New("stone-brick")
item.concrete       = itemName:New("concrete")
item.refConcrete    = itemName:New("refined-concrete")
item.stoneTablet    = itemName:New("stone-tablet")
item.glass          = itemName:New("kr-glass")
item.stone          = itemName:New("stone")
item.sand           = itemName:New("kr-sand")
item.wood           = itemName:New("wood")
item.coal           = itemName:New("coal")
item.enrichedCoal   = itemName:New("enriched-coal")
item.solidFuel      = itemName:New("solid-fuel")
item.coke           = itemName:New("kr-coke", "steel-processing")
item.tritium        = itemName:New("kr-tritium")
item.lithium        = itemName:New("kr-lithium", "kr-lithium-processing")
item.rareMetal      = itemName:New("kr-rare-metals")
item.rareMetalClump = itemName:New("rare-metals-clump", "advanced-ore-processing")
item.rareMetalChunk = itemName:New("rare-metals-chunk", "elite-ore-processing")
item.u235           = itemName:New("uranium-235")
item.u238           = itemName:New("uranium-238")
item.uraniumOre     = itemName:New("uranium-ore")
item.plastic        = itemName:New("plastic-bar")
item.sulfur         = itemName:New("sulfur")
item.titaniumPlate  = itemName:New("titanium-plate", "titanium-processing")
item.lds            = itemName:New("low-density-structure", "low-density-structure")
item.hdpeAlloy      = itemName:New("HDPE-alloy")
item.imersite       = itemName:New("kr-imersite-powder")
item.imersiteCrystal= itemName:New("kr-imersite-crystal")
item.imersitePlate  = itemName:New("kr-imersium-plate", "kr-imersium-processing")
item.imersiteGear   = itemName:New("kr-imersium-gear-wheel", "kr-imersium-processing")
item.imersiteBeam   = itemName:New("kr-imersium-beam", "kr-imersium-processing")
item.battery        = itemName:New("battery", "battery")
item.batteryLithium = itemName:New("kr-lithium-sulfur-battery", "kr-lithium-sulfur-battery")
item.rocketFuel     = itemName:New("rocket-fuel")
item.uraniumFuel    = itemName:New("uranium-fuel-cell")

item.repair = itemName:New("repair-pack")

-- logistic
item.pipe            = itemName:New("pipe")
item.undergroundPipe = itemName:New("pipe-to-ground")
item.barrel          = itemName:New("barrel")

item.inserterPart   = itemName:New("kr-inserter-parts")
item.inserter       = itemName:New("inserter")
item.fastInserter   = itemName:New("fast-inserter")
item.burnerInserter = itemName:New("burner-inserter")
item.bulkInserter   = itemName:New("bulk-inserter", "bulk-inserter")
item.stackInserter  = itemName:New("stack-inserter", "stack-inserter")

item.belt                    = itemName:New("transport-belt")
item.undergroundBelt         = itemName:New("underground-belt")
item.splitter                = itemName:New("splitter")
item.fastBelt                = itemName:New("fast-transport-belt")
item.fastUndergroundBelt     = itemName:New("fast-underground-belt")
item.fastSplitter            = itemName:New("fast-splitter")
item.expressBelt             = itemName:New("express-transport-belt")
item.expressUndergroundBelt  = itemName:New("express-underground-belt")
item.expressSplitter         = itemName:New("express-splitter")
item.advancedBelt            = itemName:New("kr-advanced-transport-belt")
item.advancedUndergroundBelt = itemName:New("kr-advanced-underground-belt")
item.advancedSplitter        = itemName:New("kr-advanced-splitter")
item.superiorBelt            = itemName:New("kr-superior-transport-belt")
item.superiorUndergroundBelt = itemName:New("kr-superior-underground-belt")
item.superiorSplitter        = itemName:New("kr-superior-splitter")
item.loader                  = itemName:New("kr-loader")
item.fastLoader              = itemName:New("kr-fast-loader")
item.expressLoader           = itemName:New("kr-express-loader")
item.advancedLoader          = itemName:New("kr-advanced-loader")
item.superiorLoader          = itemName:New("kr-superior-loader")
item.heatPipe                = itemName:New("heat-pipe", "nuclear-power")

item.rail        = itemName:New("rail")
item.signal      = itemName:New("rail-signal")
item.chainSignal = itemName:New("rail-chain-signal")
item.station     = itemName:New("train-stop")

item.beltIm        = itemName:New("belt-immunity-equipment", "belt-immunity-equipment")
item.robotFrame    = itemName:New("flying-robot-frame", "robotics")
item.consBot       = itemName:New("construction-robot", "construction-robotics")
item.logisticBot   = itemName:New("logistic-robot", "logistic-robotics")
item.roboport      = itemName:New("roboport", "logistic-robotics")
item.roboportSmall = itemName:New("kr-small-roboport", "kr-advanced-roboports")
item.roboportBig   = itemName:New("kr-big-roboport", "kr-advanced-roboports")

-- chest 
item.chest           = itemName:New("iron-chest")
item.steelChest      = itemName:New("steel-chest", "steel-processing")
item.woodenChest     = itemName:New("wooden-chest")
item.storageTank     = itemName:New("storage-tank")
local isAAIContainer = mods["aai-containers"] ~= nil
item.strongBox       = isAAIContainer and itemName:New("aai-storehouse", "aai-storehouse-base") or itemName:New("kr-strongbox", "kr-containers")
item.warehouse       = isAAIContainer and itemName:New("aai-warehouse" , "aai-warehouse-base")  or itemName:New("kr-warehouse", "kr-containers")
item.hugeStorageTank = itemName:New("kr-huge-storage-tank", "kr-steel-fluid-tanks")
item.bigStorageTank  = itemName:New("kr-big-storage-tank", "kr-steel-fluid-tanks")

-- electronics
item.greenChip    = itemName:New("electronic-circuit", "electronics")
item.redChip      = itemName:New("advanced-circuit", "advanced-circuit")
item.blueChip     = itemName:New("processing-unit", "processing-unit")
item.decider      = itemName:New("decider-combinator", "electronics")
item.constant     = itemName:New("constant-combinator", "circuit-network")
item.arithmetic   = itemName:New("arithmetic-combinator", "circuit-network")
item.selector     = itemName:New("selector-combinator", "advanced-combinators")
item.lamp         = itemName:New("small-lamp", "lamp")
item.eComponent   = itemName:New("kr-electronic-components", "advanced-circuit")
item.electrolytic = itemName:New("electrolytic-unit", "advanced-ore-processing")
item.powerSwitch  = itemName:New("power-switch", "circuit-network")
item.speaker      = itemName:New("programmable-speaker", "circuit-network")
item.aiCore       = itemName:New("kr-ai-core")


-- engine
item.core           = itemName:New("kr-automation-core")
item.motor          = itemName:New("motor")
item.engine         = itemName:New("engine-unit")
item.electricMotor  = itemName:New("electric-motor")
item.electricEngine = itemName:New("electric-engine-unit", "electric-engine")
item.ecu            = itemName:New("kr-energy-control-unit", "kr-energy-control-unit")

-- machine
item.burnerAssembly   = itemName:New("burner-assembling-machine")
item.assembly         = itemName:New("assembling-machine-1")
item.assembly2        = itemName:New("assembling-machine-2")
item.assembly3        = itemName:New("assembling-machine-3", "automation-3")
item.assembly4        = itemName:New("kr-advanced-assembling-machine")
item.chemicalPlant    = itemName:New("chemical-plant", "kr-fluids-chemistry")
item.cryogenic        = itemName:New("cryogenic-plant", "cryogenic-plant")
item.advChemicalPlant = itemName:New("kr-advanced-chemical-plant")
item.refinery         = itemName:New("oil-refinery")
item.fuelRef          = itemName:New("kr-fuel-refinery")
item.crusher          = itemName:New("kr-crusher")
item.jawCrusher       = itemName:New("jaw-crusher")
item.oreCrusher       = itemName:New("crusher1")
item.oreCrusher2      = itemName:New("crusher2")
item.oreCrusher3      = itemName:New("crusher3")
item.fuelProc         = itemName:New("fuel-processor")
item.greenHouse       = itemName:New("kr-greenhouse")
item.biolab           = itemName:New("kr-bio-lab", "kr-bio-processing")
item.burnerLab        = itemName:New("burner-lab")
item.lab              = itemName:New("lab")
item.lab2             = itemName:New("kr-advanced-lab")
item.lab3             = itemName:New("kr-singularity-lab")
item.foundry          = itemName:New("foundry")
item.emPlant          = itemName:New("electromagnetic-plant", "electromagnetic-plant")
item.furnace          = itemName:New("stone-furnace")
item.steelFurnace     = itemName:New("steel-furnace")
item.elecFurnace      = itemName:New("electric-furnace", "advanced-material-processing-2")
item.indFurnace       = itemName:New("industrial-furnace", "industrial-furnace")
item.advancedFurnace  = itemName:New("kr-advanced-furnace")
item.flareStack       = itemName:New("kr-flare-stack", "kr-fluid-excess-handling")
item.electrolyser     = itemName:New("kr-electrolysis-plant", "kr-advanced-chemistry")
item.atmospheric      = itemName:New("kr-atmospheric-condenser", "kr-atmosphere-condensation")
item.mineralWaterPump = itemName:New("kr-mineral-water-pumpjack", "kr-mineral-water-gathering")
item.oilPump          = itemName:New("pumpjack")
item.pump             = itemName:New("pump")
item.steelPump        = itemName:New("kr-steel-pump", "kr-steel-fluid-handling")
item.filtration       = itemName:New("kr-filtration-plant")
item.echamber1        = itemName:New("echamber1")
item.echamber2        = itemName:New("echamber2")
item.echamber3        = itemName:New("echamber3")
item.pchamber1        = itemName:New("pchamber1")
item.pchamber2        = itemName:New("pchamber2")
item.researchServer   = itemName:New("kr-research-server")
item.quantumComputer  = itemName:New("kr-quantum-computer", "kr-quantum-computer")
item.radar            = itemName:New("radar")
item.radar2           = itemName:New("kr-advanced-radar", "kr-advanced-radar")
item.recycler         = itemName:New("recycler", "recycling")
item.airPurifier      = itemName:New("kr-air-purifier", "kr-air-purification")
item.centrifuge       = itemName:New("centrifuge", "uranium-processing")
item.advCentrifuge    = itemName:New("k11-advanced-centrifuge", "k11-advanced-centrifuge")
item.rocketSilo       = itemName:New("rocket-silo")
item.satellite        = itemName:New("satellite")
item.matterPlant      = itemName:New("kr-matter-plant", "kr-matter-processing")
item.matterAssociator = itemName:New("kr-matter-associator", "kr-matter-processing")
item.matterStabilizer = itemName:New("kr-stabilizer-charging-station", "kr-matter-processing")

-- electric
item.boiler        = itemName:New("boiler")
item.windmill      = itemName:New("kr-wind-turbine")
item.heatExchange  = itemName:New("heat-exchanger", "nuclear-power")
item.burnerTurbine = itemName:New("burner-turbine")
item.steamEngine   = itemName:New("steam-engine")
item.steamTurbine  = itemName:New("steam-turbine", "nuclear-power")
item.steamTurbine2 = itemName:New("kr-advanced-steam-turbine", "kr-fusion-energy")
item.nuclearPlant  = itemName:New("nuclear-reactor", "nuclear-power")
item.fusionPlant   = itemName:New("kr-fusion-reactor", "kr-fusion-energy")
item.fusionCellEmpty = itemName:New("kr-empty-dt-fuel-cell", "kr-fusion-energy")
item.fusionCell    = itemName:New("kr-dt-fuel-cell", "kr-fusion-energy")
item.gasPower      = itemName:New("kr-gas-power-station", "kr-gas-power-station")
item.solar         = itemName:New("solar-panel", "solar-energy")
item.eqSolar       = itemName:New("solar-panel-equipment", "solar-panel-equipment")
item.eqBigSolar    = itemName:New("kr-big-solar-panel-equipment", "solar-panel-equipment")
item.eqSolar2      = itemName:New("kr-superior-solar-panel-equipment", "kr-superior-solar-panel-equipment")
item.eqBigSolar    = itemName:New("kr-big-superior-solar-panel-equipment", "kr-superior-solar-panel-equipment")
item.solar2        = itemName:New("kr-advanced-solar-panel", "kr-advanced-solar-panel")
item.bigPole       = itemName:New("big-electric-pole")
item.accumulator   = itemName:New("accumulator")
item.accumulator2  = itemName:New("kr-energy-storage", "kr-energy-storage")
item.substation    = itemName:New("substation", "electric-energy-distribution-2")
item.substation2   = itemName:New("kr-superior-substation")
item.eqBattery     = itemName:New("battery-equipment", "battery-equipment")
item.eqBigBattery  = itemName:New("kr-big-battery-equipment", "battery-equipment")
item.eqBattery2    = itemName:New("battery-mk2-equipment", "battery-mk2-equipment")
item.eqBigBattery2 = itemName:New("kr-big-battery-mk2-equipment", "battery-mk2-equipment")
item.eqBattery3    = itemName:New("kr-battery-mk3-equipment", "kr-battery-mk3-equipment")
item.eqBigBattery3 = itemName:New("kr-big-battery-mk3-equipment", "kr-battery-mk3-equipment")

-- miner
item.burnerMiner  = itemName:New("burner-mining-drill")
item.miningDrill  = itemName:New("electric-mining-drill")
item.miningDrill2 = itemName:New("kr-electric-mining-drill-mk2", "kr-electric-mining-drill-mk2")
item.miningDrill3 = itemName:New("kr-electric-mining-drill-mk3", "kr-electric-mining-drill-mk3")
item.quarry       = itemName:New("kr-quarry-drill")

-- military
item.ammo          = itemName:New("firearm-magazine")
item.submachineGun = itemName:New("submachine-gun")
item.rocket        = itemName:New("rocket")
item.turret        = itemName:New("gun-turret")
item.laserTurret   = itemName:New("laser-turret")
item.grenade       = itemName:New("grenade")
item.explosive     = itemName:New("explosives")
item.destroyer     = itemName:New("destroyer-capsule", "destroyer")

-- module
item.speedModule         = itemName:New("speed-module", "speed-module")
item.speedModule2        = itemName:New("speed-module-2", "speed-module-2")
item.speedModule3        = itemName:New("speed-module-3", "speed-module-3")
item.efficiencyModule    = itemName:New("efficiency-module", "efficiency-module")
item.efficiencyModule2   = itemName:New("efficiency-module-2", "efficiency-module-2")
item.efficiencyModule3   = itemName:New("efficiency-module-3", "efficiency-module-3")
item.productivityModule  = itemName:New("productivity-module", "productivity-module")
item.productivityModule2 = itemName:New("productivity-module-2", "productivity-module-2")
item.productivityModule3 = itemName:New("productivity-module-3", "productivity-module-3")
item.qualityModule       = itemName:New("quality-module", "quality-module")
item.qualityModule2      = itemName:New("quality-module-2", "quality-module-2")
item.qualityModule3      = itemName:New("quality-module-3", "quality-module-3")
item.beacon              = itemName:New("beacon", "effect-transmission")
item.beacon2             = itemName:New("kr-singularity-beacon", "kr-singularity-beacon")

-- fluid
item.sulfuricAcid  = itemName:New("sulfuric-acid")
item.water         = itemName:New("water") 
item.dirtyWater    = itemName:New("kr-dirty-water") 
item.heavyWater    = itemName:New("kr-heavy-water")
item.mineralWater  = itemName:New("kr-mineral-water")
item.oil           = itemName:New("crude-oil")
item.oxygen        = itemName:New("kr-oxygen")
item.hydrogen      = itemName:New("kr-hydrogen")
item.nitrogen      = itemName:New("kr-nitrogen")
item.chlorine      = itemName:New("kr-chlorine")
item.nitricAcid    = itemName:New("kr-nitric-acid")
item.heavyOil      = itemName:New("heavy-oil")
item.lightOil      = itemName:New("light-oil")
item.lubricant     = itemName:New("lubricant")
item.petroGas      = itemName:New("petroleum-gas")
item.ammonia       = itemName:New("kr-ammonia")
item.methanol      = itemName:New("kr-biomethanol")
item.hChloride     = itemName:New("kr-hydrogen-chloride")

---@class ItemNames
MomoLib.itemNames = item    

---@class ItemName
MomoLib.itemName = itemName