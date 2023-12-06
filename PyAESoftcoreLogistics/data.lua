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
momoIRTweak.InitItemsLib("__PyAESoftcoreLogistics__/graphics/icons/", true)
momoPyTweak.functions = momoIRTweak

require("naming")
momoPyTweak.mods.smartInserter = mods["Smart_Inserters"]
momoPyTweak.mods.bobInserter = mods["bobinserters"]
momoPyTweak.mods.undergroundPipePack = mods["underground-pipe-pack"]
momoPyTweak.mods.ultimateBelt = mods["UltimateBelts_Owoshima_And_Pankeko-Mod"] or mods["UltimateBelts"]
momoPyTweak.mods.miniloader = mods["miniloader"]
momoPyTweak.mods.transportDrones = mods["Transport_Drones"]

momoPyTweak.settings.undergroundBelt = settings.startup["momo-undergroundBelt"].value
momoPyTweak.settings.miniloader = settings.startup["momo-miniloader"].value
momoPyTweak.settings.ultimateBelt = settings.startup["momo-ultimateBelt"].value
momoPyTweak.settings.improveInserter = settings.startup["momo-improveInserter"].value

require("prototypes.underground-belt")

if (momoPyTweak.mods.ultimateBelt and momoPyTweak.settings.ultimateBelt) then
	require("compatibility.ultimate-belt-ae")
	momoPyTweak.UltimateBeltAE()
end

momoPyTweak.ExtraUndergroundBelt()