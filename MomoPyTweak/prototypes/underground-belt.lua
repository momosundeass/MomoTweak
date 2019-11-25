function momoPyTweak.BuffUndergroundBelt()
	local ref = data.raw["underground-belt"]["underground-belt"].max_distance
	local fast = data.raw["underground-belt"]["fast-underground-belt"] 
	fast.max_distance = (ref * 2) + 1
	local express = data.raw["underground-belt"]["express-underground-belt"]
	express.max_distance = (fast.max_distance * 2) + 1
end