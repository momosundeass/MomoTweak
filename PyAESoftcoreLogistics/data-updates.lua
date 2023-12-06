require("compatibility.underground-pipe-pack")
require("compatibility.transport-drones")
require("compatibility.miniloader")
require("compatibility.inserters")

require("prototypes.inserter")
require("prototypes.updates-module")
require("prototypes.updates-recipes")
require("prototypes.stacksize")
require("prototypes.pipe-to-ground")

-- inserters
if (momoPyTweak.settings.improveInserter) then
	momoPyTweak.updates.ImproveInserter()
end

if (momoPyTweak.mods.bobInserter) then
	momoPyTweak.compatibility.BobInserter()
end

if (settings.startup["momo-recipe"].value) then
	momoPyTweak.updates.UndergroundPipeBeltStone()
	momoPyTweak.updates.PowerPoleChain()
end

if (momoPyTweak.mods.undergroundPipePack and settings.startup["momo-undergroundPipePack"].value) then
	momoPyTweak.compatibility.PipePack()
end

if (momoPyTweak.mods.miniloader) then
	momoPyTweak.compatibility.MiniloaderRecipe()
end

if (momoPyTweak.mods.ultimateBelt and momoPyTweak.settings.ultimateBelt) then
	require("compatibility.ultimate-belt-color")
	momoPyTweak.compatibility.UltimateBeltColor()
	momoPyTweak.updates.UltimateBeltAE()
end

if (momoPyTweak.mods.transportDrones) then
	momoPyTweak.compatibility.TransportDrones()
end

if (settings.startup["momo-module"].value) then
	momoPyTweak.updates.Module()
end

if (settings.startup["momo-stacksize"].value) then
	momoPyTweak.updates.Stacksize()
end

if (settings.startup["momo-pipetoground"].value) then
	momoPyTweak.updates.PipeToGround()
end

if (momoPyTweak.settings.undergroundBelt) then
	momoPyTweak.updates.ExtraUndergroundBelt()
	momoPyTweak.updates.ExtraUndergroundBeltTech()
end
