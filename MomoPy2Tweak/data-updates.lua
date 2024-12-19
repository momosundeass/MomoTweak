for _, proto in pairs(data.raw["inserter"]) do
	proto.extension_speed = proto.extension_speed * 2
	proto.rotation_speed = proto.rotation_speed * 2
end


function UpdateBeltSpeed(belt, speed, distanceFactor) 
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
end
if mods["underground-pipe-pack"] then
	require("compat/underground-pipe-pack-subgroup")
end