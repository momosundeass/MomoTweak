local item = {}
local itemName = {
    name = "invalid"
}
function itemName:New(nameOrTbl)
    local tbl = {}
    if type(nameOrTbl) == "string" then
        tbl.name = nameOrTbl
    else
        tbl = nameOrTbl
    end
    setmetatable(tbl, self)
    self.__index = self
    tbl.n = tbl.name
    return tbl
end
function itemName:Prototype()
    local prototype 
    MomoLib.GetIngredient(self.name, function(p) prototype = p end)
    return prototype
end
function itemName:I(amount, prob) return MomoLib.MakeIngredient(self.name, amount, prob) end
function itemName:F(amount) return MomoLib.MakeFluidIngredient(self.name, amount) end

item.techCard       = itemName:New("kr-blank-tech-card")
item.basicSci       = itemName:New("kr-basic-tech-card")
item.redSci         = itemName:New("automation-science-pack")
item.greenSci       = itemName:New("logistic-science-pack")
item.blackSci       = itemName:New("military-science-pack")
item.blueSci        = itemName:New("chemical-science-pack")
item.yellowSci      = itemName:New("production-science-pack")
item.purpleSci      = itemName:New("utility-science-pack")
item.whiteSci       = itemName:New("space-science-pack")
item.matterSci      = itemName:New("kr-matter-tech-card")
item.advancedSci    = itemName:New("kr-advanced-tech-card")
item.singularitySci = itemName:New("kr-singularity-tech-card")
item.biterResearch  = itemName:New("kr-biter-research-data")

item.ironPlate   = itemName:New("iron-plate")
item.ironGear    = itemName:New("iron-gear-wheel")
item.ironBeam    = itemName:New("kr-iron-beam")
item.ironStick   = itemName:New("iron-stick")
item.copperPlate = itemName:New("copper-plate")
item.cable       = itemName:New("copper-cable")
item.steelPlate  = itemName:New("steel-plate")
item.steelGear   = itemName:New("kr-steel-gear-wheel")
item.steelBeam   = itemName:New("kr-steel-beam")
item.brick       = itemName:New("stone-brick")
item.stoneTablet = itemName:New("stone-tablet")
item.glass       = itemName:New("kr-glass")
item.stone       = itemName:New("stone")
item.sand        = itemName:New("kr-sand")
item.wood        = itemName:New("wood")
item.tritium     = itemName:New("kr-tritium")
item.lithium     = itemName:New("kr-lithium")
item.rareMetal   = itemName:New("kr-rare-metals")
item.u235        = itemName:New("uranium-235")
item.u238        = itemName:New("uranium-238")
item.plastic     = itemName:New("plastic-bar")

item.repair = itemName:New("repair-pack")

item.inserterPart = itemName:New("kr-inserter-parts")
item.inserter = itemName:New("inserter")
item.fastInserter = itemName:New("fast-inserter")
item.burnerInserter = itemName:New("burner-inserter")

item.belt = itemName:New("transport-belt")
item.undergroundBelt = itemName:New("underground-belt")
item.splitter = itemName:New("splitter")
item.fastBelt = itemName:New("fast-transport-belt")
item.fastUndergroundBelt = itemName:New("fast-underground-belt")
item.fastSplitter = itemName:New("fast-splitter")
item.expressBelt = itemName:New("express-transport-belt")
item.expressUndergroundBelt = itemName:New("express-underground-belt")
item.expressSplitter = itemName:New("express-splitter")
item.advancedBelt = itemName:New("kr-advanced-transport-belt")
item.advancedUndergroundBelt = itemName:New("kr-advanced-underground-belt")
item.advancedSplitter = itemName:New("kr-advanced-splitter")
item.superiorBelt = itemName:New("kr-superior-transport-belt")
item.superiorUndergroundBelt = itemName:New("kr-superior-underground-belt")
item.superiorSplitter = itemName:New("kr-superior-splitter")
item.loader = itemName:New("kr-loader")
item.fastLoader = itemName:New("kr-fast-loader")
item.expressLoader = itemName:New("kr-express-loader")
item.advancedBelt = itemName:New("kr-advanced-loader")
item.superiorLoader = itemName:New("kr-superior-loader")

-- chest 
item.chest = itemName:New("iron-chest")
item.steelChest = itemName:New("steel-chest")
item.woodenChest = itemName:New("wooden-chest")
item.storageTank = itemName:New("storage-tank")

-- electronics
item.greenChip = itemName:New("electronic-circuit")
item.redChip = itemName:New("advanced-circuit")
item.blueChip = itemName:New("processing-unit")
item.decider = itemName:New("decider-combinator")
item.constant = itemName:New("constant-combinator")
item.arithmetic = itemName:New("arithmetic-combinator")
item.lamp = itemName:New("small-lamp")
item.eComponent = itemName:New("kr-electronic-components")

-- engine
item.core = itemName:New("kr-automation-core")
item.motor = itemName:New("motor")
item.engine = itemName:New("engine-unit")
item.electricMotor = itemName:New("electric-motor")
item.electricEngine = itemName:New("electric-engine-unit")
item.aiCore = itemName:New("kr-ai-core")

-- machine
item.burnerAssembly = itemName:New("burner-assembling-machine")
item.assembly = itemName:New("assembling-machine-1")
item.assembly2 = itemName:New("assembling-machine-2")
item.assembly3 = itemName:New("assembling-machine-3")
item.assembly4 = itemName:New("kr-advanced-assembling-machine")
item.chemicalPlant = itemName:New("chemical-plant")
item.refinery = itemName:New("oil-refinery")
item.crusher = itemName:New("kr-crusher")
item.oreCrusher = itemName:New("crusher1")
item.oreCrusher2 = itemName:New("crusher2")
item.oreCrusher3 = itemName:New("crusher3")
item.fuelProc = itemName:New("fuel-processor")
item.greenHouse = itemName:New("kr-greenhouse")
item.greenHouse2 = itemName:New("kr-bio-lab")
item.lab = itemName:New("lab")


-- electric
item.boiler = itemName:New("boiler")
item.burnerTurbine = itemName:New("burner-turbine")
item.steamEngine = itemName:New("steam-engine")
item.steamTurbine = itemName:New("steam-turbine")

-- miner
item.burnerMiner = itemName:New("burner-mining-drill")
item.miningDrill = itemName:New("electric-mining-drill")
item.miningDrill2 = itemName:New("kr-electric-mining-drill-2")
item.miningDrill3 = itemName:New("kr-electric-mining-drill-3")
item.quarry = itemName:New("kr-quarry-drill")


-- military
item.ammo = itemName:New("firearm-magazine")
item.submachineGun = itemName:New("submachine-gun")
item.rocket = itemName:New("rocket")
item.turret = itemName:New("gun-turret")
item.laserTurret = itemName:New("laser-turret")
item.grenade = itemName:New("grenade")

MomoLib.itemNames = item    
MomoLib.itemName = itemName