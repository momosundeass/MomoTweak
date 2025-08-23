local function ResourcesDrain(miningDrill, drainPercent)
	local miner = data.raw["mining-drill"][miningDrill]
	miner.resource_drain_rate_percent = drainPercent
	miner.drops_full_belt_stacks = true
end

ResourcesDrain("bob-mining-drill-1", 90)
ResourcesDrain("bob-area-mining-drill-1", 90)
ResourcesDrain("bob-mining-drill-2", 80)
ResourcesDrain("bob-area-mining-drill-2", 80)
ResourcesDrain("bob-mining-drill-3", 70)
ResourcesDrain("bob-area-mining-drill-3", 70)
ResourcesDrain("bob-mining-drill-4", 60)
ResourcesDrain("bob-area-mining-drill-4", 60)