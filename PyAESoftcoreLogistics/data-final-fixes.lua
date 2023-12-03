require("prototypes.armor")

data.raw.inserter["burner-inserter"].next_upgrade = "inserter"

local combatGroup = "combat"
local logisticsGroup = "logistics" 
momoIRTweak.ChangeGroup(combatGroup, logisticsGroup, "zzzz")

if (momoPyTweak.settings.undergroundBelt) then
	momoPyTweak.finalFixes.ExtraUndergroundBelt()
end

if (momoPyTweak.mods.miniloader and momoPyTweak.settings.miniloader) then
	momoPyTweak.finalFixes.MiniloaderTechnology()
end

if (momoPyTweak.mods.ultimateBelt and momoPyTweak.settings.ultimateBelt) then
	momoPyTweak.finalFixes.UltimateBeltAE()
	if (momoPyTweak.mods.miniloader and momoPyTweak.settings.miniloader) then
		momoPyTweak.finalFixes.UltimateBeltAEMiniloader()
	end
end

if (momoPyTweak.mods.smartInserter) then
	momoPyTweak.finalFixes.SmartInserter()
end

momoPyTweak.ArmorInventory()
