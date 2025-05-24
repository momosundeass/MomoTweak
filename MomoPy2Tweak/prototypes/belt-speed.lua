
local function UpdateBeltSpeed(belt, speed, distanceFactor) 
	data.raw["splitter"][belt .. "-splitter"].speed = speed
	data.raw["transport-belt"][belt .. "-transport-belt"].speed = speed
	data.raw["underground-belt"][belt .. "-underground-belt"].speed = speed
	-- data.raw["underground-belt"][belt .. "-underground-belt"].max_distance = data.raw["underground-belt"][belt .. "-underground-belt"].max_distance * distanceFactor
end

local speedBased = 0.0625

data.raw["splitter"]["splitter"].speed = speedBased
data.raw["transport-belt"]["transport-belt"].speed = speedBased
data.raw["underground-belt"]["underground-belt"].speed = speedBased
-- data.raw["underground-belt"]["underground-belt"].max_distance = data.raw["underground-belt"]["underground-belt"].max_distance * 2
UpdateBeltSpeed("fast", speedBased * 2, 2)
UpdateBeltSpeed("express", speedBased * 4, 2)

if mods["aai-loaders"] then
	data.raw["loader-1x1"]["aai-loader"].speed = speedBased
	data.raw["loader-1x1"]["aai-fast-loader"].speed = speedBased * 2
	data.raw["loader-1x1"]["aai-express-loader"].speed = speedBased * 4
	
	MomoLib.subgroup.ChangeRecipe("aai-loader", "belt", "l[1]", true)
	MomoLib.subgroup.ChangeRecipe("aai-fast-loader", "belt", "l[2]", true)
	MomoLib.subgroup.ChangeRecipe("aai-express-loader", "belt", "l[3]", true)
end