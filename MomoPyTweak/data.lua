if not momoPyTweak               then momoPyTweak = {} end
if not momoPyTweak.dir           then momoPyTweak.dir = {} end
if not momoPyTweak.item          then momoPyTweak.item = {} end
if not momoPyTweak.science       then momoPyTweak.science = {} end
if not momoPyTweak.electronics   then momoPyTweak.electronics = {} end
if not momoPyTweak.technology    then momoPyTweak.technology = {} end
if not momoPyTweak.machine       then momoPyTweak.machine = {} end
if not momoPyTweak.updates       then momoPyTweak.updates = {} end
if not momoPyTweak.finalFixes    then momoPyTweak.finalFixes = {} end
if not momoPyTweak.compatibility then momoPyTweak.compatibility = {} end
if not momoPyTweak.mods          then momoPyTweak.mods = {} end
if not momoPyTweak.settings      then momoPyTweak.settings = {} end

require("function.helper")
require("function.subgroup")
require("function.item")
require("function.recipe")
require("function.technology")
momoIRTweak.InitItemsLib("__MomoPyTweak__/graphics/icons/", true)

require("naming")
momoPyTweak.mods.pyAL = mods["pyalienlife"]
momoPyTweak.mods.pyAE = mods["pyalternativeenergy"]
momoPyTweak.mods.bobInserter = mods["bobinserters"]
momoPyTweak.mods.undergroundPipePack = mods["underground-pipe-pack"]
momoPyTweak.mods.alienTech = mods["SchallAlienTech"]
momoPyTweak.mods.spaceEx = mods["SpaceMod"]
momoPyTweak.mods.ultimateBelt = mods["UltimateBelts_Owoshima_And_Pankeko-Mod"] or mods["UltimateBelts"]
momoPyTweak.mods.miniloader = mods["miniloader"]
momoPyTweak.mods.transportDrones = mods["Transport_Drones"]
momoPyTweak.mods.advancedModules = mods["Advanced_Modules"]
momoPyTweak.mods.waterFill = mods["Waterfill_Fork"]

momoPyTweak.settings.undergroundPipeBeltStoneRecipes = settings.startup["momo-undergroundPipeBeltStoneRecipes"].value
momoPyTweak.settings.undergroundBelt = settings.startup["momo-undergroundBelt"].value
momoPyTweak.settings.miniloader = settings.startup["momo-miniloader"].value


momoPyTweak.settings.inserter = settings.startup["momo-inserter"].value and not momoPyTweak.mods.pyAE
momoPyTweak.settings.improveInserter = settings.startup["momo-improveInserter"].value
momoPyTweak.settings.miner = settings.startup["momo-miner"].value and not momoPyTweak.mods.pyAE
momoPyTweak.settings.solarPanel = settings.startup["momo-solarPanel"].value and not momoPyTweak.mods.pyAE

-- flag to make mod only dump data to log
momoPyTweak.DumpOnly = false

--- subgroup
momoPyTweak.science.materialSubgroup = "momo-science-materials"
local refSubgroup = momoIRTweak.subgroups["science-pack"]
data:extend({{
	type = "item-subgroup",
	name = momoPyTweak.science.materialSubgroup,
	group = refSubgroup.group,
	order = refSubgroup.order .. "zzzz"
}})

momoIRTweak.subgroups["science-pack"].order = "a1"
momoIRTweak.subgroups["intermediate-product"].order = "a2"

require("prototypes.electric-pole")
require("prototypes.underground-belt")
require("prototypes.inserter")
require("prototypes.mining-drill")
require("prototypes.solar-panel")
require("prototypes.item.science-materials")

if (momoPyTweak.mods.pyAE and momoPyTweak.mods.ultimateBelt) then
	require("compatibility.ultimate-belt-ae")
end

if not (momoPyTweak.DumpOnly) then
	if (not momoPyTweak.mods.pyAE) then
		momoPyTweak.CreateScienceMaterials()
		momoPyTweak.Inserter()
		momoPyTweak.MiningDrill()
		momoPyTweak.SolarPanel()
	end
	
	if (settings.startup["momo-electricPole"].value) then
		momoPyTweak.BuffElectricPole()
	end
	
	if (momoPyTweak.mods.pyAE and momoPyTweak.mods.ultimateBelt) then
		momoPyTweak.UltimateBeltAE()
	end
	
	momoPyTweak.ExtraUndergroundBelt()
end